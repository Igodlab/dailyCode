--
-- Sep 24, 2021
-- problem: Implement merge sorted algorithm
--
mergeSorted :: (Ord a) => [a] -> [a]
mergeSorted []  = []
mergeSorted [x] = [x]
mergeSorted x = merge (mergeSorted $ take half x) (mergeSorted $ drop half x)
  where 
    half = (length x) `div` 2

    merge :: (Ord a) => [a] -> [a] -> [a]
    merge [] ys = ys
    merge xs [] = xs
    merge (x:xs) (y:ys) 
        | x < y     = x : merge xs (y:ys)
        | otherwise = y : merge (x:xs) ys

-- [2,5,2] [7,5,4]
-- [2,2,4,5,5]
--

