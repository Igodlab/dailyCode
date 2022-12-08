-- Given an array of n positive integers and a positive integer s, find the minimal length of a contiguous subarray of which the sum ≥ s. If there isn't one, return 0 instead.
-- 
-- Example:
-- Input: s = 7, nums = [2,3,1,2,4,3]
-- Output: 2
-- Explanation: the subarray [4,3] has the minimal length under the problem constraint.
-- 
-- Here is the method signature:
--

import Data.Matrix 


{-
minSubArrayLen :: (Eq a) => [a] -> a -> a]
minSubArrayLen [] _ = 0
minSubArrayLen (x:x':xs) y
    | y `elem` map (+x) x':xs = 
    | 
  where        
-}  


cartProdn :: (Eq a) => [a] -> Int -> [[a]]
cartProdn ls 2 = [[x, y] | x <- ls, y <- ls, x /= y]
cartProdn ls n = [x : t | x <- ls, t <- cartProdn ls (n - 1)]
