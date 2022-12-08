#!/usr/bin/env python3
##
## Given a list of numbers, find if there exists a pythagorean triplet in that list. A pythagorean triplet is 3 variables a, b, c where a2 + b2 = c2
##
## Example:
## Input: [3, 5, 12, 5, 13]
## Output: True
## Here, 5^2 + 12^2 = 13^2
##

def findPythagoreanTriplets(nums):
    # Fill this in.
    pyt = [(nums[i], nums[i+1], nums[i+2]) for i in range(len(nums)-2) if (nums[i]**2+nums[i+1]**2 == nums[i+2]**2) or (nums[i+1]**2+nums[i+2]**2 == nums[i]**2) or (nums[i+2]**2+nums[i]**2 == nums[i+1]**2)]
    return (len(pyt) != 0)


print(findPythagoreanTriplets([3,6,12,5,13]))
# True

