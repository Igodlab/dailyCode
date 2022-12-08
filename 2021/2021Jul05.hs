-- Given a list, find the k-th largest element in the list.
-- Input: list = [3, 5, 2, 4, 6, 8], k = 3
-- Output: 4
--

findKthLargest :: (Ord a, Num a) => [a] -> Int -> a
findKthLargest [] _ = 999
findKthLargest x k
    | k < 0         = error "k can't be negative"
    | k >= length x = error "k can't be larger than the length of the input list"
    | otherwise     = sorted x !! k
  where
    sorted :: (Ord a) => [a] -> [a]
    sorted [] = []
    sorted (x:xs) =
        let shorter = sorted [i | i <- xs, i <= x]
            bigger  = sorted [i | i <- xs, i > x]
        in bigger ++ [x] ++ shorter 
