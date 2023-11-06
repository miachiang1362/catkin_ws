#!/usr/bin/env python3

from __future__ import print_function

import sys
import rospy
from test2.srv import *

def Multiply_client(x, y):
    rospy.wait_for_service('Multiply')
    try:
        Multiplys = rospy.ServiceProxy('Multiply', Multiply)
        resp1 = Multiplys(x, y)
        return resp1.MUL
    except rospy.ServiceException as e:
        print("Service call failed: %s"%e)

def usage():
    return "%s [x y]"%sys.argv[0]

if __name__ == "__main__":
    if len(sys.argv) == 3:
        x = float(sys.argv[1])
        y = float(sys.argv[2])
    else:
        print(usage())
        sys.exit(1)
    print("Requesting %s*%s"%(x, y))
    print("%s * %s = %s"%(x, y, Multiply_client(x, y)))