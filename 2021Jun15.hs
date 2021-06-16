-- TechLead daily question Jun 15, 2021
--
-- Given a list of numbers, where every number shows up twice except for one number, find that one number.
-- Challenge: Find a way to do this using O(1) memory.
--
-- Example:
-- Input:  [4, 3, 2, 4, 1, 3, 2]
-- Output: 1

singleNumber :: (Eq a) => [a] -> Maybe a
singleNumber x = case x of
    [] -> Nothing
    [x] -> Just x
    (x:xs) -> singleNumber [i | i <- xs, i /= x]
