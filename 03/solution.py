#!/usr/bin/env python

import math

num=600851475143
work=int(math.ceil(math.sqrt(num)))
x=1
while x < work and x < int(math.ceil(math.sqrt(num))):
    x += 1
    if all(x % y != 0 for y in range(2, int(math.ceil(math.sqrt(x))))):
        if (num % x == 0):
            print x
            work = num / x
            print "new search: " + str(work)
