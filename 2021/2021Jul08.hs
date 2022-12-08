-- You are given an array of intervals - that is, an array of tuples (start, end). The array may not be sorted, and could contain overlapping intervals. Return another array where the overlapping intervals are merge.
--
-- For example:
-- [(1, 3), (5, 8), (4, 10), (20, 25)]
--
-- This input should return [(1, 3), (4, 10), (20, 25)] since (5, 8) and (4, 10) can be merge into (4, 10).
--
-- Here's a starting point:
--

merge :: (Ord a, Eq a) => [(a, a)] -> [(a, a)]
merge [] = []
merge (x:xs)
    | and $ map (\k -> fst k > fst x || snd k < snd x) xs = x:merge(xs)
    | otherwise = merge(xs)

