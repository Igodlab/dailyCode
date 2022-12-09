module Dec08 where

--
-- You're given three nodes that are contained in the same Binary Search Tree: `nodeOne`, `nodeTwo` and `nodeThree`.
-- Wite a function that returns a boolean representing whether one of `nodeOne` or `nodeThree` is an ancestor of `nodeTwo`, then it needs to see if `nodeThree` is a descendant of `nodeTwo`. If your function determines that `nodeThree` is an ancestor, then it needs to see if `nodeOne` is a descendant.
-- A **descendant** of a node N is defined as a node contained in the tree rooted at N. A node N is an ancestor of another node M if M is a descendant of N.
-- It is not guaranteed that nodeOne or nodeThree will be ancestors or descendants of nodeTwo, but it is guaranteed that all three nodes will be unique and will never be None / null. In other, words you'll be given valid input nodes.
-- Each BST node has an integer value, a left child node, and a right child node. A node is said to be a valid BST node if and only if satisfies the BST property: its value is strictly greater than the values of every node to its left; its value is less than or equal to the values of every node to its right; and its childeron nodes are either valid BST nodes themselves or None / null.
--
-- 
-- remeber that in a BST: i)  nodeTwo <= nodeOne
--                        ii) nodeThree >= nodeOne
--
-- eg: we're looking for either:
--
--           nodeOne   |          nodeThree
--            /   \    |           /   \   
--      nodeTwo   ...  |     nodeTwo   ...
--          /          |         /        
--    nodeThree        |   nodeOne       
--
-- try this test-example:
--
--        5
--      /   \
--     2     7
--    / \   / \ 
--   1   4 6   8
--  /   /   
-- 0   3
--

data BST a = Empty | Node a (BST a) (BST a) deriving (Show, Eq)

validateThreeNodes :: BST Int -> BST Int -> BST Int -> Bool
validateThreeNodes n1 n2 n3 
    | isAncestor n2 n1 = isAncestor n3 n2
    | isAncestor n2 n3 = isAncestor n1 n2
    | otherwise        = False

isAncestor :: BST Int -> BST Int -> Bool 
isAncestor (Empty) _ = False
isAncestor node@(Node n l r) targ@(Node n' l' r') 
    | node == targ = True
    | n > n'       = isAncestor l targ
    | otherwise    = isAncestor r targ
