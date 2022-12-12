#!/usr/bin/env python3

# Sorted Squared Array
# --------------------
# Write a function that takes in a non-empty array of integers that are sorted in ascending order and returns a new arry of the same length with the squares of the original integers also sorted in ascending oreder.
#
# Sample input:
# >>> array = [1, 2, 3, 4, 5, 6, 7, 8, 9]
# [1, 4, 9, 25, 36, 64, 81]

def sortedSquaredArray(array):
    # Write your code here
    sqrd = list(map(lambda xi: xi**2, array))
    return mergeSortArray(sqrd)

def mergeSortArray(array):
    if len(array) <= 1:
        return array
    else:
        half = len(array) // 2
        x = array[:half]
        y = array[half:]
        return merge(mergeSortArray(x), mergeSortArray(y))

def merge(x, y):
    if len(x) == 0:
        return y
    elif len(y) == 0:
        return x
        
    x0 = x[0]
    xs = x[1:]
    y0 = y[0]
    ys = y[1:]
    
    if x0 >= y0:
        return [y0] + merge(x, ys)
    else:
        return [x0] + merge(xs, y)
        
array = [1, 2, 3, 4, 5, 6, 7, 8, 9]
