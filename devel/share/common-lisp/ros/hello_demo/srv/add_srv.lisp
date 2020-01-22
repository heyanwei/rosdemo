; Auto-generated. Do not edit!


(cl:in-package hello_demo-srv)


;//! \htmlinclude add_srv-request.msg.html

(cl:defclass <add_srv-request> (roslisp-msg-protocol:ros-message)
  ((A
    :reader A
    :initarg :A
    :type cl:integer
    :initform 0)
   (B
    :reader B
    :initarg :B
    :type cl:integer
    :initform 0)
   (C
    :reader C
    :initarg :C
    :type cl:integer
    :initform 0))
)

(cl:defclass add_srv-request (<add_srv-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <add_srv-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'add_srv-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name hello_demo-srv:<add_srv-request> is deprecated: use hello_demo-srv:add_srv-request instead.")))

(cl:ensure-generic-function 'A-val :lambda-list '(m))
(cl:defmethod A-val ((m <add_srv-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hello_demo-srv:A-val is deprecated.  Use hello_demo-srv:A instead.")
  (A m))

(cl:ensure-generic-function 'B-val :lambda-list '(m))
(cl:defmethod B-val ((m <add_srv-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hello_demo-srv:B-val is deprecated.  Use hello_demo-srv:B instead.")
  (B m))

(cl:ensure-generic-function 'C-val :lambda-list '(m))
(cl:defmethod C-val ((m <add_srv-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hello_demo-srv:C-val is deprecated.  Use hello_demo-srv:C instead.")
  (C m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <add_srv-request>) ostream)
  "Serializes a message object of type '<add_srv-request>"
  (cl:let* ((signed (cl:slot-value msg 'A)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'B)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'C)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <add_srv-request>) istream)
  "Deserializes a message object of type '<add_srv-request>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'A) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'B) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'C) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<add_srv-request>)))
  "Returns string type for a service object of type '<add_srv-request>"
  "hello_demo/add_srvRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'add_srv-request)))
  "Returns string type for a service object of type 'add_srv-request"
  "hello_demo/add_srvRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<add_srv-request>)))
  "Returns md5sum for a message object of type '<add_srv-request>"
  "2a5c7a37218262bae4fcfaa1007692aa")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'add_srv-request)))
  "Returns md5sum for a message object of type 'add_srv-request"
  "2a5c7a37218262bae4fcfaa1007692aa")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<add_srv-request>)))
  "Returns full string definition for message of type '<add_srv-request>"
  (cl:format cl:nil "int32 A~%int32 B~%int32 C~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'add_srv-request)))
  "Returns full string definition for message of type 'add_srv-request"
  (cl:format cl:nil "int32 A~%int32 B~%int32 C~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <add_srv-request>))
  (cl:+ 0
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <add_srv-request>))
  "Converts a ROS message object to a list"
  (cl:list 'add_srv-request
    (cl:cons ':A (A msg))
    (cl:cons ':B (B msg))
    (cl:cons ':C (C msg))
))
;//! \htmlinclude add_srv-response.msg.html

(cl:defclass <add_srv-response> (roslisp-msg-protocol:ros-message)
  ((sum
    :reader sum
    :initarg :sum
    :type cl:integer
    :initform 0))
)

(cl:defclass add_srv-response (<add_srv-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <add_srv-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'add_srv-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name hello_demo-srv:<add_srv-response> is deprecated: use hello_demo-srv:add_srv-response instead.")))

(cl:ensure-generic-function 'sum-val :lambda-list '(m))
(cl:defmethod sum-val ((m <add_srv-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hello_demo-srv:sum-val is deprecated.  Use hello_demo-srv:sum instead.")
  (sum m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <add_srv-response>) ostream)
  "Serializes a message object of type '<add_srv-response>"
  (cl:let* ((signed (cl:slot-value msg 'sum)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <add_srv-response>) istream)
  "Deserializes a message object of type '<add_srv-response>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'sum) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<add_srv-response>)))
  "Returns string type for a service object of type '<add_srv-response>"
  "hello_demo/add_srvResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'add_srv-response)))
  "Returns string type for a service object of type 'add_srv-response"
  "hello_demo/add_srvResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<add_srv-response>)))
  "Returns md5sum for a message object of type '<add_srv-response>"
  "2a5c7a37218262bae4fcfaa1007692aa")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'add_srv-response)))
  "Returns md5sum for a message object of type 'add_srv-response"
  "2a5c7a37218262bae4fcfaa1007692aa")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<add_srv-response>)))
  "Returns full string definition for message of type '<add_srv-response>"
  (cl:format cl:nil "int32 sum~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'add_srv-response)))
  "Returns full string definition for message of type 'add_srv-response"
  (cl:format cl:nil "int32 sum~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <add_srv-response>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <add_srv-response>))
  "Converts a ROS message object to a list"
  (cl:list 'add_srv-response
    (cl:cons ':sum (sum msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'add_srv)))
  'add_srv-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'add_srv)))
  'add_srv-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'add_srv)))
  "Returns string type for a service object of type '<add_srv>"
  "hello_demo/add_srv")