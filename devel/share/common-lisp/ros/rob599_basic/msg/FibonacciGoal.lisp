; Auto-generated. Do not edit!


(cl:in-package rob599_basic-msg)


;//! \htmlinclude FibonacciGoal.msg.html

(cl:defclass <FibonacciGoal> (roslisp-msg-protocol:ros-message)
  ((number
    :reader number
    :initarg :number
    :type cl:integer
    :initform 0))
)

(cl:defclass FibonacciGoal (<FibonacciGoal>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <FibonacciGoal>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'FibonacciGoal)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name rob599_basic-msg:<FibonacciGoal> is deprecated: use rob599_basic-msg:FibonacciGoal instead.")))

(cl:ensure-generic-function 'number-val :lambda-list '(m))
(cl:defmethod number-val ((m <FibonacciGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rob599_basic-msg:number-val is deprecated.  Use rob599_basic-msg:number instead.")
  (number m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <FibonacciGoal>) ostream)
  "Serializes a message object of type '<FibonacciGoal>"
  (cl:let* ((signed (cl:slot-value msg 'number)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 18446744073709551616) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <FibonacciGoal>) istream)
  "Deserializes a message object of type '<FibonacciGoal>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'number) (cl:if (cl:< unsigned 9223372036854775808) unsigned (cl:- unsigned 18446744073709551616))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<FibonacciGoal>)))
  "Returns string type for a message object of type '<FibonacciGoal>"
  "rob599_basic/FibonacciGoal")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'FibonacciGoal)))
  "Returns string type for a message object of type 'FibonacciGoal"
  "rob599_basic/FibonacciGoal")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<FibonacciGoal>)))
  "Returns md5sum for a message object of type '<FibonacciGoal>"
  "2a1b249ff0900a6eb941a743f359017a")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'FibonacciGoal)))
  "Returns md5sum for a message object of type 'FibonacciGoal"
  "2a1b249ff0900a6eb941a743f359017a")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<FibonacciGoal>)))
  "Returns full string definition for message of type '<FibonacciGoal>"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%# goal~%int64 number~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'FibonacciGoal)))
  "Returns full string definition for message of type 'FibonacciGoal"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%# goal~%int64 number~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <FibonacciGoal>))
  (cl:+ 0
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <FibonacciGoal>))
  "Converts a ROS message object to a list"
  (cl:list 'FibonacciGoal
    (cl:cons ':number (number msg))
))
