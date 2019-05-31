#!/usr/bin/env python
import sys
import cv2
import numpy as np

a = cv2.imread(sys.argv[1])
b = cv2.imread(sys.argv[2])
difference = cv2.subtract(a, b)    
result = not np.any(difference)
if result is True:
    print "Pictures are the same..."
else:
    cv2.imwrite("difference.png", difference)
    print "Pictures are different, the difference is stored as difference.png..."
