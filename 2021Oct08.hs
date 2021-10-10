-- ISOMORPHIC LISTS
-- Given two strings, find if there is a one-to-one mapping of characters between the two strings.
-- 
-- Example
-- Input: abc, def
-- Output: True --  a -> d, b -> e, c -> f
-- 
-- Input: aab, def
-- Ouput: False --  a can't map to d and e 
-- Here's some starter code:
-- 

isomporphicMap :: (Eq a) => [a] -> [a] -> [(a, a)]
isomporphicMap x y = one2one $ zip x y
  where
    one2one :: (Eq a) => [(a, a)] -> [(a, a)]
    one2one (z:[]) = []
    one2one (x:xs)
        | and $ map (\z -> if z /= snd x then True else False) (map snd $ filterFst (fst x) xs) = xs
        | otherwise = one2one xs
      where 
        flipTuple :: (a, a) -> (a, a)
        flipTuple (m, n) = (n, m)

        filterFst :: (Eq a) => a -> [(a, a)] -> [(a, a)]
        filterFst _ [] = []
        filterFst x xs = filter (\z -> fst z == x) xs

--
-- [(x, y)]  in  [(x, y), (y, x), ..., (m, n)]    then True
--               [(x, z), (z, x), (y, z), (z, y)] then False
--
--
--
