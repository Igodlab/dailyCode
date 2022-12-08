-- Given a list of building in the form of (left, right, height), return what the skyline should look like. The skyline should be in the form of a list of (x-axis, height), where x-axis is the next point where there is a change in height starting from 0, and height is the new height starting from the x-axis.
--
-- in:  [(2, 8, 3), (4, 6, 5)]
--
-- out: [(2, 3), (4, 5), (7, 3), (9, 0)]
--
--            2 2 2
--            2 2 2
--        1 1 2 2 2 1 1
--        1 1 2 2 2 1 1
--        1 1 2 2 2 1 1
-- pos: 1 2 3 4 5 6 7 8 9
--
genSkyline :: [(Int, Int, Int)] -> [(Int, Int)]
genSkyline x = zip (head $ profile x) (last $ profile x)
  where
    height :: (Int, Int, Int) -> [Int]
    height (0,0,_) = []
    height (x, y, z) = if x /= 0 then replicate (x-1) 0 ++ replicate (y-x+1) z
                                 else replicate (y-x+1) z

    profile :: [(Int, Int, Int)] -> [[Int]]
    profile [] = []
    profile (x:xs) = height x : profile xs

    transpose :: [[a]] -> [[a]]
    transpose ([]:_) = []
    transpose x = (map head x) : transpose (map tail x)
             
--    sumProfile :: [[Int]] -> [Int]

