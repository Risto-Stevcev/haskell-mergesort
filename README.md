Haskell MergeSort
=================

The focus of my implementation was to make it as simple and as readable as possible. Surprisingly, it has similar 
performance characteristics compared to the mergesort implementation from 
[GHC](http://hackage.haskell.org/package/base-4.7.0.0/docs/Data-List.html#v:sort). The *version2* folder contains the
GHC implementation, and running on the IntArray.txt list of 100,000 integers shows similar results (*~0.75ms*). The 
GHC version does seem slightly faster.
