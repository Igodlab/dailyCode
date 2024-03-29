-- Chapter 1
--
import Data.Char (ord, chr)
--
-- 1.1) Is Unique: Implement an algorithm to determine if a string has all unique characters. What if you cannot use additional data structures?
-- 

allUnique :: [Char] -> Bool
allUnique [] = True
allUnique xs =
    let allAscii = map chr [0..127]
        aux = replicate (length allAscii) False
    in not $ all (== True) $ checkUnique xs aux 
  where
    checkUnique :: [Char] -> [Bool] -> [Bool]
    checkUnique [] aux = aux
    checkUnique _ [] = []
    checkUnique (x:xs) aux 
        | aux !! ord x == False = checkUnique xs (changeBool (ord x) aux) 
        | otherwise             = replicate (length aux) True

    changeBool :: Int -> [Bool] -> [Bool]
    changeBool _ [] = []
    changeBool n aux 
        | n >= length aux = init aux ++ [True] 
        | n <= 0          = [True] ++ tail aux
        | otherwise       = take n aux ++ [True] ++ drop (n+1) aux

-- 1.2) Check Permutation: Given two strings, write a method to decide if one is a permutation of the other. Hints: #7, #84, #722, #737
-- 
checkPermutation :: (Eq a) => [a] -> [a] -> Bool
checkPermutation [] = True
checkPermutation xss@(x:xs) = case length xss `div` 2 of
    0 -> 
    

-- 1.3) URLify: Write a method to replace all spaces in a string with '%20'. You may assume that the string has sufficient space at the end to hold the additional characters, and that you are given the "true" length of the string. (Note: If implementing in Java, please use a character array so that you can perform this operation in place.) EXAMPLE ", 13 Input: "Mr John Smith  Output: "Mr%20John%20Smith" Hints: #53, -- 118
-- 



-- 1.4) Palindrome Permutation: Given a string, write a function to check if it is a permutation of a palindrome. A palindrome is a word or phrase that is the same forwards and backwards. A permutation is a rearrangement of letters. The palindrome does not need to be limited to just dictionary words. EXAMPLE Input: Tact Coa Output: True (permutations: "taco cat", "atco eta", etc.) Hints: #106, #121, #134, #136 
-- 



-- 1.5) One Away: There are three types of edits that can be performed on strings: insert a character, remove a character, or replace a character. Given two strings, write a function to check if they are one edit (or zero edits) away. EXAMPLE Hints:#23, #97, #130
-- pale, ple   -> true
-- pales, pale -> true
-- pale, bale  -> true
-- pale, bake  -> false
-- 



-- 1.6) String Compression: Implement a method to perform basic string compression using the counts of repeated characters. For example, the string aabcccccaaa would become a2blc5a3. If the "compressed" string would not become smaller than the original string, your method should return the original string. You can assume the string has only uppercase and lowercase letters (a - z). Hints:#92, #110
-- 



-- 1.7) Rotate Matrix: Given an image represented by an NxN matrix, where each pixel in the image is 4 bytes, write a method to rotate the image by 90 degrees. Can you do this in place? Hints: #51, -- 100
-- 



-- 1.8) Zero Matrix: Write an algorithm such that if an element in an MxN matrix is 0, its entire row and column are set to 0. Hints:#17, #74, #702
-- 



-- 1.9) String Rotation:Assumeyou have a method isSubstringwhich checks if one word is a substring  of another. Given two strings, sl and s2, write code to check if s2 is a rotation of sl using only one call to isSubstring (e.g., "waterbottle" is a rotation of"erbottlewat"). Hints: #34, #88, -- 7 04 
-- 



