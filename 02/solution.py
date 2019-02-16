#!/usr/bin/env python

a,b=1,1
acc=0
while b < 4000000:
    a,b=b,a+b
    if (b%2==0):
        acc+=b
print acc
