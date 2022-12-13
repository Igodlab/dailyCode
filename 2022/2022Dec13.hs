module NthFibonacci where

-- Write a function that takes an integer and returns the nth Fibonacci number
-- F_n = F_{n-1} + F_{n-2}

getNthFib :: Int -> Int
getNthFib 1 = 1 -- Since the number in the sequence (n-th != n) to the F_n 
getNthFib 2 = 2
getNthFib n = getNthFib (n - 1) + getNthFib (n -2)
