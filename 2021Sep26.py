#!/usr/bin/env python3
# Kaprekar's Constant is the number 6174. This number is special because it has the property where for any 4-digit number that has 2 or more unique digits, if you repeatedly apply a certain function it always reaches the number 6174
#

import numpy as np

def nIterationsKaprekar(x, n=1):
    kaprekar = 6174
    xA = list(map(int, sorted(str(x))))               # ascending order
    xD = list(map(int, sorted(str(x), reverse=True))) # descending order
    
    xAsc  = sum([xA[i]*10**(len(xA)-1*(i+1)) for i in range(len(xA))])
    xPadd = np.pad(xD, (0, abs(4-len(xD))))
    xDesc = sum([xPadd[i]*10**(len(xPadd)-1*(i+1)) for i in range(len(xPadd))])

    assert len(str(x)) > 2, "number has to have more than two digits"
    assert len(np.unique(xA)) > 2, "number of unique digits must be greater than two"

    if (xDesc - xAsc == kaprekar):
        return n
    else:
       return nIterationsKaprekar(xDesc-xAsc, n+1)
        
print(nIterationsKaprekar(123))

