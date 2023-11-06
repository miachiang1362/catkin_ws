import rospy
from std_msgs.msg import String
import sys

def speak():
    pub = rospy.Publisher('name', String, queue_size=10)
    rospy.init_node('speak', anonymous=True)
    rate = rospy.Rate(1) # 10hz
    name = sys.argv[1]
    while not rospy.is_shutdown():
        hello_str = "hello world %s %s" %(name ,  rospy.get_time())
        rospy.loginfo(hello_str)
        pub.publish(hello_str)
        rate.sleep()

if __name__ == '__main__':
    try:
        speak()
    except rospy.ROSInterruptException:
        pass
