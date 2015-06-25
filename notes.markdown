* to read: N-Queen on FPGA

## Heapsort stat ##
number of elements, and clock cycles used
```haskell
-- sort descending elements to ascending order
type VecSize = 10 
testVec :: Maybe (Vec VecSize Int)
testVec   = fmap reverse $ Just $(v [(1::Int) .. 10])
testInput = stimuliGenerator $ testVec :> Nothing :> Nil
```
* 100: 1264
* 90:  1114
* 80:  964
* 70:  814
* 60:  670
* 50:  540
* 40:  410
* 30:  282
* 20:  172
* 10:  72
* 5:   31
* 2:   12
* 1:   7
