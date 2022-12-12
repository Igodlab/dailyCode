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
    return list(map(lambda xi: xi**2, array))

array = [1, 2, 3, 4, 5, 6, 7, 8, 9]
