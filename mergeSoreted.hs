mergeSorted :: (Ord a) => [a] -> [a]
mergeSorted [x] = [x]
mergeSorted xs = merge (mergeSorted $ drop half xs) (mergeSorted $ take half xs)
  where
    half = length xs `div` 2

    merge :: (Ord a) => [a] -> [a] -> [a]
    merge xs [] = xs 
    merge [] ys = ys 
    merge (x:xs) (y:ys)
            | x >= y = x : merge xs (y:ys)
            | otherwise = y : merge (x:xs) ys
