module HeapSort where 
import CLaSH.Prelude
import Queue

type VecSize = 5 
data HeapSortState n a = HSS{
    vec       :: Vec n a,
    sortState :: SortInnerState 
} deriving(Show)
data SortInnerState = SPush Size
                    | SPop  Size 
                    | SError
                    | Sorted deriving(Show)

-- use mealy model, 
-- heapSortS :: state -> input -> (state, output)
-- use moore model, 
-- heapSortS :: state -> input -> state
heapSortS :: (KnownNat (n+1), Ord a, Default a, Show a) 
         => HeapSortState (n+1) a       -- inner state
         -> (Output a, Maybe (Vec n a))     -- input vector and the output of priorityQueue as input of this contro logic
         -> HeapSortState (n+1) a       -- new state
heapSortS oldst@(HSS vec _)           qOut@((Out (Left  _)       _), _)        = HSS vec SError         -- error handling
heapSortS oldst@(HSS vec SError)      qOut@ _                                  = HSS vec SError         -- error handling
heapSortS oldst                       qOut@((Out (Right Pushing) _), _)        = oldst               -- the priority queue is busy pushing, ignore input, keep state as is
heapSortS oldst                       qOut@((Out (Right Popping)  _), _)        = oldst               -- the priority queue is busy Popping, ignore input, keep state as is
heapSortS oldst@(HSS _ Sorted)        qOut@((Out (Right Ready)   _), Nothing)  = oldst                  -- Nothing to do
heapSortS oldst@(HSS _ Sorted)        qOut@((Out (Right Ready)   _), (Just v)) = HSS (def:>v) (SPush 1) -- init
heapSortS oldst@(HSS vec (SPush idx)) qOut@((Out (Right Ready)   _), _)
    | pushFinished       = HSS vec $ SPop (fromInteger $ maxIndex vec)
    | otherwise          = HSS vec $ SPush (idx + 1)
      where pushFinished = idx >= (fromInteger $ maxIndex vec)
heapSortS (HSS vec (SPop 0))    ((Out (Right Ready)  _), _)          = HSS vec Sorted
heapSortS (HSS vec (SPop idx))  ((Out (Right Ready)  (Just top)), _) = HSS (vec <<+ top) $ SPop $ idx - 1
heapSortO :: (KnownNat (n+1), Ord a, Show a) 
            => HeapSortState (n+1) a
            -> (Input a, Maybe (Vec n a))
heapSortO st@(HSS vec Sorted)      = (Nop, Just $ tail vec)
heapSortO st@(HSS vec SError)      = (Nop, Nothing)
heapSortO st@(HSS vec (SPop 0))    = (Nop, Nothing)
heapSortO st@(HSS vec (SPop _))    = (Pop, Nothing)
heapSortO st@(HSS vec (SPush idx)) = (Push $ vec !! idx , Nothing)
heapSortInitState :: (KnownNat (n+1), Default a) => HeapSortState (n+1) a
heapSortInitState = HSS (repeat def) Sorted

-- heapSortCtrl :: (KnownNat (n+1), Ord a, Default a)
--              => Signal (Output a, Maybe (Vec (n+1) a)) 
--              -> Signal (Input a, Maybe (Vec (n+1) a))
heapSortCtrl = moore heapSortS heapSortO heapSortInitState

heapSortCircuit minQ control vecIn =  vecOut
    where (qIn,vecOut) = unbundle $ control $ bundle (qOut,vecIn)
          qOut         = minQ qIn


minQ :: Signal (Input Int) -> Signal (Output Int)
minQ = moore minQS getOut (initState def :: InnerState VecSize Int)
heapSort :: Signal (Maybe (Vec VecSize Int)) -> Signal (Maybe (Vec VecSize Int))
heapSort = heapSortCircuit minQ heapSortCtrl


topEntity = heapSort
testVec :: Maybe (Vec VecSize Int)
testVec   = fmap reverse $ Just $(v [(1::Int) .. 5])
testInput = stimuliGenerator $ testVec :> Nothing :> Nil



samp n = mapM_ print $ sampleN n bun
    where bun :: Signal (Maybe (Vec VecSize Int), Maybe (Vec VecSize Int))
          bun = bundle (testInput, topEntity testInput)

