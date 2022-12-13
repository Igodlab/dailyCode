#!/usr/bin/env python3
# Write a function that takes an integer and returns the nth Fibonacci number
# F_n = F_{n-1} + F_{n-2}

def getNthFib(n):
    # Write your code here.
    if n == 1: # Since the number in the sequence (n-th != n) to the F_n 
        return 0
    elif n == 2:
        return 1
    else:
        return getNthFib(n-1) + getNthFib(n-2)

