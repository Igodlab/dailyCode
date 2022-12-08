-- TechLead daily question Jun 12, 2021
--
-- Given a list of numbers with only 3 unique numbers (1, 2, 3), sort the list in O(n) time
--
-- Input: [3, 3, 2, 1, 3, 2, 1]
-- Output: [1, 1, 2, 2, 3, 3, 3]

sortNums :: (Ord a) => [a] -> [a]
sortNums [] = []
sortNums (x:xs) = 
    let small = sortNums (filter (<=x) xs)
        big   = sortNums (filter (>x) xs)
    in small ++ [x] ++ big

