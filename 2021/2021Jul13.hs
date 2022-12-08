-- Given a sorted list of numbers, change it into a balanced binary search tree. You can assume there will be no duplicate numbers in the list.

data Tree a = Empty | Node a (Tree a) (Tree a) deriving (Show, Eq)

createBalancedBS :: [a] -> Tree a
createBalancedBS [] = Empty
createBalancedBS x = Node (x !! half) (createBalancedBS $ take half x) (createBalancedBS $ drop (half + 1) x)
        where 
            len = length x
            half = len `div` 2
            height = floor $ logBase 2 (fromIntegral len)

ll =  [1, 2, 3, 4, 5, 6, 7]

-- # 4261357
-- #   4
-- #  / \
-- # 2   6
-- #/ \ / \
-- #1 3 5 7

