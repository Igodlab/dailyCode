import Data.Char

-- prob 1. merge sorted list
--

mergeSorted :: (Ord a) => [a] -> [a]
mergeSorted (x:[]) = [x]
mergeSorted xs = merge (mergeSorted $ take half xs) (mergeSorted $ drop half xs)
  where 
    half = length xs `div` 2

    merge :: (Ord a) => [a] -> [a] -> [a]
    merge xs [] = xs
    merge [] ys = ys
    merge xs@(x:xss) ys@(y:yss) 
        | x < y = x : merge xss ys
        | otherwise = y : merge xs yss

-- 
-- prob 2. Create an algorithm that eliminates any consecutive combination of upper and lower case if the character is the same. 
--
-- e.g.  "abc"      -> "abc"
--       "AaBc"     -> "Bc"
--       "AaAbc"    -> "bc"
--       "aBbbBc"   -> "ac"
--       

elimChar :: [Char] -> [Char]
elimChar x = case x of
    []             -> []
    (x1:x2:[])    | (toLower x1 == toLower x2) && cond1 x1 x2 -> []
                  | otherwise -> [x1,x2] 
    (x1:x2:x3:[]) | (toLower x1 == toLower x2) && (toLower x2 == toLower x3) && cond2 x1 x2 x3 -> [] -- remove "x1 x2 x3"
                  | (toLower x1 == toLower x2) && cond1 x1 x2 -> [x3]                                -- remove "x1 x2"
                  | otherwise -> x1 : elimChar [x2,x3]
    (x1:x2:x3:xs) | (toLower x1 == toLower x2) && (toLower x2 == toLower x3) && cond2 x1 x2 x3 -> elimChar xs -- remove "x1 x2 x3"
                  | (toLower x1 == toLower x2) && cond1 x1 x2 -> elimChar (x3:xs)                             -- remove "x1 x2"
                  | otherwise -> x1 : elimChar (x2:x3:xs)
  where 
    cond1 :: Char -> Char -> Bool
    cond1 x1 x2 = case (map (\z -> if isLower z then 0 else 1) [x1,x2]) of 
        [1, 0] -> True
        [0, 1] -> True
        _      -> False
        
    cond2 :: Char -> Char -> Char -> Bool
    cond2 x1 x2 x3 = case (map (\z -> if isLower z then 0 else 1) [x1,x2,x3]) of
        [0, 1, 0] -> True
        [1, 0, 1] -> True
        _         -> False


