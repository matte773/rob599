#!/usr/bin/env python

import rospy
from sensor_msgs.msg import LaserScan

class ModScanNode:
    def __init__(self):
        rospy.init_node('mod_scan_node', anonymous=True)
        rospy.Subscriber('base_scan', LaserScan, self.original_laser_scan_callback)
        self.mod_scan_pub = rospy.Publisher('mod_base_scan', LaserScan, queue_size=10)

    def original_laser_scan_callback(self, og_msg):
        mod_msg = LaserScan()

        # Copying necessary parameters from og_msg
        mod_msg.header = og_msg.header
        mod_msg.angle_min = og_msg.angle_min
        mod_msg.angle_max = og_msg.angle_max
        mod_msg.angle_increment = og_msg.angle_increment
        mod_msg.time_increment = og_msg.time_increment
        mod_msg.scan_time = og_msg.scan_time
        mod_msg.range_min = og_msg.range_min
        mod_msg.range_max = og_msg.range_max

        # Define the angle range in front of the robot
        front_angle_min = -0.5  # Assuming the robot's width is 1m, so half on each side
        front_angle_max = 0.5

        # Calculate the indices corresponding to the front angle range
        start_index = int((front_angle_min - og_msg.angle_min) / og_msg.angle_increment)
        end_index = int((front_angle_max - og_msg.angle_min) / og_msg.angle_increment)

        # Update the ranges with only the front contact points
        mod_msg.ranges = og_msg.ranges[start_index:end_index+1]

        # Set other parameters
        mod_msg.header.stamp = rospy.Time.now()
        mod_msg.angle_min = front_angle_min
        mod_msg.angle_max = front_angle_max
        mod_msg.angle_increment = og_msg.angle_increment

        # Publish the modified LaserScan message containing only front contact points
        self.mod_scan_pub.publish(mod_msg)
        #print(f"Min Modified {min()}")

if __name__ == '__main__':
    try:
        front_laser_scan_node = ModScanNode()
        rospy.spin()
    except rospy.ROSInterruptException:
        pass
