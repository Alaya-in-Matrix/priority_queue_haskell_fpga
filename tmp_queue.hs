module Queue where 
import CLaSH.Prelude 
 -- what about overflow
 -- what about emtpy queue
 -- using the data flow interface
type Size = Unsigned 16
data PQueue n a = PQueue{ size :: Size, vec  :: Vec n a } deriving(Show)
-- 这个会不会太浪费资源
compareSwap :: (KnownNat n, Ord a) => Ordering -> Vec n a -> Size -> Size -> Vec n a
compareSwap order vec idx1 idx2 
    | compare v1 v2 == order = vec
    | otherwise              = swap vec idx1 idx2
    where v1 = vec !! idx1
          v2 = vec !! idx2

swap :: (KnownNat n) => Vec n a -> Size -> Size -> Vec n a
swap vec idx1 idx2 = (replace idx1 v2 . replace idx2 v1) vec
    where v1 = vec !! idx1
          v2 = vec !! idx2
swapQ :: (KnownNat n) => PQueue n a -> Size -> Size -> PQueue n a
swapQ (PQueue s vec) idx1 idx2 = PQueue s (swap vec idx1 idx2)
len :: (KnownNat n) => Vec n a -> Size
len = fromInteger . length
data PushError     = Overflow      deriving(Show)
data PushNormal    = Ready | Busy deriving(Show)
type PushOut       = Either PushError PushNormal
data PushState n a = S{ out   :: PushOut, idx   :: (Unsigned 16), queue :: PQueue n a } deriving(Show)
-- maybe I shoud use `Ordering` instead of `cmp`
pushS :: (KnownNat n, Ord a) 
      => Ordering                   -- compare two value
      -> PushState n a              -- state
      -> Maybe a                    -- input, use Maybe as enable
      -> (PushState n a, PushOut)   -- new state, and pushReady enable signal
pushS _ st@(S (Left err) _ _)     _        = (st,    out st)          -- error handling
pushS _ st@(S (Right Ready) _ _)  Nothing  = (st,    out st)          -- ready and no input
pushS _ (S (Right Ready) _ queue) (Just v) = (newSt, out newSt)       -- received valid input, initialize state
    where newSt | overflow  = S (Left  Overflow) sizeq queue
                | otherwise = S (Right Busy)     sizeq newQ
          sizeq    = size queue
          newQ     = PQueue (sizeq + 1) $ replace sizeq v vecQ
          overflow = sizeq >= len vecQ
          vecQ     = vec queue
pushS order (S (Right Busy) cIdx queue) _    = (newSt, out newSt)
    where pIdx  = shiftR cIdx 1
          vecQ  = vec queue
          comp  = compare v pv
          v     = vecQ !! cIdx
          pv    = vecQ !! pIdx
          newSt | (cIdx == 0 || comp == order || comp == EQ) = S (Right Ready) cIdx queue
                | otherwise = S (Right Busy ) pIdx (swapQ queue cIdx pIdx)


initState :: PushState 5 Size
initState = S (Right Ready) 0 (PQueue 0 (repeat 0))
topEntity = (pushS LT) <^> initState
testInput :: Signal (Maybe Size)
testInput = stimuliGenerator $(v [Just 3 :: Maybe (Unsigned 16)])


top :: (KnownNat n) => PQueue n a -> Maybe a
top (PQueue 0 _) = Nothing -- empty queue
top (PQueue _ v) = Just $ v !! 0

