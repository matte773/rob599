;; Auto-generated. Do not edit!


(when (boundp 'rob599_basic::FibonacciFeedback)
  (if (not (find-package "ROB599_BASIC"))
    (make-package "ROB599_BASIC"))
  (shadow 'FibonacciFeedback (find-package "ROB599_BASIC")))
(unless (find-package "ROB599_BASIC::FIBONACCIFEEDBACK")
  (make-package "ROB599_BASIC::FIBONACCIFEEDBACK"))

(in-package "ROS")
;;//! \htmlinclude FibonacciFeedback.msg.html


(defclass rob599_basic::FibonacciFeedback
  :super ros::object
  :slots (_progress ))

(defmethod rob599_basic::FibonacciFeedback
  (:init
   (&key
    ((:progress __progress) 0)
    )
   (send-super :init)
   (setq _progress (round __progress))
   self)
  (:progress
   (&optional __progress)
   (if __progress (setq _progress __progress)) _progress)
  (:serialization-length
   ()
   (+
    ;; int64 _progress
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int64 _progress
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _progress (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _progress) (= (length (_progress . bv)) 2)) ;; bignum
              (write-long (ash (elt (_progress . bv) 0) 0) s)
              (write-long (ash (elt (_progress . bv) 1) -1) s))
             ((and (class _progress) (= (length (_progress . bv)) 1)) ;; big1
              (write-long (elt (_progress . bv) 0) s)
              (write-long (if (>= _progress 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _progress s)(write-long (if (>= _progress 0) 0 #xffffffff) s)))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int64 _progress
#+(or :alpha :irix6 :x86_64)
      (setf _progress (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _progress (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;;
   self)
  )

(setf (get rob599_basic::FibonacciFeedback :md5sum-) "880606345f35c22a654c3c928cd368c0")
(setf (get rob599_basic::FibonacciFeedback :datatype-) "rob599_basic/FibonacciFeedback")
(setf (get rob599_basic::FibonacciFeedback :definition-)
      "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======
# feedback
int64 progress



")



(provide :rob599_basic/FibonacciFeedback "880606345f35c22a654c3c928cd368c0")

