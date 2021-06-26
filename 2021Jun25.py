#!/usr/bin/env python3
## You are given a 2D array of characters, and a target string. Return whether or not the word target word exists in the matrix. Unlike a standard word search, the word must be either going left-to-right, or top-to-bottom in the matrix.
## 
## Example:
## 
## [['F', 'A', 'C', 'I'],
##  ['O', 'B', 'Q', 'P'],
##  ['A', 'N', 'O', 'B'],
##  ['M', 'A', 'S', 'S']]
## 
## Given this matrix, and the target word FOAM, you should return true, as it can be found going up-to-down in the first column.
## 
## Here's the function signature:

def word_search(matrix, word):
    # Fill this in.
    n = len(matrix)
    m = len(matrix[0])
    for j in range(m):
        col = []
        for i in range(n):
            col.append(matrix[i][j])
            if matrix[i] == list(word):
                return True
            if i == n-1 and col == list(word):
                return True
    return False
                

matrix = [
  ['F', 'A', 'C', 'I'],
  ['O', 'B', 'Q', 'P'],
  ['A', 'N', 'O', 'B'],
  ['M', 'A', 'S', 'S']]
print(word_search(matrix, 'FOAM'))
# True

