module Path where 
import qualified Queue as Q
import CLaSH.Prelude

topEntity = undefined


data PathFinderState 
    = PWaiting 
    | PInit 
    | PCheck
    | PCheckNeighbor
    | PPushNeighbor
    | PFinished
    | PError deriving(Show)

data Info = In{
    xMax  :: Int,
    yMax  :: Int,
    start :: Int,
    end   :: Int
} deriving(Show)
data PathOutput
type PathInput = (Maybe Info)
data PathState = PS {
    innerState :: PathFinderState
} deriving(Show)

aStarCtrl :: PathState -> PathInput -> PathState
aStarCtrl (PS PError)   _        = PS PError
aStarCtrl (PS PWaiting) Nothing  = PS PWaiting 
