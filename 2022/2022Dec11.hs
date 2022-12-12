-- Sorted Squared Array
-- --------------------
-- Write a function that takes in a non-empty array of integers that are sorted in ascending order and returns a new arry of the same length with the squares of the original integers also sorted in ascending oreder.
-- 
-- Sample input:
-- Prelude> array = [1, 2, 3, 4, 5, 6, 7, 8, 9]
-- [1, 4, 9, 25, 36, 64, 81]


sortedSquaredArray :: [Int] -> [Int]
sortedSquaredArray xs = mergeSortArray $ map (^2) xs
  where
    mergeSortArray :: [Int] -> [Int]
    mergeSortArray [x] = [x]
    mergeSortArray xs = let half = length xs `div` 2
                        in merge (mergeSortArray $ take half xs) (mergeSortArray $ drop half xs) 

    merge :: [Int] -> [Int] -> [Int]
    merge xs [] = xs
    merge [] ys = ys
    merge (x:xs) (y:ys) | x >= y = merge (xs) (y:ys) ++ [x]
                        | otherwise = merge (x:xs) (ys) ++ [y]

array = [1::Int, 2, 3, 4, 5, 6, 7, 8, 9]
