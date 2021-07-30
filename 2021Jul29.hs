-- Given a 2-dimensional grid consisting of 1's (land blocks) and 0's (water blocks), count the number of islands present in the grid. The definition of an island is as follows:
--
-- 1.) Must be surrounded by water blocks.
-- 2.) Consists of land blocks (1's) connected to adjacent land blocks (either vertically or horizontally).
-- Assume all edges outside of the grid are water.
-- 
-- Example:
-- Input: 
-- 10001
-- 11000
-- 10110
-- 00000
--
-- Output: 3
-- Here's your starting point:
--

transpose'               :: [[a]] -> [[a]]
transpose' []             = []
transpose' ([]   : xss)   = transpose' xss
transpose' ((x:xs) : xss) = (x : [h | (h:_) <- xss]) : transpose' (xs : [ t | (_:t) <- xss])

{-
numIslands :: (Eq a, Num a) => [[a]] -> a -> a
numIslands [] n = n
numIslands (x:xs) n
    | redRow x == 1 = numIslands xs n
    | redRow  == 0 = numIslands xs (n+1)
  where
    redRow :: (Eq a, Num a) => [a] -> a
    redRow (r:rs)
        | r == 1 = redRow rs
        | r == 0 = 0
        | otherwise = 1
-}

grid = [[1, 1, 0, 0, 0],
        [0, 1, 0, 0, 1],
        [1, 0, 0, 1, 1],
        [0, 0, 0, 0, 0]]
