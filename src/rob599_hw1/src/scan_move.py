#!/usr/bin/env python3

import rospy
import actionlib
from sensor_msgs.msg import LaserScan
from geometry_msgs.msg import Twist
from rob599_hw1.srv import stopping_distance, stopping_distanceResponse
from rob599_hw1.msg import approachAction, approachFeedback, approachResult
from visualization_msgs.msg import Marker
from geometry_msgs.msg import Point
import logging

class ObstacleAvoidanceNode:
    def __init__(self):
        rospy.init_node('scan_move_node', anonymous=True)

        self.service_enabled = False

        self.server = actionlib.SimpleActionServer('approach', approachAction, self.execute, False)
        self.server.start()

        self.marker_pub = rospy.Publisher('wall_distance_marker', Marker, queue_size=10)
        self.text_marker_pub = rospy.Publisher('wall_distance_text_marker', Marker, queue_size=10)


        rospy.Subscriber('mod_base_scan', LaserScan, self.laser_scan_callback)
        self.cmd_vel_pub = rospy.Publisher('cmd_vel', Twist, queue_size=10)
        self.closest_obstacle_distance = float(0)
        self.stopping_distance = 100.0

        self.set_stopping_distance_service = rospy.Service('stopping_distance', stopping_distance, self.set_stopping_distance)

    def set_stopping_distance(self, req):
        # Check if the requested stopping distance is valid
        if req.input < 0.0:
            rospy.logwarn("Stopping distance must be a positive value.")
            return stopping_distanceResponse(False)
        else:
            if self.service_enabled:
                self.stopping_distance = req.input
                rospy.loginfo("Stopping distance set to {} meters.".format(self.stopping_distance))
                return stopping_distanceResponse(True)

    def laser_scan_callback(self, data):
        #print("Closest Callback")
        self.closest_obstacle_distance = min(data.ranges)
        # Publish visualization marker
        self.publish_marker(0)
        self.publish_marker(1)

    def publish_marker(self, marker_type):
        marker = Marker()
        marker.header.frame_id = "base_link"
        marker.type = Marker.ARROW
        marker.action = Marker.ADD
        marker.pose.orientation.w = 1.0
        marker.pose.orientation.x = 0.0
        marker.pose.orientation.y = 0.0
        marker.pose.orientation.z = 0.0
        marker.scale.x = 0.1  # Arrow width
        marker.scale.y = 0.2  # Arrow head width
        marker.scale.z = 0.2  # Arrow head height
        marker.color.a = 1.0
        marker.color.r = 1.0
        marker.color.g = 0.0
        marker.color.b = 0.0

        # Set marker position and orientation based on the closest obstacle distance
        marker.points.append(Point(0, 0, 0))  # Start point at base_link origin
        marker.points.append(Point(self.closest_obstacle_distance, 0, 0))  # End point at closest obstacle distance

        if marker_type == 1:
            # Add text displaying the distance above the marker
            marker.type = Marker.TEXT_VIEW_FACING
            #marker.text = "Distance: 1.5m"
            marker.text = "{:.2f} m".format(self.closest_obstacle_distance)
            marker.pose.position.x = (self.closest_obstacle_distance + 0.2) if (self.closest_obstacle_distance + 0.2) < 2 else 2
            marker.pose.position.y = 0.2
            marker.pose.position.z = 0.2

        if marker_type == 1:
            self.text_marker_pub.publish(marker)
        else:
            self.marker_pub.publish(marker)

    def execute(self, goal):
        rate = rospy.Rate(10)

        if not self.service_enabled:

            self.stopping_distance = goal.stopping_distance

        feedback = approachFeedback()
        result = approachResult()

        while not rospy.is_shutdown():
            # if self.server.is_preempt_requested():
            #     rospy.loginfo('Action preempted')
            #     self.server.set_preempted()
            #     #self.service_enabled = True
            #     return

            self.closest_obstacle_distance = feedback.distance_to_obstacle 
            self.server.publish_feedback(feedback)

            if self.closest_obstacle_distance <= goal.stopping_distance:
                result = approachResult()
                feedback.distance_to_obstacle = self.closest_obstacle_distance
                result.goal_reached = True
                rospy.loginfo('Reached stopping distance')
                self.server.set_succeeded(result)
                #self.service_enabled = True
                return

            rate.sleep()

    def run(self):
        rate = rospy.Rate(10)  # 10 Hz
        while not rospy.is_shutdown():
            twist_msg = Twist()
            if self.closest_obstacle_distance > self.stopping_distance:
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
