;; Auto-generated. Do not edit!


(when (boundp 'hello_demo::add_srv)
  (if (not (find-package "HELLO_DEMO"))
    (make-package "HELLO_DEMO"))
  (shadow 'add_srv (find-package "HELLO_DEMO")))
(unless (find-package "HELLO_DEMO::ADD_SRV")
  (make-package "HELLO_DEMO::ADD_SRV"))
(unless (find-package "HELLO_DEMO::ADD_SRVREQUEST")
  (make-package "HELLO_DEMO::ADD_SRVREQUEST"))
(unless (find-package "HELLO_DEMO::ADD_SRVRESPONSE")
  (make-package "HELLO_DEMO::ADD_SRVRESPONSE"))

(in-package "ROS")





(defclass hello_demo::add_srvRequest
  :super ros::object
  :slots (_A _B _C ))

(defmethod hello_demo::add_srvRequest
  (:init
   (&key
    ((:A __A) 0)
    ((:B __B) 0)
    ((:C __C) 0)
    )
   (send-super :init)
   (setq _A (round __A))
   (setq _B (round __B))
   (setq _C (round __C))
   self)
  (:A
   (&optional __A)
   (if __A (setq _A __A)) _A)
  (:B
   (&optional __B)
   (if __B (setq _B __B)) _B)
  (:C
   (&optional __C)
   (if __C (setq _C __C)) _C)
  (:serialization-length
   ()
   (+
    ;; int32 _A
    4
    ;; int32 _B
    4
    ;; int32 _C
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _A
       (write-long _A s)
     ;; int32 _B
       (write-long _B s)
     ;; int32 _C
       (write-long _C s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _A
     (setq _A (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _B
     (setq _B (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _C
     (setq _C (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(defclass hello_demo::add_srvResponse
  :super ros::object
  :slots (_sum ))

(defmethod hello_demo::add_srvResponse
  (:init
   (&key
    ((:sum __sum) 0)
    )
   (send-super :init)
   (setq _sum (round __sum))
   self)
  (:sum
   (&optional __sum)
   (if __sum (setq _sum __sum)) _sum)
  (:serialization-length
   ()
   (+
    ;; int32 _sum
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _sum
       (write-long _sum s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _sum
     (setq _sum (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(defclass hello_demo::add_srv
  :super ros::object
  :slots ())

(setf (get hello_demo::add_srv :md5sum-) "2a5c7a37218262bae4fcfaa1007692aa")
(setf (get hello_demo::add_srv :datatype-) "hello_demo/add_srv")
(setf (get hello_demo::add_srv :request) hello_demo::add_srvRequest)
(setf (get hello_demo::add_srv :response) hello_demo::add_srvResponse)

(defmethod hello_demo::add_srvRequest
  (:response () (instance hello_demo::add_srvResponse :init)))

(setf (get hello_demo::add_srvRequest :md5sum-) "2a5c7a37218262bae4fcfaa1007692aa")
(setf (get hello_demo::add_srvRequest :datatype-) "hello_demo/add_srvRequest")
(setf (get hello_demo::add_srvRequest :definition-)
      "int32 A
int32 B
int32 C
---
int32 sum
")

(setf (get hello_demo::add_srvResponse :md5sum-) "2a5c7a37218262bae4fcfaa1007692aa")
(setf (get hello_demo::add_srvResponse :datatype-) "hello_demo/add_srvResponse")
(setf (get hello_demo::add_srvResponse :definition-)
      "int32 A
int32 B
int32 C
---
int32 sum
")



(provide :hello_demo/add_srv "2a5c7a37218262bae4fcfaa1007692aa")


