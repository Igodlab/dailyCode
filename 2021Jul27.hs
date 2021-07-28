-- You are given the root of a binary tree. Find and return the largest subtree of that tree, which is a valid binary search tree.
-- 
-- Here's a starting point:
-- 
--
--     5
--    / \
--   6   7
--  /   / \
-- 2   4   9
--
-- result: 749

data Tree a = Empty | Node a (Tree a) (Tree a) deriving (Show, Read)

isBst :: (Ord a) => (Tree a) -> Bool
isBst Empty = True
isBst t = lft t && rgt t
  where
    lft (Node x left _) = case left of
        Empty         -> True
        (Node xs _ _) -> if x < xs then False else is_bst left
      
    rgt (Node x _ right) = case right of
        Empty         -> True
        (Node xs _ _) -> if x > xs then False else is_bst right


tree1 = Node 5 (Node 6 (Node 2 Empty Empty) Empty) (Node 7 (Node 4 Empty Empty) (Node 9 Empty Empty))


