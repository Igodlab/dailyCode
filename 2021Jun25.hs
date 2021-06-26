-- You are given a 2D array of characters, and a target string. Return whether or not the word target word exists in the matrix. Unlike a standard word search, the word must be either going left-to-right, or top-to-bottom in the matrix.
-- 
-- Example:
-- 
-- [['F', 'A', 'C', 'I'],
--  ['O', 'B', 'Q', 'P'],
--  ['A', 'N', 'O', 'B'],
--  ['M', 'A', 'S', 'S']]
-- 
-- Given this matrix, and the target word FOAM, you should return true, as it can be found going up-to-down in the first column.
-- 
-- Here's the function signature:

word_search :: [[Char]] -> [Char] -> Bool
word_search m w = do
    let mT = transpose m
    let check | w `elem` mT = True
              | w `elem` m  = True
              | otherwise   = False
    check
  where
    transpose :: [[Char]] -> [[Char]]
    transpose ([]:_) = []
    transpose x = (map head x):transpose (map tail x)

matrix = [['F', 'A', 'C', 'I'], ['O', 'B', 'Q', 'P'], ['A', 'N', 'O', 'B'], ['M', 'A', 'S', 'S']]
word = "EOWM"

--in transpose m
