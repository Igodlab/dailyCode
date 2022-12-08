-- prob 01: check if binary tree is binary search
data Tree a = Empty | Node a (Tree a) (Tree a) deriving (Show, Read)

-- create tree 
treeInsert :: (Ord a) => a -> Tree a -> Tree a
treeInsert x Empty = Node x Empty Empty
treeInsert x (Node y lft rgt)
    | x == y = Node x lft rgt
    | x > y  = Node y lft (treeInsert x rgt)
    | x < y  = Node y (treeInsert x lft) rgt

isBST :: (Ord a) => Tree a -> Bool 
isBST Empty = True 
isBST t = lft t && rgt t
  where
    lft (Node x0 l _) = case l of
                            Empty         -> True 
                            (Node x1 _ _) -> if x0 < x1 then False else isBST l
    rgt (Node x0 _ r) = case r of
                            Empty         -> True 
                            (Node x1 _ _) -> if x0 > x1 then False else isBST r
   
-- prob 02: 
getBonuses :: [Int] -> [Int]
getBonuses xs = 
    let xRight = zipWith (\m n -> if m > n then 1 else 0) xs (tail xs ++ [maxBound :: Int])
        xLeft  = zipWith (\m n -> if m > n then 1 else 0) xs ([maxBound :: Int] ++ init xs)
        ones   = replicate (length xs) 1
    in zipWith (+) ones $ zipWith (+) xLeft xRight

-- prob 03: invert binary tree
invertTree :: Tree a -> Tree a
invertTree Empty = Empty
invertTree t = case t of
    (Node x Empty rgt) -> invertTree (Node x rgt Empty)
    (Node x lft Empty) -> invertTree (Node x Empty lft)
    (Node x lft rgt)   -> invertTree (Node x rgt lft)
