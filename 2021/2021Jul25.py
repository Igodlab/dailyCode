#!/usr/bin/env python3
## Given a list of words, and an arbitrary alphabetical order, verify that the words are in order of the alphabetical order.
## 
## Example:
## Input:
## words = ["abcd", "efgh"], order="zyxwvutsrqponmlkjihgfedcba"
## 
## Output: False
## Explanation: 'e' comes before 'a' so 'efgh' should come before 'abcd'
## 
## Example 2:
## Input:  words = ["zyx", "zyxw", "zyxwy"],
##         order="zyxwvutsrqponmlkjihgfedcba"
## 
## Output: True
## Explanation: The words are in increasing alphabetical order
## 
## Here's a starting point:
## 

def isSorted(words, order):
    # Fill this in.


print(isSorted(["abcd", "efgh"], "zyxwvutsrqponmlkjihgfedcba"))
# False
print(isSorted(["zyx", "zyxw", "zyxwy"],
               "zyxwvutsrqponmlkjihgfedcba"))
# True

