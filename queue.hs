module Queue where 
import CLaSH.Prelude
type Size           = Unsigned 16
data NormalStatus   = Busy     | Ready deriving(Show)
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
minQ_S = priority_queueS LT
maxQ_S = priority_queueS GT
priority_queueS :: (KnownNat n , Ord a) 
                => Ordering                   -- determine max_queue or min_queue 
                -> InnerState n a             -- state
                -> Input a                    -- input 
                -> (InnerState n a, Output a) -- (state, output)
priority_queueS = undefined
topEntity :: Signal (Input Int) -> Signal (Output Int)
topEntity = minQ_S `mealy` (initState 0 :: InnerState 100 Int)

getOut :: (KnownNat n) => InnerState (n + 1) a -> Output a  
getOut (S st 0  _ _) = Out st Nothing
getOut (S st sz _ q) = Out st (Just $ head q)
