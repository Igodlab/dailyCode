#!/usr/bin/env python3

## Given a list, find the k-th largest element in the list.
## Input: list = [3, 5, 2, 4, 6, 8], k = 3
## Output: 4
##

def findKthLargest(nums, k):
    # Fill this in.
    assert len(nums) > k, "k can't be larger than the length of the input list"
    assert k >= 0, "k can't be negative"
    assert nums != []
    nums.sort(reverse=True)
    return nums[k]

print(findKthLargest([3, 5, 2, 4, 6, 8], 0))
# 5
