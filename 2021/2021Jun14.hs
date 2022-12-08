-- TechLead daily question Jun 12, 2021
--
--  You are given a list of numbers, and a target number k. Return whether or not there are two numbers in the list that add up to k.
--
-- Example:
-- Given [4, 7, 1 , -3, 2] and k = 5,
-- return true since 4 + 1 = 5.

two_sum :: (Num a, Eq a) => [a] -> a -> Bool
two_sum [] _ = False
two_sum (x:xs) k
    | k `elem` [a+x | a <- xs, a+x == k] = True
    | otherwise = two_sum xs k
