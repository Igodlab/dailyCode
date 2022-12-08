-- TechLead daily question Jun 16, 2021
-- 
-- You are given an array of integers in an arbitrary order. Return whether or not it is possible to make the array non-decreasing by modifying at most 1 element to any value.
--
-- We define an array is non-decreasing if array[i] <= array[i + 1] holds for every i (1 <= i < n).
-- 
-- Example:
-- 
-- [13, 4, 7] should return true, since we can modify 13 to any value 4 or less, to make it non-decreasing.

-- [13, 4, 1] however, should return false, since there is no way to modify just one element to make the array non-decreasing.

{-
check :: (Num a, Ord a) => [a] -> Bool
check x
    | True `elem` map (< 1) x = error "Values in list have to be greater than 1"
    | otherwise = case f of
        []     -> True
        (x:[]) -> True
        (x:_)  -> False
      where 
        f (x:xs) = 
            | filter 
-}

ascending :: (Ord a) => [a] -> [a]
ascending [] = []
ascending (x:xs) = case ascending $ filter (> x) xs of
    []     -> []:
    (x:_)  -> x:ascending xs
