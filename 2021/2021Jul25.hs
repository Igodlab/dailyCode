-- Given a list of words, and an arbitrary alphabetical order, verify that the words are in order of the alphabetical order.
-- 
-- Example:
-- Input:
-- words = ["abcd", "efgh"], order="zyxwvutsrqponmlkjihgfedcba"
-- 
-- Output: False
-- Explanation: 'e' comes before 'a' so 'efgh' should come before 'abcd'
-- 
-- Example 2:
-- Input:  words = ["zyx", "zyxw", "zyxwy"],
--         order="zyxwvutsrqponmlkjihgfedcba"
-- 
-- Output: True
-- Explanation: The words are in increasing alphabetical order
-- 

import qualified Data.Map as Map


isSorted :: [[Char]] -> [Char] -> Bool
isSorted _ [] = error "We need a reference alphabet for ordering"
isSorted [[]] _ = True
isSorted w o
    | all (== Nothing) fr = True
    | all (== True) bools = isSorted (map (drop 1) w) o
    | otherwise = False
  where
    ordIx = Map.fromList (zipWith (\x y -> (x,y)) o [0..length o])
        
    headVal :: [Char] -> [Char] -> Maybe Int
    headVal [] _    = Nothing
    headVal x o
        | x == ""   = Nothing
        | otherwise = Map.lookup (head x) ordIx

    fr = [headVal i o | i <- w]
    hd = head fr
    bools = map (>= hd) fr
        
order1 = "zyxwvutsrqponmlkjihgfedcba"
words1     = ["abcd", "La", "efgh"]
        
order2 = "zyxwvutsrqponmlkjihgfedcba"
words2 = ["zyx", "zyxw", "zyxwy"]

