#!/usr/bin/env python3
## Given a string, determine if there is a way to arrange the string such that the string is a palindrome. If such arrangement exists, return a palindrome (There could be many arrangements). Otherwise return None.
##
## Here's some starter code:
##

def find_palindrome(s):
    # Fill this in.
    if s == s[-1::-1]:
        return s
    else:
        return None

print(find_palindrome('momom'))
# momom
