-- Given a binary tree, return all values given a certain height h.
-- 
-- Here's a starting point:
-- 

data Tree a = Empty | Node a (Tree a) (Tree a) deriving (Read, Show)

tree1 = Node 1 (Node 2 (Node 4 Empty Empty) (Node 5 Empty Empty)) (Node 3 Empty (Node 7 Empty Empty))
tree2 = Node 1 (Node 2 (Node 4 Empty Empty) (Node 5 Empty Empty)) (Node 3 Empty (Node 7 Empty Empty))

valuesAtHeight :: (Tree a) -> Int -> [a]
valuesAtHeight t 0 = t
valuesAtHeight t h =  
    Empty -> []
    (Node x left right) -> left
  where
    height = 

  -- Fill this in.

--     1
--    / \
--   2   3
--  / \   \
-- 4   5   7

-- [4, 5, 7]
