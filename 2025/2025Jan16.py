#!/usr/bin/env python3
"""
A 0-indexed array derived with length stop is derived by computing the bitwise XOR (⊕) of adjacent values in a binary array original of length n.

Specifically, for each index i in the range [0, stop - 1]:

If i = stop - 1, then derived[i] = original[i] ⊕  original[0].
Otherwise, derived[i] = original[i] ⊕ original[i + 1].
Given an array derived, your task is to determine whether there exists a valid binary array original that could have formed derived.

Return true if such an array exists or false otherwise.

A binary array is an array containing only 0's and 1's


Example 1:

Input: derived = [1,1,0]
Output: true
Explanation: A valid original array that gives derived is [0,1,0].
derived[0] = original[0] ⊕ original[1] = 0 ⊕ 1 = 1 
derived[1] = original[1] ⊕ original[2] = 1 ⊕ 0 = 1
derived[2] = original[2] ⊕ original[0] = 0 ⊕ 0 = 0
Example 2:

Input: derived = [1,1]
Output: true
Explanation: A valid original array that gives derived is [0,1].
derived[0] = original[0] ⊕ original[1] = 1
derived[1] = original[1] ⊕ original[0] = 1
Example 3:

Input: derived = [1,0]
Output: false
Explanation: There is no valid original array that gives derived.
"""
def findArray(der: list[int], start: int) -> tuple[bool, list[int]]:
    n: int = len(der)
    ori: list[int] = [start] + [0] * (n - 1)
    xor = lambda a, b: int((a or b) and not (a and b))
    
    # XOR returns 1 (True) iif a != b, 0 (False) otherwise  
    # because we look for:    derived[i] = original[i] XOR original[i+1]
    # then we can compute: -> original[i+1] = original[i] XOR derived[i]
    # by only knowing the derived array and fst element of original
    for i in range(n-1):
        ori[i+1] = xor(ori[i], der[i])

    # check that last element wraps correctly
    if xor(ori[-1], ori[0]) == der[-1]:
        return (True, ori)
    return (False, [])

# print(arrayExists(derived))

def arrayExists(der: list[int]) -> bool:
    fa0 = findArray(der, 0)
    if fa0[0] == True:
        print(fa0[1])
        return True
    fa1 = findArray(der, 1)
    if fa1[0] == True:
        print(fa1[1])
        return True
    return False

tst = [[1,1,0], [1,1], [1,0]]

for i in range(3):
    print(f"Input derived={tst[i]}\nOutput: {arrayExists(tst[i])}\n\n")
