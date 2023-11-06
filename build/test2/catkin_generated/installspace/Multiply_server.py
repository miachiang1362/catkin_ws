from __future__ import print_function

from test2.srv import Multiply,MultiplyResponse
import rospy

def  handle_Multiply(req):
    print("Returning [%s * %s = %s]"%(req.A, req.B, (req.A * req.B)))
    return MultiplyResponse(req.A * req.B)

def Multiply_server():
    rospy.init_node('Multiply_server')
    s = rospy.Service('Multiply', Multiply, handle_Multiply)
    print("Ready to multiply two ints.")
    rospy.spin()

if __name__ == "__main__":
    Multiply_server()