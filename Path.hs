module Path where 
import qualified Queue as Q
import CLaSH.Prelude
import Debug.Trace

topEntity = undefined

-- 由PFinished 转到 PWaiting 应该清空PQueue
-- 或者在init段清空Queue
-- 在check状态输出pop
-- 在check状态输出读neighbor
-- 各路需要设置mdc的情况需要注意


-- possible modification: use guard instead of pattern matching
aStarCtrl :: PathState                      -- input state
          -> PathInput Node              
          -> PathState
aStarCtrl st@(PS mdc info (PError err) u v _) cin@_ = st
aStarCtrl st@(PS mdc info _        u v upC)   cin@((Q.Out (Left Q.Empty)    _), _,        _)   = PS mdc     info (PError NoPath)    u  v upC
aStarCtrl st@(PS mdc info _        u v upC)   cin@((Q.Out (Left Q.Overflow) _), _,        _)   = PS mdc     info (PError QOverflow) u  v upC
aStarCtrl st@(PS mdc info PWaiting u v upC)   cin@((Q.Out (Right Q.Ready)   _), Nothing,  _)   = st                              -- nothing todo
aStarCtrl st@(PS mdc info PWaiting u v upC)   cin@((Q.Out (Right Q.Ready)   _), (Just i), _)   = PS 1       info PInitMem           u  v upC        -- Waiting -> Init
aStarCtrl st@(PS 0   info PInitMem u v upC)   cin@((Q.Out (Right Q.Ready)   _), _,        rv)  = PS 0       info PInitQ             rv v upC           -- finished reading mem
aStarCtrl st@(PS mdc info PInitMem u v upC)   cin@((Q.Out (Right Q.Ready)   _), _,        _)   = PS (mdc-1) info PInitMem           u  v upC    -- reading mem
aStarCtrl st@(PS mdc info PInitQ   u v upC)   cin@((Q.Out (Right Q.Ready)   _), _,        _)   = PS mdc     info PCheck             u  v upC
aStarCtrl st@(PS mdc info PCheck   u v upC)   cin@((Q.Out (Right Q.Pushing) _), _,        _)   = st
aStarCtrl st@(PS mdc info PCheck   u v upC)   cin@((Q.Out (Right Q.Ready)   (Just top)), _, _)
    | idx top == end info = PS mdc info PFinished        top v upC
    | otherwise           = PS 5   info PProcessNeighbor top v upC    -- read 4 neighbors, with 1 clock delay
aStarCtrl st@(PS 5   info PProcessNeighbor u v upC) cin@_                                            = PS 4    info PProcessNeighbor u v upC
aStarCtrl st@(PS 0   info PProcessNeighbor u v upC) cin@((Q.Out (Right Q.Popping) _),_,_)            = st   -- stall
aStarCtrl st@(PS 0   info PProcessNeighbor u v upC) cin@((Q.Out (Right Q.Ready)   _),_,_)            = PS 1    info PPushNeighbor u v 0
aStarCtrl st@(PS mdc info PProcessNeighbor u v upC) cin@((Q.Out (Right _)         _),_,rv)           = PS mdc' info PProcessNeighbor u v' upC
    where mdc' = mdc - 1
          v'   = v <<+ rv
aStarCtrl st@(PS mdc info PPushNeighbor u v 3)    cin@_
    | waiting   = PS (mdc-1) info PPushNeighbor u v 3
    | otherwise = PS 0 info PCheck u v 0
      where waiting = let qStatus ((Q.Out s _),_,_) = s
                       in (qStatus cin) /= Right Q.Ready || mdc > 0
aStarCtrl st@(PS mdc info PPushNeighbor u v upC) cin@_
    | waiting   = PS (mdc-1) info PPushNeighbor u v upC
    | otherwise = PS 1 info PPushNeighbor u v (upC + 1)
      where waiting = let qStatus ((Q.Out s _),_,_) = s
                       in (qStatus cin) /= Right Q.Ready || mdc > 0
aStarCtrl st@(PS mdc info PFinished u v upC) cin@_ = PS 0 info PWaiting u v 0
aStarCtrl st@_                               cin@_ = errSt st     -- default situation, error state
    where errSt (PS mdc info _ u v upC) = PS mdc info (PError Unknown) u v upC
type Addr = (Unsigned 4)
type PathInput a = (Q.Output a, Maybe Info, Node)
type PathOut a = (Q.Input a, Addr)
data PathState   = PS {
    memDelayCounter::(Unsigned 4),
    info :: Info, 
    innerState :: PathFinderState ,
    uNode :: Node,
    vNodes :: Vec 4 Node,
    upCounter :: (Unsigned 2)
} deriving(Show)
data Node        = Node{ idx :: Int, pred :: Int, g :: Int, h :: Int, isObstacle :: Bool } deriving(Show)
data Info        = In{ xMax  :: Int, yMax  :: Int, start :: Int, end   :: Int } deriving(Show)
data PathFinderState = PWaiting 
    | PInitMem               -- read start from memory
    | PInitQ                 -- push start to priority queue
    | PCheck
    | PProcessNeighbor
    | PPushNeighbor
    | PFinished
    | PError Error deriving(Show)
data Error = QOverflow | NoPath | Unknown deriving(Show)
instance Eq Node where 
    (Node _ _ g1 h1 _) == (Node _ _ g2 h2 _) = (g1 + h1) == (g2 + h2)
instance Ord Node where 
    n1 `compare` n2 = (g n1 + h n1) `compare` (g n2 + h n2)
