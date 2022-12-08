-- You are given the root of a binary search tree. Return true if it is a valid binary search tree, and false otherwise. Recall that a binary search tree has the property that all values in the left subtree are less than or equal to the root, and all values in the right subtree are greater than or equal to the root.
-- 
-- Here's a starting point:
-- 

module IsBST 
    ( Tree (..)
    , is_bst
    ) where

data Tree a = Empty | Node a (Tree a) (Tree a) deriving (Show, Read)

-- create the Tree

tree1 = Node 5 (Node 3 (Node 1 Empty Empty) (Node 4 Empty Empty)) (Node 7 (Node 6 Empty Empty) Empty)
tree2 = Node 5 (Node 3 (Node 1 Empty (Node 0 Empty Empty)) (Node 4 Empty Empty)) (Node 7 (Node 6 Empty Empty) Empty)

is_bst :: (Ord a) => (Tree a) -> Bool
is_bst Empty = True
is_bst t = lft t && rgt t
  where
    lft (Node x left _) = case left of
        Empty         -> True
        (Node xs _ _) -> if x < xs then False else is_bst left
      
    rgt (Node x _ right) = case right of
        Empty         -> True
        (Node xs _ _) -> if x > xs then False else is_bst right


