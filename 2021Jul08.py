#!/usr/bin/env python3
## You are given an array of intervals - that is, an array of tuples (start, end). The array may not be sorted, and could contain overlapping intervals. Return another array where the overlapping intervals are merged.
##
## For example:
## [(1, 3), (5, 8), (4, 10), (20, 25)]
##
## This input should return [(1, 3), (4, 10), (20, 25)] since (5, 8) and (4, 10) can be merged into (4, 10).
##
## Here's a starting point:
##

def merge(intervals):
    # Fill this in.
    newIntvl = []
    for i in intervals :
        bools = [True for k in intervals if k[0] <= i[0] or k[1] > i[1]]
        if sum(bools) == len(intervals):
            newIntvl.append(i)
    return newIntvl


  
print(merge([(1, 3), (5, 8), (4, 10), (20, 25)]))
# [(1, 3), (4, 10), (20, 25)]
