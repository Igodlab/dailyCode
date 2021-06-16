#!/usr/bin/env python3
## Given a list of numbers, where every number shows up twice except for one number, find that one number.
## Challenge: Find a way to do this using O(1) memory.
##
## Example:
## Input:  [4, 3, 2, 4, 1, 3, 2]
## Output: 1

import time
import numpy as np
import matplotlib.pyplot as plt

def singleNumber(nums):
    # Fill this in.
    t0 = time.time()
    
    for i in range(len(nums)-1):
        k     = nums[i]
        is_k = sum(list(map((lambda x: x == k), nums)))
        if is_k == 0:
            kFound = k
            break
        else:
            kFound = None
    tf = time.time()

    return (kFound, tf-t0, len(nums))

SpaceComplexity = np.zeros((100, 2))

j = 0
for i in range(4,104):
    rList                = np.random.choice(range(0,50), size=i)
    _, xt, xm            = singleNumber(rList)
    SpaceComplexity[j,:] = [xt, xm]
    j += 1



plt.plot(SpaceComplexity[:,1], SpaceComplexity[:,0], label="SpaceComplexity")
plt.xlabel("memory")
plt.ylabel("time of computation")
#plt.show()

print(singleNumber([3, 4, 2, 1, 1, 3, 2, 4])[0])


