;; Auto-generated. Do not edit!


(when (boundp 'rob599_hw1::approachGoal)
  (if (not (find-package "ROB599_HW1"))
    (make-package "ROB599_HW1"))
  (shadow 'approachGoal (find-package "ROB599_HW1")))
(unless (find-package "ROB599_HW1::APPROACHGOAL")
  (make-package "ROB599_HW1::APPROACHGOAL"))

(in-package "ROS")
;;//! \htmlinclude approachGoal.msg.html


(defclass rob599_hw1::approachGoal
  :super ros::object
  :slots (_stopping_distance ))

(defmethod rob599_hw1::approachGoal
  (:init
   (&key
    ((:stopping_distance __stopping_distance) 0.0)
    )
   (send-super :init)
   (setq _stopping_distance (float __stopping_distance))
   self)
  (:stopping_distance
   (&optional __stopping_distance)
   (if __stopping_distance (setq _stopping_distance __stopping_distance)) _stopping_distance)
  (:serialization-length
   ()
   (+
    ;; float32 _stopping_distance
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _stopping_distance
       (sys::poke _stopping_distance (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _stopping_distance
     (setq _stopping_distance (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get rob599_hw1::approachGoal :md5sum-) "91d6fae14032f66194a4a3424f9dee78")
(setf (get rob599_hw1::approachGoal :datatype-) "rob599_hw1/approachGoal")
(setf (get rob599_hw1::approachGoal :definition-)
      "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======
float32 stopping_distance

")



(provide :rob599_hw1/approachGoal "91d6fae14032f66194a4a3424f9dee78")


