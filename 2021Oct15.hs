-- Given a string, determine if there is a way to arrange the string such that the string is a palindrome. If such arrangement exists, return a palindrome (There could be many arrangements). Otherwise return None.
-- 
-- Here's some starter code:
-- 
findPalindrome :: (Eq a) => [a] -> Maybe [a]
findPalindrome [] = Nothing
findPalindrome xs = case (length xs) `mod` 2 of
    1 | (take half xs) == (reverse $ drop (1+half) xs) -> Just $ take half xs
      | otherwise -> Nothing
    0 | (take half xs) == (reverse $ drop half xs) -> Just $ take half xs 
      | otherwise -> Nothing
  where 
    half = length xs `div` 2

