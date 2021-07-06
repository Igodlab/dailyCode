-- You are given a 2D array of integers. Print out the clockwise spiral traversal of the matrix.
-- 
-- Example:
-- 
-- grid = [[1,  2,  3,  4,  5],
--         [6,  7,  8,  9,  10],
--         [11, 12, 13, 14, 15],
--         [16, 17, 18, 19, 20]]
-- 
-- The clockwise spiral traversal of this array is:
-- 
-- 1, 2, 3, 4, 5, 10, 15, 20, 19, 18, 17, 16, 11, 6, 7, 8, 9, 14, 13, 12
-- 

grid = [[1,  2,  3,  4,  5],
        [6,  7,  8,  9,  10],
        [11, 12, 13, 14, 15],
        [16, 17, 18, 19, 20]]

matrix_spiral_print :: [[a]] -> [a] -> [a]
matrix_spiral_print [] acc = acc
matrix_spiral_print (m:ms) acc = matrix_spiral_print [tail (init i) | i <- init ms] aux
  where
    aux = acc ++ m ++ [last i | i <- init ms] ++ reverse (last ms) ++ [head i | i <- reverse (init ms)]


