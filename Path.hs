module Path where 
import qualified Queue as Q
import CLaSH.Prelude

topEntity = undefined

data Node = Node{
    idx        :: Int,
    pred       :: Int,
    g          :: Int,
    h          :: Int,
    isObstacle :: Bool
} deriving(Show)

data PathFinderState 
    = PWaiting 
    | PInit 
    | PCheck
    | PCheckNeighbor
    | PPushNeighbor
    | PFinished
    | PError deriving(Show)
-- 由PFinished 转到 PWaiting 应该清空PQueue
-- 或者在init段清空Queue
data Info = In{
    xMax  :: Int,
    yMax  :: Int,
    start :: Int,
    end   :: Int
} deriving(Show)

type PathInput a = (Q.Output a, Maybe Info)
data PathState = PS {
    info       :: Info,
    innerState :: PathFinderState
} deriving(Show)

aStarCtrl :: (Ord a) 
          => PathState 
          -> PathInput a
          -> PathState
aStarCtrl st@(PS info PError)   cin@_                                      = st
aStarCtrl st@(PS info PWaiting) cin@((Q.Out (Left _) _),_)                 = PS info PError
aStarCtrl st@(PS info PWaiting) cin@((Q.Out (Right Q.Ready)   _),Nothing)  = st               -- nothing todo
aStarCtrl st@(PS info PWaiting) cin@((Q.Out (Right Q.Ready)   _),(Just i)) = PS i PInit       -- Waiting -> Init
aStarCtrl st@(PS info PInit)    cin@((Q.Out (Right Q.Pushing) _),_)        = st
aStarCtrl st@(PS info PInit)    cin@((Q.Out (Right Q.Poping)  _),_)        = PS info PError
