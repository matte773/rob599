#!/usr/bin/env python3

import rospy
from sensor_msgs.msg import LaserScan
from geometry_msgs.msg import Twist
import logging

class ObstacleAvoidanceNode:
    def __init__(self):
        rospy.init_node('scan_move_node', anonymous=True)
        rospy.Subscriber('mod_base_scan', LaserScan, self.laser_scan_callback)
        self.cmd_vel_pub = rospy.Publisher('cmd_vel', Twist, queue_size=10)
        self.closest_obstacle_distance = float(0)

    def laser_scan_callback(self, data):
        print("Closest Callback")
        self.closest_obstacle_distance = min(data.ranges)

    def run(self):
        rate = rospy.Rate(10)  # 10 Hz
        while not rospy.is_shutdown():
            twist_msg = Twist()
            if self.closest_obstacle_distance > 1.0:
            #if self.closest_obstacle_distance > 0.5:
                twist_msg.linear.x = 0.4 #min(0.5, self.closest_obstacle_distance - 1.0)
            else:
                twist_msg.linear.x = 0.0
            self.cmd_vel_pub.publish(twist_msg)
            rate.sleep()
            #logging.debug(f"Moving at {twist_msg.linear.x}")
            print(f"Closest Distance {self.closest_obstacle_distance}, moving at {twist_msg.linear.x}")

if __name__ == '__main__':
    try:
        obstacle_avoidance_node = ObstacleAvoidanceNode()
        obstacle_avoidance_node.run()
    except rospy.ROSInterruptException:
        pass
