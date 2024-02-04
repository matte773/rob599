; Auto-generated. Do not edit!


(cl:in-package rob599_hw1-srv)


;//! \htmlinclude stopping_distance-request.msg.html

(cl:defclass <stopping_distance-request> (roslisp-msg-protocol:ros-message)
  ((input
    :reader input
    :initarg :input
    :type cl:float
    :initform 0.0))
)

(cl:defclass stopping_distance-request (<stopping_distance-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <stopping_distance-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'stopping_distance-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name rob599_hw1-srv:<stopping_distance-request> is deprecated: use rob599_hw1-srv:stopping_distance-request instead.")))

(cl:ensure-generic-function 'input-val :lambda-list '(m))
(cl:defmethod input-val ((m <stopping_distance-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rob599_hw1-srv:input-val is deprecated.  Use rob599_hw1-srv:input instead.")
  (input m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <stopping_distance-request>) ostream)
  "Serializes a message object of type '<stopping_distance-request>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'input))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <stopping_distance-request>) istream)
  "Deserializes a message object of type '<stopping_distance-request>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'input) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<stopping_distance-request>)))
  "Returns string type for a service object of type '<stopping_distance-request>"
  "rob599_hw1/stopping_distanceRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'stopping_distance-request)))
  "Returns string type for a service object of type 'stopping_distance-request"
  "rob599_hw1/stopping_distanceRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<stopping_distance-request>)))
  "Returns md5sum for a message object of type '<stopping_distance-request>"
  "df4297412d514e842de4f3301701343a")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'stopping_distance-request)))
  "Returns md5sum for a message object of type 'stopping_distance-request"
  "df4297412d514e842de4f3301701343a")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<stopping_distance-request>)))
  "Returns full string definition for message of type '<stopping_distance-request>"
  (cl:format cl:nil "float32 input~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'stopping_distance-request)))
  "Returns full string definition for message of type 'stopping_distance-request"
  (cl:format cl:nil "float32 input~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <stopping_distance-request>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <stopping_distance-request>))
  "Converts a ROS message object to a list"
  (cl:list 'stopping_distance-request
    (cl:cons ':input (input msg))
))
;//! \htmlinclude stopping_distance-response.msg.html

(cl:defclass <stopping_distance-response> (roslisp-msg-protocol:ros-message)
  ((output
    :reader output
    :initarg :output
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass stopping_distance-response (<stopping_distance-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <stopping_distance-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'stopping_distance-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name rob599_hw1-srv:<stopping_distance-response> is deprecated: use rob599_hw1-srv:stopping_distance-response instead.")))

(cl:ensure-generic-function 'output-val :lambda-list '(m))
(cl:defmethod output-val ((m <stopping_distance-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rob599_hw1-srv:output-val is deprecated.  Use rob599_hw1-srv:output instead.")
  (output m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <stopping_distance-response>) ostream)
  "Serializes a message object of type '<stopping_distance-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'output) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <stopping_distance-response>) istream)
  "Deserializes a message object of type '<stopping_distance-response>"
    (cl:setf (cl:slot-value msg 'output) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<stopping_distance-response>)))
  "Returns string type for a service object of type '<stopping_distance-response>"
  "rob599_hw1/stopping_distanceResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'stopping_distance-response)))
  "Returns string type for a service object of type 'stopping_distance-response"
  "rob599_hw1/stopping_distanceResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<stopping_distance-response>)))
  "Returns md5sum for a message object of type '<stopping_distance-response>"
  "df4297412d514e842de4f3301701343a")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'stopping_distance-response)))
  "Returns md5sum for a message object of type 'stopping_distance-response"
  "df4297412d514e842de4f3301701343a")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<stopping_distance-response>)))
  "Returns full string definition for message of type '<stopping_distance-response>"
  (cl:format cl:nil "bool output~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'stopping_distance-response)))
  "Returns full string definition for message of type 'stopping_distance-response"
  (cl:format cl:nil "bool output~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <stopping_distance-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <stopping_distance-response>))
  "Converts a ROS message object to a list"
  (cl:list 'stopping_distance-response
    (cl:cons ':output (output msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'stopping_distance)))
  'stopping_distance-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'stopping_distance)))
  'stopping_distance-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'stopping_distance)))
  "Returns string type for a service object of type '<stopping_distance>"
  "rob599_hw1/stopping_distance")