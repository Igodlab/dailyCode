#!/usr/bin/env python3
## You are given an array of integers. Return the largest product that can be made by multiplying any 3 integers in the array.
## 
## Example:
## 
## [-4, -4, 2, 8] should return 128 as the largest product can be made by multiplying -4 * -4 * 8 = 128.
## 
## Here's a starting point:
## 

def maximum_product_of_three(lst):
    # Fill this in.
    L = len(lst)
    assert L >= 3, "list has to contain at least three elements"
    
    Prod = [lst[i] * lst[j] * lst[k] for i in range(L) for j in range(L) for k in range(L) if (i != j) if (i != k) if (j != k)]
    Prod.sort(reverse=True)
    return Prod[0]

print(maximum_product_of_three([-4, -4, 2, 8]))
# 128
