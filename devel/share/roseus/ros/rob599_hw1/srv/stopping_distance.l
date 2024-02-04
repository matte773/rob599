;; Auto-generated. Do not edit!


(when (boundp 'rob599_hw1::stopping_distance)
  (if (not (find-package "ROB599_HW1"))
    (make-package "ROB599_HW1"))
  (shadow 'stopping_distance (find-package "ROB599_HW1")))
(unless (find-package "ROB599_HW1::STOPPING_DISTANCE")
  (make-package "ROB599_HW1::STOPPING_DISTANCE"))
(unless (find-package "ROB599_HW1::STOPPING_DISTANCEREQUEST")
  (make-package "ROB599_HW1::STOPPING_DISTANCEREQUEST"))
(unless (find-package "ROB599_HW1::STOPPING_DISTANCERESPONSE")
  (make-package "ROB599_HW1::STOPPING_DISTANCERESPONSE"))

(in-package "ROS")





(defclass rob599_hw1::stopping_distanceRequest
  :super ros::object
  :slots (_input ))

(defmethod rob599_hw1::stopping_distanceRequest
  (:init
   (&key
    ((:input __input) 0.0)
    )
   (send-super :init)
   (setq _input (float __input))
   self)
  (:input
   (&optional __input)
   (if __input (setq _input __input)) _input)
  (:serialization-length
   ()
   (+
    ;; float32 _input
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _input
       (sys::poke _input (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _input
     (setq _input (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(defclass rob599_hw1::stopping_distanceResponse
  :super ros::object
  :slots (_output ))

(defmethod rob599_hw1::stopping_distanceResponse
  (:init
   (&key
    ((:output __output) nil)
    )
   (send-super :init)
   (setq _output __output)
   self)
  (:output
   (&optional (__output :null))
   (if (not (eq __output :null)) (setq _output __output)) _output)
  (:serialization-length
   ()
   (+
    ;; bool _output
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _output
       (if _output (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _output
     (setq _output (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass rob599_hw1::stopping_distance
  :super ros::object
  :slots ())

(setf (get rob599_hw1::stopping_distance :md5sum-) "df4297412d514e842de4f3301701343a")
(setf (get rob599_hw1::stopping_distance :datatype-) "rob599_hw1/stopping_distance")
(setf (get rob599_hw1::stopping_distance :request) rob599_hw1::stopping_distanceRequest)
(setf (get rob599_hw1::stopping_distance :response) rob599_hw1::stopping_distanceResponse)

(defmethod rob599_hw1::stopping_distanceRequest
  (:response () (instance rob599_hw1::stopping_distanceResponse :init)))

(setf (get rob599_hw1::stopping_distanceRequest :md5sum-) "df4297412d514e842de4f3301701343a")
(setf (get rob599_hw1::stopping_distanceRequest :datatype-) "rob599_hw1/stopping_distanceRequest")
(setf (get rob599_hw1::stopping_distanceRequest :definition-)
      "float32 input
---
bool output
")

(setf (get rob599_hw1::stopping_distanceResponse :md5sum-) "df4297412d514e842de4f3301701343a")
(setf (get rob599_hw1::stopping_distanceResponse :datatype-) "rob599_hw1/stopping_distanceResponse")
(setf (get rob599_hw1::stopping_distanceResponse :definition-)
      "float32 input
---
bool output
")



(provide :rob599_hw1/stopping_distance "df4297412d514e842de4f3301701343a")


