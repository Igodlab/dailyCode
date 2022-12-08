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

transpose' :: [[a]] -> [[a]]
transpose' []           = []
transpose' ([]:xss)     = transpose' xss
transpose' ((x:xs):xss) = (x:[h | (h:_) <- xss]):transpose' (xs:[t | (_:t) <- xss])

numIslands :: (Num a) => [[a]] -> [[a]]
numIslands m = case m of
    
  where
    surround x = 
        let top = (0 : (replicate (length $ head x) 0)) ++ [0]
        in [top] ++ [[0] ++ row ++ [0] | row <- x] ++ [top]

grid = [[1, 1, 0, 0, 0],
        [0, 1, 0, 0, 1],
        [0, 0, 0, 1, 1],
        [0, 0, 0, 0, 0]]

transp' :: (Show a) => [[a]] -> [[a]]
transp' ([]:_) = []
transp' ms = (map head ms) : transp' (map tail ms)

match :: [Int] -> String
match m = case m of
    (_:0:1:_) -> "snd: 0; trd: 1"
    (1:1:_)   -> "fst & snd: 1"
