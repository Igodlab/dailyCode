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

isomporphicMap :: (Eq a) => [a] -> [a] -> Bool
isomporphicMap x y = one2one $ zip x y
  where
    one2one :: (Eq a) => [(a, a)] -> Bool
    one2one (z:[]) = True
    one2one (x:xs) = case (filterSnd (snd x) $ filterFst (fst x) xs) ++ 
                          (filterSnd (fst x) $ filterFst (snd x) xs) of
        (z:_) -> False
        []    -> one2one xs
      where 
        filterFst :: (Eq a) => a -> [(a, a)] -> [(a, a)]
        filterFst _ [] = []
        filterFst x xs = filter (\z -> fst z == x) xs

        filterSnd :: (Eq a) => a -> [(a, a)] -> [(a, a)]
        filterSnd _ [] = []
        filterSnd x xs = filter (\z -> snd z /= x) xs

--
--
-- [(x, y)]  in  [(x, y), (y, x), ..., (m, n)]    then True
--               [(x, z), (z, x), (y, z), (z, y)] then False
--
--
--
