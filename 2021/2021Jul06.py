#!/usr/bin/env python3
## You are given a 2D array of integers. Print out the clockwise spiral traversal of the matrix.
## 
## Example:
## 
## grid = [[1,  2,  3,  4,  5],
##         [6,  7,  8,  9,  10],
##         [11, 12, 13, 14, 15],
##         [16, 17, 18, 19, 20]]
## 
## The clockwise spiral traversal of this array is:
## 
## 1, 2, 3, 4, 5, 10, 15, 20, 19, 18, 17, 16, 11, 6, 7, 8, 9, 14, 13, 12
##

def matrix_spiral_print(M, acc=[]):
    # Fill this in.
    if M == []:
        return acc    
    acc += M[0][:] + [M[i][-1] for i in range(1,len(M)-1)] + M[-1][::-1] + [M[i][0] for i in range(len(M)-2, 0, -1)]
    Mreduced = [M[i][1:-1] for i in range(1, len(M)-1)]
    return matrix_spiral_print(Mreduced, acc)

grid = [[1,  2,  3,  4,  5],
        [6,  7,  8,  9,  10],
        [11, 12, 13, 14, 15],
        [16, 17, 18, 19, 20]]

print(matrix_spiral_print(grid))
# 1 2 3 4 5 10 15 20 19 18 17 16 11 6 7 8 9 14 13 12
