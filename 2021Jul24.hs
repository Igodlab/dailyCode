-- Given an array with n objects colored red, white or blue, sort them in-place so that objects of the same color are adjacent, with the colors in the order red, white and blue.
-- 
-- Here, we will use the integers 0, 1, and 2 to represent the color red, white, and blue respectively.
-- 
-- Note: You are not suppose to use the library’s sort function for this problem.
-- 
-- Can you do this in a single pass?
-- 
-- Example:
-- Input: [2,0,2,1,1,0]
-- Output: [0,0,1,1,2,2]
-- Here's a starting point:

data Colors = Red | White | Blue deriving (Show, Read)

instance Eq Colors where
    Red == Red     = True
    White == White = True
    Blue == Blue   = True
    _ == _         = False

instance Ord Colors where
    Red `compare` Red     = EQ
    Red `compare` White   = LT
    Red `compare` Blue    = LT

    White `compare` White = EQ
    White `compare` Red   = GT
    White `compare` Blue  = LT
    
    Blue `compare` Blue   = EQ
    Blue `compare` Red    = GT
    Blue `compare` White  = GT

sortColors :: [Colors] -> [Colors]
sortColors [] = []
sortColors (x:xs) = 
    let smaller = sortColors [i | i <- xs, i <= x]
        bigger  = sortColors [i | i <- xs, i > x]
    in smaller ++ [x] ++ bigger

mapColors :: [Integer] -> [Colors]
mapColors [] = []
mapColors (x:xs) 
    | x == 0 = Red:mapColors xs
    | x == 1 = White:mapColors xs
    | otherwise = Blue:mapColors xs

nums = [0, 1, 2, 2, 1, 1, 2, 2, 0, 0, 0, 0, 2, 1]

main :: IO()
main = do
    putStrLn "Before sort:"
    putStrLn (show(mapColors nums) :: [Char])

    putStrLn "After sort:"
    putStrLn (show(sortColors $ mapColors nums) :: [Char])

-- [0, 0, 0, 0, 0, 1, 1, 1, 1, 2, 2, 2, 2, 2]

