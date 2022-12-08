-- Kaprekar's Constant is the number 6174. This number is special because it has the property where for any 4-digit number that has 2 or more unique digits, if you repeatedly apply a certain function it always reaches the number 6174
--
nIterationsKaprekar :: Int -> Int
nIterationsKaprekar x
    | length (toDigits x) < 3 = error "number has to have more than 3 digits"
    | (length $ (unique . reverse . toDigits) x) < 2 = error "number must contain 2 or more unique digits"
    | otherwise = nIterations x 1
  where
    toDigits :: Int -> [Int]
    toDigits 0 = []
    toDigits x = (x `mod` 10) : toDigits (x `div` 10)

    fromDigits :: [Int] -> Int
    fromDigits (x:[]) = x 
    fromDigits (x:xs) = x * 10^length xs + fromDigits xs

    padZeros :: [Int] -> [Int]
    padZeros x 
        | length x < 4 = padZeros $ x ++ [0]
        | otherwise = x

    unique :: [Int] -> [Int]
    unique [] = []
    unique (x:xs) = x : unique (filter (/= x) xs)

    -- sort ascending
    sort :: [Int] -> [Int]
    sort [] = []
    sort (x:xs) = 
        let small = sort $ filter (< x) xs
            bigg  = sort $ filter (>= x) xs
        in bigg ++ [x] ++ small

    kaprekar = 6174

    nIterations :: Int -> Int -> Int
    nIterations x n 
        | diff == kaprekar = n
        | otherwise = nIterations diff (n+1)
      where
        num1 = (padZeros . sort . toDigits) x
        num2 = (reverse . sort . toDigits) x
        diff = fromDigits num1 - fromDigits num2
        

