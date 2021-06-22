#!/usr/bin/env python3
##
## Given two strings, determine the edit distance between them. The edit distance is defined as the minimum number of edits (insertion, deletion, or substitution) needed to change one string to the other.
## 
## For example, "biting" and "sitting" have an edit distance of 2 (substitute b for s, and insert a t).
## 
## Here's the signature:
##

def distance(s1, s2):
    # Fill this in.
    m = len(s1)
    n = len(s2)

    # If first string is empty, the only option is to
    # insert all characters of second string into first
    if m == 0:
        return n
 
    # If second string is empty, the only option is to
    # remove all characters of first string
    if n == 0:
        return m
        
    # If last characters of two strings are same, nothing
    # much to do. Ignore last characters and get count for
    # remaining strings.
    if s1[m-1] == s2[n-1]:
        return distance(s1[:-1], s2[:-1])
 
    # If last characters are not same, consider all three
    # operations on last character of first string, recursively
    # compute minimum cost for all three operations and take
    # minimum of three values.
    return 1 + min(distance(s1, s2[:-1]),     # Insert
                   distance(s1[:-1], s2),     # Remove
                   distance(s1[:-1], s2[:-1]) # Replace
                   )

            
print(distance('biting', 'sitting'))
# 2

