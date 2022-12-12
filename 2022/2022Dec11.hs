-- Sorted Squared Array
-- --------------------
-- Write a function that takes in a non-empty array of integers that are sorted in ascending order and returns a new arry of the same length with the squares of the original integers also sorted in ascending oreder.
-- 
-- Sample input:
-- Prelude> array = [1, 2, 3, 4, 5, 6, 7, 8, 9]
-- [1, 4, 9, 25, 36, 64, 81]


sortedSquaredArray :: [Int] -> [Int]
sortedSquaredArray xs = map (^2) xs

array = [1::Int, 2, 3, 4, 5, 6, 7, 8, 9]
