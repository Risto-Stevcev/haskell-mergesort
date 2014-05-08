module MergeSort where

merge :: (Ord a) => [a] -> [a] -> [a]
merge left [] = left
merge [] right = right
merge (l:ls) (r:rs) = if l <= r then l:merge ls (r:rs) else r:merge (l:ls) rs

merge_sort :: (Ord a) => [a] -> [a]
merge_sort [] = []
merge_sort (x:[]) = (x:[])
merge_sort list = let mid = (length list) `div` 2 in
                    merge (merge_sort $ take mid list) (merge_sort $ drop mid list)
