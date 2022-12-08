#!/usr/bin/env python3
# Abridged Problem Description:
# Let (x, y) be the coordinates of a student’s house on a 2D plane. There are 2N students and we want to pair them into N groups. Let $d_i$ be the distance between the houses of 2 students in group i. Form N groups such that $cost = \sum_{i=1}^N d_i$ is minimized.
#
# Output the minimum cost. Constraints: 1 ≤ N ≤ 8 and 0 ≤ x, y ≤ 1000.
#
# Sample input:
# N = 2; Coordinates of the 2N = 4 houses are {1, 1}, {8, 6}, {6, 8}, and {1, 3}.
# Sample output:
# cost = 4.83.
#
import numpy as np
from math import floor

x0 = [1, 8, 6, 1]
y0 = [1, 6, 8, 3]

xy0 = list(zip(x0, y0))

def lossFunction(z1, z2):
    # we'll use Euclidean distance
    d = np.sqrt((z1[0] - z2[0])**2 + (z1[1] - z2[1])**2)
    return d

def costFunction(z):
    cost = []
    assert len(z) % 2 == 0, "we need an even number of pairs/houses"
    N = floor(len(z) / 2)

    for i in range(0,N,2):
        ci = []
        for j in range(1,N,2):
            ci.append(lossFunction(z[i], z[j]))
        cost.append(ci)
    return cost

