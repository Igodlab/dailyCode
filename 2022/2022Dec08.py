#!/usr/bin/env python3

#
# You're given three nodes that are contained in the same Binary Search Tree: `nodeOne`, `nodeTwo` and `nodeThree`.
# Wite a function that returns a boolean representing whether one of `nodeOne` or `nodeThree` is an ancestor of `nodeTwo`, then it needs to see if `nodeThree` is a descendant of `nodeTwo`. If your function determines that `nodeThree` is an ancestor, then it needs to see if `nodeOne` is a descendant.
# A **descendant** of a node N is defined as a node contained in the tree rooted at N. A node N is an ancestor of another node M if M is a descendant of N.
# It is not guaranteed that nodeOne or nodeThree will be ancestors or descendants of nodeTwo, but it is guaranteed that all three nodes will be unique and will never be None / null. In other, words you'll be given valid input nodes.
# Each BST node has an integer value, a left child node, and a right child node. A node is said to be a valid BST node if and only if satisfies the BST property: its value is strictly greater than the values of every node to its left; its value is less than or equal to the values of every node to its right; and its childeron nodes are either valid BST nodes themselves or None / null.
#
# 
# remeber that in a BST: i)  nodeTwo <= nodeOne
#                        ii) nodeThree >= nodeOne
#
# eg: we're looking for either:
#
#           nodeOne   |          nodeThree
#            /   \    |           /   \   
#      nodeTwo   ...  |     nodeTwo   ...
#          /          |         /        
#    nodeThree        |   nodeOne       
#
# try this test-example:
#
#        5
#      /   \
#     2     7
#    / \   / \ 
#   1   4 6   8
#  /   /   
# 0   3


# This is an input class. Do not edit.
class BST:
    def __init__(self, value, left=None, right=None):
        self.value = value
        self.left = left
        self.right = right


def validateThreeNodes(nodeOne, nodeTwo, nodeThree):
    # check if nodeThree is an ancestor of nodeTwo
    if isAncestor(nodeTwo, nodeOne):
        return isAncestor(nodeThree, nodeTwo)
    elif isAncestor(nodeTwo, nodeThree):
        return isAncestor(nodeOne, nodeTwo)
    return False

def isAncestor(node, nodeTarget):
    if (node == None):
        return False
    elif (node == nodeTarget):
        return True
    elif (node.value > nodeTarget.value): 
        return isAncestor(node.left, nodeTarget) 
    elif (node.value < nodeTarget.value):
        return isAncestor(node.right, nodeTarget)

