-- A look-and-say sequence is defined as the integer sequence beginning with a single digit in which the next term is obtained by describing the previous term. An example is easier to understand:

-- Each consecutive value describes the prior value.

-- 1      #
-- 11     # one 1's
-- 21     # two 1's
-- 1211   # one 2, and one 1.
-- 111221 # #one 1, one 2, and two 1's.

-- Your task is, return the nth term of this sequence.

lookAndSay :: Int -> [Int] -> [Int]
lookAndSay n xs
    | n == 0 = xs
    | otherwise = lookAndSay (n-1) (newSeq xs)
  where
    newSeq :: [Int] -> [Int]
    newSeq [] = []
    newSeq y:ys
