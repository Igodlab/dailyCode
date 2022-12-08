#!/usr/bin/env python3
## Given a 2-dimensional grid consisting of 1's (land blocks) and 0's (water blocks), count the number of islands present in the grid. The definition of an island is as follows:
##
## 1.) Must be surrounded by water blocks.
## 2.) Consists of land blocks (1's) connected to adjacent land blocks (either vertically or horizontally).
## Assume all edges outside of the grid are water.
## 
## Example:
## Input: 
## 10001
## 11000
## 10110
## 00000
##
## Output: 3
## Here's your starting point:
##

# Program to count islands in boolean 2D matrix
class Graph:
    def __init__(self, row, col, graph):
        self.ROW = row
        self.COL = col
        self.graph = graph

    # A utility function to do DFS for a 2D
    # boolean matrix. It only considers
    # the 8 neighbours as adjacent vertices
    def DFS(self, i, j):
        if i < 0 or i >= len(self.graph) or j < 0 or j >= len(self.graph[0]) or self.graph[i][j] != 1:
                return

        # mark it as visited
        self.graph[i][j] = -1

        # Recur for 8 neighbours
        self.DFS(i - 1, j - 1)
        self.DFS(i - 1, j)
        self.DFS(i - 1, j + 1)
        self.DFS(i, j - 1)
        self.DFS(i, j + 1)
        self.DFS(i + 1, j - 1)
        self.DFS(i + 1, j)
        self.DFS(i + 1, j + 1)

    # The main function that returns
    # count of islands in a given boolean
    # 2D matrix
    def countIslands(self):
        # Initialize count as 0 and traverse
        # through the all cells of
        # given matrix
        count = 0
        for i in range(self.ROW):
            for j in range(self.COL):
                # If a cell with value 1 is not visited yet,
                # then new island found
                if self.graph[i][j] == 1:
                    # Visit all cells in this island
                    # and increment island count
                    self.DFS(i, j)
                    count += 1
        return count

# ans for grid1: 5
grid1 = [[1, 1, 0, 0, 0],
	 [0, 1, 0, 0, 1],
	 [1, 0, 0, 1, 1],
	 [0, 0, 0, 0, 0],
	 [1, 0, 1, 0, 1]]

# ans for grid2: 3
grid2 = [[1, 1, 0, 0, 0],
         [0, 1, 0, 0, 1],
         [1, 0, 0, 1, 1],
         [0, 0, 0, 0, 0]]

# ans for grid3: 3
grid3 = [[1,0,0,0,1],
         [1,1,0,0,0],
         [1,0,0,0,0],
         [0,0,0,0,0]]


row = len(graph)
col = len(graph[0])

g1 = Graph(len(grid1), len(grid1), grid1)
g2 = Graph(len(grid2), len(grid2), grid2)
g3 = Graph(len(grid3), len(grid3), grid3)

print("N islands for grid 1:", g1.countIslands())
print("N islands for grid 2:", g2.countIslands())
print("N islands for grid 3:", g3.countIslands())
