## Sample Coding Problem from TechLead, the YouTuber's webpage (techseries)[https://www.techseries.dev/daily]
## Ok, this is a question asked by Google.
## Given two sorted linked lists, merge them in order

## Definition for a linked-list node.
class Node(object):
    def __init__(self, val, next=None):
        self.val = val
        self.next  = next

class Solution:
    def mergeTwoLists(self, a, b):
        ax = a
        bx = b
        l = []
        while (ax != None and bx != None):
            l.append(ax.val)
            l.append(bx.val)
            ax = ax.next
            bx = bx.next
        return l


## Test program
## 1 -> 3 -> 5
a = Node(5)
a.next = Node(1)
a.next.next = Node(3)

## 2 -> 4 -> 6
b = Node(2)
b.next = Node(6)
b.next.next = Node(4)

print(a.next.next.val)
print(b.val)
print()

c = Solution().mergeTwoLists(a, b)
print(c)

#while c:
#    print(c.val)
#    c = c.next
# 1 2 3 4 5 6 a
