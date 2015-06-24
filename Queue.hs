module Queue where 
-- Author: lvwenlong_lambda@qq.com
-- Last Modified:2015年06月24日 星期三 18时59分11秒 三
import CLaSH.Prelude
import Debug.Trace
type Size           = Unsigned 16
data NormalStatus   = Pushing  | Poping | Ready deriving(Show)
data ErrorStatus    = Overflow | Empty deriving(Show)
type QueueStatus    = Either ErrorStatus NormalStatus
data InnerState n a = S {
    status :: QueueStatus,
    size   :: Size,
    idx    :: Size,
    queue  :: Vec n a
} deriving(Show)

data Output a = Out QueueStatus (Maybe a)   deriving(Show)
data Input a  = Push a | Pop | Nop          deriving(Show)

initState x = S (Right Ready) 0 0 (repeat x)
minQS = priorityQueueS LT
maxQS = priorityQueueS GT
priorityQueueS :: (KnownNat (n+1) , Ord a) 
                => Ordering             -- determine max_queue or min_queue 
                -> InnerState (n+1) a   -- state
                -> Input a              -- input 
                -> InnerState (n+1) a   -- (state, output)
priorityQueueS _   st@(S (Left _)        _ _ _)  _          = st                    -- Error handling
priorityQueueS _   st@(S (Right Ready)   _ _ _)  Nop        = st                    -- Nothing todo
priorityQueueS _   st@(S (Right Ready)   _ _ _)  Pop        = initPop  st           -- Received pop signal
priorityQueueS _   st@(S (Right Ready)   _ _ _)  (Push val) = initPush st val       -- Received push signal
priorityQueueS ord st@(S (Right Pushing) _ _ _)  _          = processPush ord st    -- Processing push
priorityQueueS ord st@(S (Right Poping)  _ _ _)  _          = processPop  ord st    -- Processing pop


-- 可能的改进： 有error时top为nothing 
-- 可能的改进： normal但是不是ready是为nothing
initPop :: (KnownNat (n+1), Ord a) => InnerState (n+1) a -> InnerState (n+1) a
initPop (S st 0  id qu) = S (Left  Empty)  0      id qu
initPop (S st sz id qu) = S (Right Poping) (sz-1) 0 nqu 
    where nqu = replace 0 (qu !! (sz - 1)) qu
initPush :: (KnownNat (n+1), Ord a) => InnerState (n+1) a -> a -> InnerState (n+1) a
initPush (S st sz id qu) val
    | overflow  = S (Left Overflow) sz     id qu
    | otherwise = S (Right Pushing) (sz+1) sz nqu
      where overflow = sz == (fromInteger $ length $ qu)
            nqu      = replace sz val qu

-- processPush and processPop probably could be writtin in on process function
processPush :: (KnownNat (n+1), Ord a) => Ordering -> InnerState (n+1) a -> InnerState (n+1) a
processPush ord (S st sz idx qu) = 
    let val  = qu !! idx
        pId  = shiftR (idx-1) 1
        pVal = qu !! pId
        comp = idx == 0 || compare pVal val == ord || compare pVal val == EQ
     in if comp
           then S (Right Ready) sz idx qu     -- finished
           else S st sz pId (swap qu idx pId) -- not finished

processPop :: (KnownNat (n+1), Ord a) => Ordering -> InnerState (n+1) a -> InnerState (n+1) a
processPop ord (S st sz idx qu) = 
    let swapIdx = getSwapIdx ord qu idx sz
     in if (swapIdx /= idx)
           then S st sz swapIdx (swap qu idx swapIdx)
           else S (Right Ready) sz idx qu


getSwapIdx  :: (KnownNat (n+1), Ord a) => Ordering -> Vec (n+1) a -> Size -> Size -> Size
getSwapIdx ord qu idx size = 
    let c1Idx  = 2 * idx + 1
        c2Idx  = 2 * idx + 2
        comp1  = compare (qu !! idx)    (qu !! c1Idx) -- might overflow 
        comp2  = compare (qu !! tmpIdx) (qu !! c2Idx) -- might overflow 
        tmpIdx = if c1Idx < size && comp1 /= ord && comp1 /= EQ 
                    then c1Idx 
                    else idx-- swap
        retIdx = if c2Idx < size && comp2 /= ord && comp1 /= EQ
                    then c2Idx
                    else tmpIdx 
        in retIdx


-- probable modification: Nothing if busy / error
-- probable add "topValid" signal
getOut :: (KnownNat n) => InnerState (n + 1) a -> Output a  
getOut (S st 0  _ _) = Out st Nothing
getOut (S st sz _ q) = Out st (Just $ head q)
swap :: (KnownNat (n + 1)) => Vec (n + 1) a -> Size -> Size -> Vec (n + 1) a
swap vec idx1 idx2 = replace idx1 v2 $ replace idx2 v1 $ vec
    where v1 = vec !! idx1
          v2 = vec !! idx2

decCounter = register 200 $ decCounter - 1



-- topEntity :: Signal (Input Int) -> Signal (Output Int)
-- topEntity = moore minQS getOut (initState 0 :: InnerState 100 Int)


-- delaySig ::(Integral a) =>  a -> (i, i) -> (a,i)
-- delaySig 0 (sig1,sig2) = (0,   sig2)
-- delaySig c (sig1,sig2) = (c-1, sig1)

-- choose n = delaySig `mealy` n

-- popSignal  = signal Pop :: Signal (Input a)
-- pushSignal :: (Num a) => Signal (Input a)
-- pushSignal = fmap (\n -> Push n) decCounter 

-- testInput :: Signal (Input Int)
-- testInput = choose 200 $ bundle (pushSignal, popSignal)

-- -- s n = mapM_ print $ sampleN n (topEntity testInput)

data HeapSortState n a = HSS{
    vec       :: Vec n a,
    sortState :: SortInnerState 
} deriving(Show)
data SortInnerState = SPush Size
                    | SPop  Size 
                    | SError
                    | Sorted deriving(Show)

-- use mealy model, 
-- heapSort :: state -> input -> (state, output)
-- use moore model, 
-- heapSort :: state -> input -> state
heapSort :: (KnownNat (n+1), Ord a, Default a) 
         => HeapSortState (n+1) a       -- inner state
         -> (Output a, Maybe (Vec n a))     -- input vector and the output of priorityQueue as input of this contro logic
         -> HeapSortState (n+1) a       -- new state
heapSort (HSS vec _)           ((Out (Left  _)       _), _)         = HSS vec SError         -- error handling
heapSort (HSS vec SError)  _                                        = HSS vec SError         -- error handling
heapSort oldState              ((Out (Right Pushing) _), _)         = oldState               -- the priority queue is busy pushing, ignore input, keep state as is
heapSort oldState              ((Out (Right Poping)  _), _)         = oldState               -- the priority queue is busy Poping, ignore input, keep state as is
heapSort oldst@(HSS _ Sorted)  ((Out (Right Ready)   _), Nothing)   = oldst                  -- Nothing to do
heapSort (HSS _ Sorted)        ((Out (Right Ready)   _), (Just v))  = HSS (def:>v) (SPush 1) -- init
heapSort (HSS vec (SPush idx)) ((Out (Right Ready)   _), _)
    | pushFinished       = HSS vec $ SPop (fromInteger $ maxIndex vec)
    | otherwise          = HSS vec $ SPush (idx + 1)
      where pushFinished = idx >= (fromInteger $ length vec)
heapSort (HSS vec (SPop idx))  ((Out (Right Ready)  (Just top)), _)
    | popFinished = HSS vec Sorted
    | otherwise   = HSS (vec <<+ top) $ SPop $ idx - 1
      where popFinished = idx == 0

heapSortOut :: (KnownNat (n+1), Ord a) 
            => HeapSortState (n+1) a
            -> Maybe (Vec n a)
heapSortOut = undefined
topEntity :: Signal (Input Int) -> Signal (Output Int)
topEntity = moore minQS getOut (initState 0 :: InnerState 100 Int)
testInput :: Signal (Input Int)
testInput = stimuliGenerator $ Nop :> (Push 3) :> Nop :> Nop :> (Push 4) :> Nop :> Nop :> Pop :> Nop :> Pop :> Nop :> Nil
f n = mapM_ print $ sampleN n bun
    where bun :: Signal (Input Int, Output Int)
          bun = bundle (testInput, topEntity testInput)
