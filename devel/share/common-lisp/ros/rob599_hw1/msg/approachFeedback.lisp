; Auto-generated. Do not edit!


(cl:in-package rob599_hw1-msg)


;//! \htmlinclude approachFeedback.msg.html

(cl:defclass <approachFeedback> (roslisp-msg-protocol:ros-message)
  ((distance_to_obstacle
    :reader distance_to_obstacle
    :initarg :distance_to_obstacle
    :type cl:float
    :initform 0.0))
)

(cl:defclass approachFeedback (<approachFeedback>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <approachFeedback>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'approachFeedback)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name rob599_hw1-msg:<approachFeedback> is deprecated: use rob599_hw1-msg:approachFeedback instead.")))

(cl:ensure-generic-function 'distance_to_obstacle-val :lambda-list '(m))
(cl:defmethod distance_to_obstacle-val ((m <approachFeedback>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rob599_hw1-msg:distance_to_obstacle-val is deprecated.  Use rob599_hw1-msg:distance_to_obstacle instead.")
  (distance_to_obstacle m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <approachFeedback>) ostream)
  "Serializes a message object of type '<approachFeedback>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'distance_to_obstacle))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <approachFeedback>) istream)
  "Deserializes a message object of type '<approachFeedback>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'distance_to_obstacle) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<approachFeedback>)))
  "Returns string type for a message object of type '<approachFeedback>"
  "rob599_hw1/approachFeedback")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'approachFeedback)))
  "Returns string type for a message object of type 'approachFeedback"
  "rob599_hw1/approachFeedback")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<approachFeedback>)))
  "Returns md5sum for a message object of type '<approachFeedback>"
  "b0895f7086961063ab269c461c489df4")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'approachFeedback)))
  "Returns md5sum for a message object of type 'approachFeedback"
  "b0895f7086961063ab269c461c489df4")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<approachFeedback>)))
  "Returns full string definition for message of type '<approachFeedback>"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%float32 distance_to_obstacle~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'approachFeedback)))
  "Returns full string definition for message of type 'approachFeedback"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%float32 distance_to_obstacle~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <approachFeedback>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <approachFeedback>))
  "Converts a ROS message object to a list"
  (cl:list 'approachFeedback
    (cl:cons ':distance_to_obstacle (distance_to_obstacle msg))
))