{-# LANGUAGE TypeSynonymInstances #-}
{-# LANGUAGE FlexibleInstances #-}
module Path where 
import qualified Queue as Q
import CLaSH.Prelude
import Debug.Trace



type Addr = Unsigned 16
type Size = Unsigned 16
data PathState   = PS {
    memDelayCounter:: Unsigned 4,
    info :: Info, 
    innerState :: PathFinderState ,
    uNode :: Node,
    vNodes :: Vec 4 Node,
    upCounter :: Unsigned 2
} deriving(Show)
data Node = Node{ idx :: Addr, prev :: Addr, g :: Int, h :: Int, isObstacle :: Bool } deriving(Show)
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
data PathOut   = POut (Q.Input Node) Addr Addr Bool Node
type PathInput = (Q.Output Node, Maybe Info, Node)
instance Eq Node where 
    (Node _ _ g1 h1 _) == (Node _ _ g2 h2 _) = (g1 + h1) == (g2 + h2)
instance Ord Node where 
    n1 `compare` n2 = (g n1 + h n1) `compare` (g n2 + h n2)
-- 由PFinished 转到 PWaiting 应该清空PQueue
-- 或者在init段清空Queue
-- 在check状态输出pop
-- 在check状态输出读neighbor
-- 各路需要设置mdc的情况需要注意

-- possible modification: use guard instead of pattern matching
defAddress = maxBound :: Addr
instance Default (Q.Input Node) where 
    def = Q.Nop
instance Default Bool where 
    def = True
instance Default Info where
    def = In 0 0 0 0
instance Default Node where 
    def = Node 0 0 maxBound 0 True
instance Default PathState where
    def = PS def def def def def def
instance Default PathFinderState where 
    def = PWaiting
instance Default PathOut where 
    def = POut Q.Nop defAddress defAddress False def

errSt err = PS def def (PError err) def def def


aStarCtrl :: (Node -> Info -> Int)
          -> PathState                      -- input state
          -> PathInput               
          -> (PathState, PathOut)
aStarCtrl _ st@(PS _ _ (PError err) _ _ _) cin@_                                = (st, def)
aStarCtrl _ st@_ cin@(Q.Out (Left Q.Empty) _, _, _)                             = (errSt NoPath, def)
aStarCtrl _ st@_ cin@(Q.Out (Left Q.Overflow) _, _, _)                          = (errSt QOverflow, def)
aStarCtrl _ st@(PS _ _ PWaiting _ _ _) cin@(Q.Out _ _, Nothing, _)              = (st,def)
aStarCtrl _ st@(PS _ _ PWaiting _ _ _) cin@(Q.Out (Right Q.Ready) _, Just i, _) = (PS def i PInitMem def def def, POut Q.Nop (start i) def False def)
aStarCtrl heur st@(PS _ i PInitMem _ _ _) cin@(Q.Out (Right Q.Ready) _, _, rv)     = (PS def i PCheck rv def def, POut (Q.Push newRv) def def False def)
    where newRv = Node (idx rv) def 0 h (isObstacle rv)
          h     = heur rv i
aStarCtrl _ st@(PS _ _ PCheck _ _ _) cin@(Q.Out (Right Q.Pushing) _,_,_)        = (st,def)
aStarCtrl _ st@(PS _ i PCheck _ _ _) cin@(Q.Out (Right Q.Ready) Nothing,_,_)    = (errSt NoPath, def)
aStarCtrl _ st@(PS _ i PCheck _ _ _) cin@(Q.Out (Right Q.Ready) (Just u),_,_)        
    | idx u == end i = (PS def i PFinished u def def, def)
    | otherwise      = (newSt, newOut)
      where newSt          = PS 0 i PProcessNeighbor u def def
            newOut         = POut Q.Pop upNeighbor def False def
            upNeighbor | (idx u) + (xMax i) < (xMax i * yMax i) = (idx u) + (xMax i)
                       | otherwise = idx u
aStarCtrl _ st@(PS 3 i PProcessNeighbor u v _) cin@(Q.Out (Right Q.Popping) _, _, rv)  = (st,def)
aStarCtrl heur st@(PS 3 i PProcessNeighbor u v _) cin@(Q.Out (Right Q.Ready) _, _, rv) = (newSt,newOut)
    where newSt     = PS def i PPushNeighbor u (v <<+ rv) 0
          newUpC    = upCounter newSt
          newVNodes = vNodes newSt
          headV     = head newVNodes
          hv        = heur headV i
          toUpdate  = g u + 1 < g headV
          newOut | toUpdate  = POut (Q.Push uv) def (idx uv) True uv
                 | otherwise = POut Q.Nop def def False def
                   where uv  = Node (idx headV) (idx u) (g u + 1) hv (isObstacle headV)   -- updated v
aStarCtrl _ st@(PS mdc i PProcessNeighbor u v _) cin@(Q.Out _ _, _, rv)               = (newSt,newOut)
    where newSt  = PS (mdc+1) i PProcessNeighbor u (v <<+ rv) def
          newOut = POut Q.Nop (rightNeighbor mdc) def False def
          rightNeighbor 0 | (idx u) + 1 < (xMax i * yMax i) = (idx u) + 1
                          | otherwise                       = idx u
          rightNeighbor 1 | (idx u) - (xMax i) > 0          = (idx u) - (xMax i)
                          | otherwise                       = idx u
          rightNeighbor 2 | (idx u) - 1 > 0                 = (idx u) - 1
                          | otherwise                       = idx u
aStarCtrl _ st@(PS _ i PPushNeighbor u v 3)   cin@_                                  = (PS def i PCheck def def def, def)
aStarCtrl _ st@(PS _ i PPushNeighbor u v upC) cin@(Q.Out (Right Q.Pushing) _, _, _)  = (st,def)
aStarCtrl heur st@(PS _ i PPushNeighbor u v upC) cin@(Q.Out (Right Q.Ready) _, _, _) = (newSt, newOut)
    where newSt    = PS def i PPushNeighbor u v (upC+1)
          node     = v !! (upC + 1)
          hv       = heur node i
          toUpdate = g u + 1 < g node
          newOut | toUpdate  = POut (Q.Push uv) def (idx uv) True uv
                 | otherwise = POut Q.Nop def def False def
                   where uv  = Node (idx node) (idx u) (g u + 1) hv (isObstacle node)
aStarCtrl _ st@(PS _ _ PFinished u v _) cin@_ = "finished" `trace` (st,def)
-- aStarCtrl st@(PS mdc info PFinished u v upC) cin@_ = PS 0 info PWaiting u v 0
-- aStarCtrl st@_                               cin@_ = errSt st     -- default situation, error state
--     where errSt (PS mdc info _ u v upC) = PS mdc info (PError Unknown) u v upC

type VecSize = 1000
heurDikj x y = 0
dikjstraCtrl = (aStarCtrl heurDikj) `mealy` def
minQ         = moore Q.minQS Q.getOut (Q.initState def :: Q.InnerState VecSize Node)
node1     = Node 0 0 maxBound 0 False
node2     = Node 1 0 maxBound 0 False
x         = 2
y         = 1
s         = 0
e         = 1
graphInfo = In x y s e
type Bram = Signal Addr -> Signal Addr -> Signal Bool -> Signal Node -> Signal Node
bram :: Bram
bram = blockRam (node1 :> node2 :> Nil)

