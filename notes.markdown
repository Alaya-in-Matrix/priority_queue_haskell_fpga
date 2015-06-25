* to read: N-Queen on FPGA

## Heapsort stat ##
number of elements, and clock cycles used
```haskell
type VecSize = 10 
testVec :: Maybe (Vec VecSize Int)
testVec   = Just $(v [9,2,6,5,3,5,8,9,7,9::Int])
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
