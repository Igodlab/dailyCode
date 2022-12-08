#!/usr/bin/env python3

# Write a function that takes in a non-empty array of distinct integers and an integer representing a target sum. If any two numbers in the input array sum up to the target sum, the function should return them in an array, in order. If not two numbers sum up to the target sum, the function should return an empty array.
#
# Note that the target sum has to be obtained by summing two different integers in the array; you can't add a single integer to itself in order to obtain the target sum.
# 
# You can assume that there will be at most one pair of numbers summing up to the target sum.
#

def twoNumberSum(array, targetSum):
    # Write your code here.
    #assert len(array) >= 2, "Array must contain at least two elements"
    ans = []
    for i in range(len(array)-1):
        x0 = array[i]
        xs = array[i+1:]
        for j in range(len(xs)):
            if x0 + xs[j] == targetSum:
                ans = [x0, xs[j]]
                break
    return ans

print(twoNumberSum([3, 5, -4, 8, 11, 1, -1, 6], 10))
