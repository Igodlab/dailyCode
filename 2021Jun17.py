#!/usr/bin/env python3
## Given a binary search tree, find the floor and the ceiling. If either does not exist, then print them as None.
## 
## Here is the definition of a node for the tree.
##

class Node:
    def __init__(self, val):
        self.val   = val
        self.left  = None
        self.right = None


def findFloor(root_node):
    if root_node == None:
        return float("inf")

    curr  = root_node.val
    currL = findFloor(root_node.left)
    currR = findFloor(root_node.right)

    if currL <= curr:
        curr = currL
    elif currR <= curr:
        curr = currR
    return curr

def findCeiling(root_node):
    if root_node == None:
        return float("-inf")

    curr  = root_node.val
    currL = findCeiling(root_node.left)
    currR = findCeiling(root_node.right)

    if currL > curr:
        curr = currL
    elif currR > curr:
        curr = currR
    return curr

## define tree
root       = Node(8) 
root.left  = Node(4) 
root.right = Node(12) 
  
root.left.left  = Node(2) 
root.left.right = Node(6) 
  
root.right.left  = Node(10) 
root.right.right = Node(14) 

## print results
print("Maximum value: ", findCeiling(root))
print("Minimum value: ", findFloor(root))
