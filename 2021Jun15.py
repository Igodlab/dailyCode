#!/usr/bin/env python3
## TechLead daily question Jun 12, 2021
##
## Given a list of numbers, where every number shows up twice except for one number, find that one number.
## Challenge: Find a way to do this using O(1) memory.
##
## Example:
## Input:  [4, 3, 2, 4, 1, 3, 2]
## Output: 1


def singleNumber(nums):
    # Fill this in.
    
    for i in range(len(nums)-1):
        x     = nums[i]
        is_k = sum(list(map((lambda j: j == x), nums)))
        if is_k == 1:
            return x
    return None

## this will be prettier recursively
def singleNumber_recursively(nums):
    # Fill this

    if len(nums) == 0:
        print(nums[-1])
        return None
    elif len(nums) == 1:
        return nums[0]
    else:
        x  = nums[0]
        xs = nums[1:]
        reduc = [i for i in xs if i != x]
        return singleNumber_recursively(reduc)

    
print(singleNumber([4, 3, 2, 4, 1, 3, 2]))
print(singleNumber_recursively([4, 3, 2, 4, 1, 3, 2]))


