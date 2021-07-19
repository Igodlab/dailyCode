#!/usr/bin/env python3
## You are given the root of a binary search tree. Return true if it is a valid binary search tree, and false otherwise. Recall that a binary search tree has the property that all values in the left subtree are less than or equal to the root, and all values in the right subtree are greater than or equal to the root.
## 
## Here's a starting point:
## 

class TreeNode:
    def __init__(self, key):
        self.left = None
        self.right = None
        self.key = key

def left_bst(root):
    if (root.left == None):# or (root.right == None):
        return True

    if (root.key < root.left.key):# or (root.key > root.right.key):
        return False
    else:
        return is_bst(root.left)
        

def right_bst(root):
    if (root.right == None):# or (root.right == None):
        return True

    if (root.key > root.right.key):
        return False
    else:
        return is_bst(root.right)

def is_bst(root):
    # Fill this in.
    if (left_bst(root) == True) & (right_bst(root) == True):
        return True
    else:
        return False

a = TreeNode(5)
a.left = TreeNode(3)
a.right = TreeNode(7)
a.left.left = TreeNode(1)
a.left.right = TreeNode(4)
a.right.left = TreeNode(6)

print(is_bst(a))

#    5
#   / \
#  3   7
# / \ /
#1  4 6
