-- Given two strings, determine the edit distance between them. The edit distance is defined as the minimum number of edits (insertion, deletion, or substitution) needed to change one string to the other.
-- 
-- For example, "biting" and "sitting" have an edit distance of 2 (substitute b for s, and insert a t).
-- 

distance :: [Char] -> [Char] -> Int
distance [] y = length y
distance x [] = length x
distance (x:xs) (y:ys)
    | x == y = distance xs ys
    | otherwise = 1 + min' [(distance (x:xs) ys), (distance xs (y:ys)), (distance xs ys)]
  where 
    min' z = foldl (\mi x -> if mi < x then mi else x) mx z
      where
        mx = foldl (\mx x -> if mx > x then mx else x) 0 z
