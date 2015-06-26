module Path where 
import qualified Queue as Q
import CLaSH.Prelude

topEntity = undefined

-- 由PFinished 转到 PWaiting 应该清空PQueue
-- 或者在init段清空Queue
-- 在check状态输出pop
-- 在check状态输出读neighbor
-- 各路需要设置mdc的情况需要注意


-- possible modification: use guard instead of pattern matching
aStarCtrl :: PathState 
          -> PathInput Node
          -> PathState
-- error state, report error
aStarCtrl st@(PS mdc info (PError err) u v) cin@_ = st
-- error in queue, new state: error, output: report error
aStarCtrl st@(PS mdc info _ u v)                cin@((Q.Out (Left Q.Empty)    _), _,        _)   = PS mdc     info (PError NoPath)    u v
aStarCtrl st@(PS mdc info _ u v)                cin@((Q.Out (Left Q.Overflow) _), _,        _)   = PS mdc     info (PError QOverflow) u v
aStarCtrl st@(PS mdc info PWaiting u v)         cin@((Q.Out (Right Q.Ready)   _), Nothing,  _)   = st                              -- nothing todo
aStarCtrl st@(PS mdc info PWaiting u v)         cin@((Q.Out (Right Q.Ready)   _), (Just i), _)   = PS mdc     info PInitMem           u v        -- Waiting -> Init
aStarCtrl st@(PS 0   info PInitMem u v)         cin@((Q.Out (Right Q.Ready)   _), _,        rv)  = PS 0       info PInitQ             rv v             -- finished reading mem
aStarCtrl st@(PS mdc info PInitMem u v)         cin@((Q.Out (Right Q.Ready)   _), _,        _)   = PS (mdc-1) info PInitMem           u v    -- reading mem
aStarCtrl st@(PS mdc info PInitQ   u v)         cin@((Q.Out (Right Q.Ready)   _), _,        _)   = PS mdc     info PCheck             u v
aStarCtrl st@(PS mdc info PCheck   u v)         cin@((Q.Out (Right Q.Pushing) _), _,        _)   = st
aStarCtrl st@(PS mdc info PCheck   u v)         cin@((Q.Out (Right Q.Ready)   Nothing),    _, _) = PS mdc     info (PError Unknown)   u v
aStarCtrl st@(PS mdc info PCheck   u v)         cin@((Q.Out (Right Q.Ready)   (Just top)), _, _)
    | idx top == end info = PS mdc info PFinished        top v
    | otherwise           = PS 5   info PProcessNeighbor top v    -- read 4 neighbors, with 1 clock delay
aStarCtrl st@(PS 5   info PProcessNeighbor u v) cin@_                                            = PS 4   info PProcessNeighbor u v
aStarCtrl st@(PS 0   info PProcessNeighbor u v) cin@((Q.Out (Right Q.Pushing) _),_,_)            = PS 0   info (PError Unknown) u v -- finished reading memory, check whether poping is finished
aStarCtrl st@(PS 0   info PProcessNeighbor u v) cin@((Q.Out (Right Q.Popping) _),_,_)            = st   -- stall
aStarCtrl st@(PS 0   info PProcessNeighbor u v) cin@((Q.Out (Right Q.Ready)   _),_,_)            = PS 0   info PPushNeighbor u v
aStarCtrl st@(PS mdc info PProcessNeighbor u v) cin@((Q.Out (Right _)         _),_,rv)           = PS mdc' info PPushNeighbor u v'
    where mdc' = mdc - 1
          v'   = v <<+ rv

type PathInput a = (Q.Output a, Maybe Info, Node)
data PathState   = PS {
    memDelayCounter::(Unsigned 4),
    info :: Info, 
    innerState :: PathFinderState ,
    uNode :: Node,
    vNodes :: Vec 4 Node
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
