-- Given two strings A and B of lowercase letters, return true if and only if we can swap two letters in A so that the result equals B.

-- Example 1:
-- Input: A = "ab", B = "ba"
-- Output: true
-- Example 2:

-- Input: A = "ab", B = "ab"
-- Output: false
-- Example 3:
-- Input: A = "aa", B = "aa"
-- Output: true
-- Example 4:
-- Input: A = "aaaaaaabc", B = "aaaaaaacb"
-- Output: true
-- Example 5:
-- Input: A = "", B = "aa"
-- Output: false
-- Here's a starting point:
--

buddyStrings :: (Eq a) => [a] -> [a] -> Bool
buddyStrings a b = do
    let swap2 = map (\x -> if fst x == snd x then 0 else 1) $ zip a b
    let check | foldl (\acc x -> acc+x) 0 swap2 <= 2 = True
              | otherwise                            = False
    check

a1 = "aaaaaaabc"
b1 = "aaaaaaacb"

a2 = "aaaaaabbc"
b2 = "aaaaaaacb"
