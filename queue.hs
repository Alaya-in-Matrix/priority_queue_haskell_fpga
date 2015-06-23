module Queue where 
import CLaSH.Prelude
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

data Output a = Out QueueStatus (Maybe a)
data Input a  = Push a | Pop | Nop

initState x = S (Right Ready) 0 0 (repeat x)
minQS = priorityQueueS LT
maxQS = priorityQueueS GT
priorityQueueS :: (KnownNat n , Ord a) 
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
initPop :: (KnownNat n, Ord a) => InnerState (n+1) a -> InnerState (n+1) a
initPop (S st 0  id qu) = S (Left  Empty)  0      id qu
initPop (S st sz id qu) = S (Right Poping) (sz-1) 0 nqu 
    where nqu = qu <<+ head qu
initPush    = undefined
processPop  = undefined
processPush = undefined


topEntity :: Signal (Input Int) -> Signal (Output Int)
topEntity = moore minQS getOut (initState 0 :: InnerState 100 Int)


getOut :: (KnownNat n) => InnerState (n + 1) a -> Output a  
getOut (S st 0  _ _) = Out st Nothing
getOut (S st sz _ q) = Out st (Just $ head q)
swap :: (KnownNat n) => Vec (n + 1) a -> Size -> Size -> Vec (n + 1) a
swap = undefined
-- swap vec idx1 idx2 = (replace idx1 v2 . replace idx2 v1) vec
--     where v1 = vec !! idx1
--           v2 = vec !! idx2
