#!/usr/bin/env python3
# Given a list of building in the form of (left, right, height), return what the skyline should look like. The skyline should be in the form of a list of (x-axis, height), where x-axis is the next point where there is a change in height starting from 0, and height is the new height starting from the x-axis.
# 
# in:  [(2, 8, 3), (4, 6, 5)]
#
# out: [(2, 3), (4, 5), (7, 3), (9, 0)]
#
#            2 2 2
#            2 2 2
#        1 1 2 2 2 1 1
#        1 1 2 2 2 1 1
#        1 1 2 2 2 1 1
# pos: 1 2 3 4 5 6 7 8 9

def generate_skyline(buildings):
    larg = max([b[1] for b in buildings])
    lines = [0] * (larg+1)

    for b in buildings:
        for i in range(b[0]-1, b[1]):
            lines[i] = max(lines[i], b[2])
    
    profile = [(0,0)]
    p = 0
    for i in range(len(lines)):
        if lines[i] != profile[p][1]:
            profile.append((i+1, lines[i]))
            p += 1

    return profile[1:]


print(generate_skyline([(2, 8, 3), (4, 6, 5)]))
# [(2, 3), (4, 5), (7, 3), (9, 0)]
