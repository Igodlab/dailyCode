-- Given a list of numbers, find if there exists a pythagorean triplet in that list. A pythagorean triplet is 3 variables a, b, c where a2 + b2 = c2
--
-- Example:
-- Input: [3, 5, 12, 5, 13]
-- Output: True
-- Here, 5^2 + 12^2 = 13^2
--

findPythagoreanTriplets :: (Num a, Eq a) => [a] -> Bool
findPythagoreanTriplets x = 
    let sqList = map (^2) x
        sqPairs x = case x of
            []       -> []
            (x:y:[]) -> x^2 + y^2:sqPairs []
            (x:y:xs) -> x^2 + y^2:sqPairs (y:xs)
    in True `elem` [sl `elem` (sqPairs x) | sl <- sqList]
