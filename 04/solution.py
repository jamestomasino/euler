#!/usr/bin/env python

a,b = 999,999
largest = 0

def is_palendrome(n):
    word = str(n)
    l = len(word)
    if l > 1:
        for i in range(l/2):
            if not(word[i] == word[l-(i+1)]):
                return False
        return True
    else:
        return False

while len(str(a)) >= 3:
    if is_palendrome(a*b):
        largest = max(largest,a*b)
    b = b-1
    if len(str(b)) < 3:
        a,b = a-1,a-1

print largest
