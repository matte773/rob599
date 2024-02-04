
(cl:in-package :asdf)

(defsystem "rob599_hw1-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "stopping_distance" :depends-on ("_package_stopping_distance"))
    (:file "_package_stopping_distance" :depends-on ("_package"))
  ))