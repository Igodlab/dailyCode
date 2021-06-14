## TechLead daily question Jun 12, 2021
##
##  You are given a list of numbers, and a target number k. Return whether or not there are two numbers in the list that add up to k.
##
## Example:
## Given [4, 7, 1 , -3, 2] and k = 5,
## return true since 4 + 1 = 5.

def two_sum(List, k):
    # Fill this in.
    assert(len(List) >= 2)
    current = List[0]
    strt = 1
    i = 0
    while strt < len(List):
        i += 1
        if current+List[i] == k:
            return True
            break
        elif i == len(List)-1:
            strt += 1
            i = strt -1
            current = List[i]
    return False

print(two_sum([4,7,2,6,-1], 5))
# True
