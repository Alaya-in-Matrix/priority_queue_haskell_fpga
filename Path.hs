{-# LANGUAGE TypeSynonymInstances #-}
{-# LANGUAGE FlexibleInstances #-}
module Path where 
import qualified Queue as Q
import qualified Data.List as L
import CLaSH.Prelude
type Addr = Unsigned 16
type Size = Unsigned 16
type Dist = Unsigned 16
data PathState   = PS {
    memDelayCounter:: Unsigned 4,
    info :: Info, 
    innerState :: PathFinderState ,
    uNode :: Node,
    vNodes :: Vec 4 Node,
    upCounter :: Unsigned 2
} deriving(Show)
data Node = Node{ idx :: Addr, prev :: Addr, g :: Dist, h :: Dist, isObstacle :: Bool } deriving(Show)
data Info = In{ xMax  :: Size, yMax  :: Size, start :: Addr, end   :: Addr } deriving(Show)
data PathFinderState = PWaiting 
    | PInitMem               -- read start from memory
    | PInitQ                 -- push start to priority queue
    | PCheck
    | PProcessNeighbor
    | PPushNeighbor
    | PFinished
    | PError Error deriving(Show,Eq)
data Error     = QOverflow | NoPath | Unknown deriving(Show,Eq)
data PathOut   = POut {
    qIn :: (Q.Input Node), -- this output would be used as input of queue
    rAddr :: Addr,
    wAddr ::Addr,
    wEn ::Bool,
    wVal:: Node,
    pathNode :: Maybe Node
} deriving(Show)
type PathInput = (Q.Output Node, Maybe Info, Node)
instance Eq Node where 
    (Node _ _ g1 h1 _) == (Node _ _ g2 h2 _) = (g1 + h1) == (g2 + h2)
instance Ord Node where 
    n1 `compare` n2 = -- (g n1 + h n1) `compare` (g n2 + h n2)
        let compgh = (g n1 + h n1) `compare` (g n2 + h n2)
            compg  = g n1 `compare` g n2
         in case compgh of 
              EQ -> compg
              _  -> compgh
-- 由PFinished 转到 PWaiting 应该清空PQueue
-- 或者在init段清空Queue
-- 在check状态输出pop
-- 在check状态输出读neighbor
-- 各路需要设置mdc的情况需要注意

-- possible modification: use guard instead of pattern matching
-- defAddress = maxBound - 1 :: Addr
defAddress = 0 :: Addr
instance Default (Q.Input Node) where 
    def = Q.Nop
instance Default Bool where 
    def = True
instance Default Info where
    def = In 0 0 0 0
instance Default Node where 
    def = Node (maxBound-1) (maxBound-1) (shiftR maxBound 1) 0 False
instance Default PathState where
    def = PS def def def def def def
instance Default PathFinderState where 
    def = PWaiting
instance Default PathOut where 
    def = POut Q.Nop defAddress defAddress False def Nothing

errSt err = PS def def (PError err) def def def
getNeighbor :: Addr -> Size -> Size -> (Unsigned 4) -> Addr
getNeighbor idx x y direction =
    let (yPos, xPos) = quotRem idx x
     in case direction of
          0 -> if yPos + 1 <  y then (idx + x) else idx -- up
          1 -> if xPos + 1 <  x then (idx + 1) else idx -- right
          2 -> if yPos >= 1     then (idx - x) else idx -- down
          3 -> if xPos >= 1     then (idx - 1) else idx -- left
          _ -> idx

-- 没有judge obstacle!
-- 比如现在2*1的graph，不会有4个邻居的，记录到底有多少邻居的counter?
-- 比如vNodes的type改为Vec 4 (Maybe Node)
aStarCtrl :: (Node -> Info -> Dist)
          -> PathState                      -- input state
          -> PathInput               
          -> (PathState, PathOut)
aStarCtrl _ st@(PS _ _ (PError err) _ _ _) cin@_                                = (st, def)
aStarCtrl _ st@_ cin@(Q.Out (Left Q.Empty) _, _, _)                             = (errSt NoPath, def)
aStarCtrl _ st@_ cin@(Q.Out (Left Q.Overflow) _, _, _)                          = (errSt QOverflow, def)
aStarCtrl _ st@(PS _ _ PWaiting _ _ _) cin@(Q.Out _ _, Nothing, _)              = (st,def)
aStarCtrl _ st@(PS _ _ PWaiting _ _ _) cin@(Q.Out (Right Q.Ready) _, Just i, _) = (PS def i PInitMem def def def, POut Q.Nop (start i) def False def def)
aStarCtrl heur st@(PS _ i PInitMem _ _ _) cin@(Q.Out (Right Q.Ready) _, _, rv)  = (PS def i PCheck newRv def def, POut (Q.Push newRv) def (idx newRv) True newRv def)
    where newRv = Node (idx rv) (idx rv) 0 h (isObstacle rv)
          h     = heur rv i
aStarCtrl _ st@(PS _ _ PCheck _ _ _) cin@(Q.Out (Right Q.Pushing) _,_,_)        = (st,def)
aStarCtrl _ st@(PS _ i PCheck _ _ _) cin@(Q.Out (Right Q.Ready) Nothing,_,_)    = (errSt NoPath, def)
aStarCtrl _ st@(PS _ i PCheck _ _ _) cin@(Q.Out (Right Q.Ready) (Just u),_,_)        
    | idx u == end i = (PS def i PFinished u def def, POut Q.Nop (end i) def False def def)
    | otherwise      = (newSt, newOut)
      where newSt          = PS 0 i PProcessNeighbor u def def
            newOut         = POut Q.Pop upNeighbor def False def def
            upNeighbor     = getNeighbor (idx u) (xMax i) (yMax i) 0
aStarCtrl _ st@(PS 3 i PProcessNeighbor u v _) cin@(Q.Out (Right Q.Popping) _, _, rv)  = (st,def)
aStarCtrl heur st@(PS 3 i PProcessNeighbor u v _) cin@(Q.Out (Right Q.Ready) _, _, rv) = (newSt,newOut)
    where newSt     = PS def i PPushNeighbor u (v <<+ rv) 0
          newUpC    = upCounter newSt
          newVNodes = vNodes newSt
          headV     = head newVNodes
          hv        = heur headV i
          toUpdate  = (g u + 1 < g headV) && (not $ isObstacle headV)
          newOut | toUpdate  = POut (Q.Push uv) def (idx uv) True uv def
                 | otherwise = POut Q.Nop def def False def def
                   where uv  = Node (idx headV) (idx u) (g u + 1) hv (isObstacle headV)   -- updated v
aStarCtrl _ st@(PS mdc i PProcessNeighbor u v _) cin@(Q.Out _ _, _, rv)               =  (newSt,newOut)
    where newSt       = PS (mdc+1) i PProcessNeighbor u (v <<+ rv) def
          newOut      = POut Q.Nop neighborIdx def False def def
          neighborIdx = getNeighbor (idx u) (xMax i) (yMax i) (mdc+1)
aStarCtrl _ st@(PS _ i PPushNeighbor u v 3)   cin@_                                  = (PS def i PCheck def def def, def)
aStarCtrl _ st@(PS _ i PPushNeighbor u v upC) cin@(Q.Out (Right Q.Pushing) _, _, _)  = (st,def)
aStarCtrl heur st@(PS _ i PPushNeighbor u v upC) cin@(Q.Out (Right Q.Ready) _, _, _) = (newSt, newOut)
    where newSt    = PS def i PPushNeighbor u v (upC+1)
          node     = v !! (upC + 1)
          hv       = heur node i
          toUpdate = (g u + 1 < g node) && (not $ isObstacle node)
          newOut | toUpdate  = POut (Q.Push uv) def (idx uv) True uv def
                 | otherwise = POut Q.Nop def def False def def
                   where uv  = Node (idx node) (idx u) (g u + 1) hv (isObstacle node)
aStarCtrl _ st@(PS _ i PFinished u v _) cin@(Q.Out _ _, _,rv) 
    | idx rv == start i = (st, POut Q.Nop (end i) def False def (Just rv))
    | otherwise = (st, POut Q.Nop (prev rv) def False def (Just rv))
aStarCtrl _ _ _ = (errSt Unknown, def)
type VecSize = 1000
heurDikj x y = 0
heurAStar :: Node -> Info -> Dist
heurAStar (Node idx _ _ _ isObstacle) (In x y _ end) = 
    let (yPos1, xPos1) = quotRem idx x :: (Addr, Addr)
        (yPos2, xPos2) = quotRem end x :: (Addr, Addr)
     in subAbs xPos1 xPos2 + subAbs yPos1 yPos2
       where subAbs x y | x > y     = x - y
                        | otherwise = y - x
aStarCtrlLogic    = (aStarCtrl heurAStar) `mealy` def
dikjstraCtrlLogic = (aStarCtrl heurDikj) `mealy` def
minQ = moore Q.minQS Q.getOut (Q.initState def :: Q.InnerState VecSize Node)
x    = 4
y    = 4
s    = 3
e    = 15
maxDist :: Dist
maxDist = shiftR maxBound 1
graphInfo = In x y s e
bram :: Signal Addr -> Signal Addr -> Signal Bool -> Signal Node -> Signal Node
bram = blockRam (n0:> n1 :> n2 :> n3:> n4:> n5 :> n6 :> n7:> n8:>n9:> n10 :> n11 :> n12:> n13:> n14 :> n15 :> Nil)
        where n0 = (Node 0 maxBound maxDist maxDist False)
              n1 = (Node 1 maxBound maxDist maxDist False)
              n2 = (Node 2 maxBound maxDist maxDist False)
              n3 = (Node 3 maxBound maxDist maxDist False)
              n4 = (Node 4 maxBound maxDist maxDist False)
              n5 = (Node 5 maxBound maxDist maxDist True)
              n6 = (Node 6 maxBound maxDist maxDist False)
              n7 = (Node 7 maxBound maxDist maxDist True)
              n8 = (Node 8 maxBound maxDist maxDist False)
              n9 = (Node 9 maxBound maxDist maxDist False)
              n10 = (Node 10 maxBound maxDist maxDist False)
              n11 = (Node 11 maxBound maxDist maxDist True)
              n12 = (Node 12 maxBound maxDist maxDist True)
              n13 = (Node 13 maxBound maxDist maxDist True)
              n14 = (Node 14 maxBound maxDist maxDist False)
              n15 = (Node 15 maxBound maxDist maxDist False)
pathCircuit :: (Signal (Q.Input Node) -> Signal (Q.Output Node))
            -> (Signal Addr -> Signal Addr -> Signal Bool -> Signal Node -> Signal Node)
            -> ((Signal PathInput) -> (Signal PathOut))
            -> Signal (Maybe Info)
            -> Signal (Maybe Node)
pathCircuit minQ bram ctrl pIn = fmap pathNode pOut
    where pOut       = ctrl $ bundle (qOut, pIn, memReadVal)
          qOut       = minQ $ fmap qIn pOut
          memReadVal = bram wA rA wE wV
          rA         = fmap rAddr pOut
          wA         = fmap wAddr pOut
          wE         = fmap wEn   pOut
          wV         = fmap wVal  pOut
topEntity = pathCircuit minQ bram dikjstraCtrlLogic
testInput :: Signal (Maybe Info)
testInput = signal (Just graphInfo)
f n = mapM_ p $ samp
    where samp = sampleN n (topEntity testInput)
          p x = do 
              print x
