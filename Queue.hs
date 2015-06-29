module Queue where 
-- Author: lvwenlong_lambda@qq.com
-- Last Modified:2015年06月29日 星期一 09时38分37秒 一
import CLaSH.Prelude
import Debug.Trace
import qualified Data.List
type Size           = Unsigned 16
data NormalStatus   = Pushing  | Popping | Ready deriving(Show,Eq)
data ErrorStatus    = Overflow | Empty deriving(Show,Eq)
type QueueStatus    = Either ErrorStatus NormalStatus 
data InnerState n a = S {
    status :: QueueStatus,
    size   :: Size,
    idx    :: Size,
    queue  :: Vec n a
} deriving(Show)

data Output a = Out QueueStatus (Maybe a)   deriving(Show)
data Input a  = Push a | Pop | Nop          deriving(Show)
(~~) = (Data.List.++)
initState x = S (Right Ready) 0 0 (repeat x)
minQS = priorityQueueS LT
maxQS = priorityQueueS GT
-- 可能的改进： 在pop/push的init的时候做一次swap，可以节省一个clock cycle
priorityQueueS :: (KnownNat (n+1) , Ord a, Show a) 
                => Ordering             -- determine max_queue or min_queue 
                -> InnerState (n+1) a   -- state
                -> Input a              -- input 
                -> InnerState (n+1) a   -- (state, output)
priorityQueueS _   st@(S (Left _)        _ _ _)  qIn@_          = st                    -- Error handling
priorityQueueS _   st@(S (Right Ready)   _ _ _)  qIn@Nop        = st                    -- Nothing todo
priorityQueueS _   st@(S (Right Ready)   _ _ _)  qIn@Pop        = initPop  st           -- Received pop signal
priorityQueueS _   st@(S (Right Ready)   _ _ _)  qIn@(Push val) = initPush st val       -- Received push signal
priorityQueueS ord st@(S (Right Pushing) _ _ _)  qIn@_          = processPush ord st    -- Processing push
priorityQueueS ord st@(S (Right Popping)  _ _ _)  qIn@_          = processPop  ord st    -- Processing pop


-- 可能的改进： 有error时top为nothing 
-- 可能的改进： normal但是不是ready是为nothing
initPop :: (KnownNat (n+1), Ord a) => InnerState (n+1) a -> InnerState (n+1) a
initPop (S st 0  id qu) = S (Left  Empty)  0      id qu
initPop (S st sz id qu) = S (Right Popping) (sz-1) 0 nqu 
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
        retIdx = if c2Idx < size && comp2 /= ord && comp2 /= EQ
                    then c2Idx
                    else tmpIdx 
        in retIdx


-- probable modification: Nothing if busy / error
-- probable add "topValid" signal
getOut :: (KnownNat (n+1)) => InnerState (n + 1) a -> Output a  
getOut (S st 0  _ _) = Out st Nothing
getOut (S st sz _ q) = Out st (Just $ head q)
swap :: (KnownNat (n + 1)) => Vec (n + 1) a -> Size -> Size -> Vec (n + 1) a
swap vec idx1 idx2 = replace idx1 v2 $ replace idx2 v1 $ vec
    where v1 = vec !! idx1
          v2 = vec !! idx2

decCounter = register 200 $ decCounter - 1


