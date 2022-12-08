## TechLead daily question Jun 12, 2021
##
## Given a list of numbers with only 3 unique numbers (1, 2, 3), sort the list in O(n) time
##
## Input: [3, 3, 2, 1, 3, 2, 1]
## Output: [1, 1, 2, 2, 3, 3, 3]

def sortNums(nums):
    assert(len(nums) >= 3)
    # Fill this in.
    sort = [nums[0]]
    for i in range(1,len(nums)):
        if nums[i] <= sort[0]:
            sort = [nums[i]] + sort
        else:
            slen = -1
            for ss in sort[::-1]:
                if nums[i] > ss:
                    sort = sort[:ss] + [nums[i]] + sort[ss:]
                    break
                slen -= 1
    return sort

print(sortNums([3, 3, 2, 1, 3, 2, 1]))
# [1, 1, 2, 2, 3, 3, 3]

