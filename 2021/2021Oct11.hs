import Data.Char

-- 
-- prob 2. Create an algorithm that eliminates any consecutive combination of upper and lower case if the character is the same. 
--
-- e.g.  "abc"      -> "abc"
--       "AaBc"     -> "Bc"
--       "AaAbc"    -> "bc"
--       "aBbbBc"   -> "ac"
--       

elimChar :: (Num a) =>  [Char] -> [[a]]
elimChar xs = foldr (\z -> if isUpper z then 1 else 0) $ groupBy' (\x y -> toLower x == toLower y) xs
  where
    -- 'span' @p xs@ is equivalent to @('takeWhile' p xs, 'dropWhile' p xs)@
    span' :: (a -> Bool) -> [a] -> ([a],[a])
    span' _ xs@[] = (xs, xs)
    span' p xs@(x:xs')
        | p x          =  let (ys,zs) = span' p xs' in (x:ys,zs)
        | otherwise    =  ([],xs)

    -- | The 'groupBy' function is the non-overloaded version of 'group'.
    groupBy' :: (a -> a -> Bool) -> [a] -> [[a]]
    groupBy' _ [] = []
    groupBy' eq (x:xs) = (x:ys) : groupBy' eq zs
      where 
        (ys,zs) = span' (eq x) xs

    elim :: [[Char]] -> [[Char]]
    elim [[]] = [[]]
    elim (x:xs) 
        | xBinary == (take lx $ cycle [0,1]) = elim xs --xBinary : elim xs
        | xBinary == (take lx $ cycle [1,0]) = elim xs
        | otherwise = x : elim xs
      where 
        lx = length x
        xBinary = map (\z -> if isUpper z then 1 else 0) x
