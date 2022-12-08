module Dec07_2022 where

-- Write a function that takes in a non-empty array of distinct integers and an integer representing a target sum. If any two numbers in the input array sum up to the target sum, the function should return them in an array, in order. If not two numbers sum up to the target sum, the function should return an empty array.
-- 
-- Note that the target sum has to be obtained by summing two different integers in the array; you can't add a single integer to itself in order to obtain the target sum.
-- 
-- You can assume that there will be at most one pair of numbers summing up to the target sum.
-- 

import Control.Applicative (liftA2)


-- sophisticated solution using liftA2 
sumFunction :: [Int] -> Int -> Either [Int] [Int]
sumFunction [] _ = Left []
sumFunction xs n = case filtered (allCombinations [] xs) of
                    [] -> Left []
                    (x:_)  -> Right [fst x, snd x]
  where
    combinations :: [Int] -> [(Int, Int)]
    combinations [] = []
    combinations (x:xs) = [(x, xi) | xi <- xs]

    allCombinations :: [(Int, Int)] -> [Int] -> [(Int, Int)]
    allCombinations acc [] = acc
    allCombinations acc xt@(x:xs) = allCombinations (acc ++ combinations xt) xs

    filtered :: [(Int, Int)] -> [(Int, Int)]
    filtered ys = filter (\(p, q) -> p + q == n) ys
    
-- try:
--
-- Prelude> sumFunction [5, -4, 8, 11, 1, -1, 6, 2, 14] 10
-- Right [-4,14]
