-- Sorted Squared Array
-- --------------------
-- Write a function that takes in a non-empty array of integers that are sorted in ascending order and returns a new arry of the same length with the squares of the original integers also sorted in ascending oreder.
-- 
-- Sample input:
-- Prelude> array = [1, 2, 3, 4, 5, 6, 7, 8, 9]
-- [1, 4, 9, 25, 36, 64, 81]


sortedSquaredArray :: [Int] -> [Int]
sortedSquaredArray [x] = [x^2]
sortedSquaredArray xs = let half = length xs `div` 2 
                        in merge (sortedSquaredArray $ take half xs) (sortedSquaredArray $ drop half xs) 
  where
    merge :: [Int] -> [Int] -> [Int]
    merge xs [] = xs
    merge [] ys = ys
    merge (x:xs) (y:ys) | x^2 >= y^2 = y : merge (x:xs) ys
                        | otherwise = x : merge xs (y:ys)
-- x >= y = x : merge (xs) (y:ys)
-- otherwise = y : merge (x:xs) (ys)
array = [1::Int, 2, 3, 4, 5, 6, 7, 8, 9]
