; Auto-generated. Do not edit!


(cl:in-package test2-srv)


;//! \htmlinclude Multiply-request.msg.html

(cl:defclass <Multiply-request> (roslisp-msg-protocol:ros-message)
  ((A
    :reader A
    :initarg :A
    :type cl:float
    :initform 0.0)
   (B
    :reader B
    :initarg :B
    :type cl:float
    :initform 0.0))
)

(cl:defclass Multiply-request (<Multiply-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Multiply-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Multiply-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name test2-srv:<Multiply-request> is deprecated: use test2-srv:Multiply-request instead.")))

(cl:ensure-generic-function 'A-val :lambda-list '(m))
(cl:defmethod A-val ((m <Multiply-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader test2-srv:A-val is deprecated.  Use test2-srv:A instead.")
  (A m))

(cl:ensure-generic-function 'B-val :lambda-list '(m))
(cl:defmethod B-val ((m <Multiply-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader test2-srv:B-val is deprecated.  Use test2-srv:B instead.")
  (B m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Multiply-request>) ostream)
  "Serializes a message object of type '<Multiply-request>"
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'A))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'B))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Multiply-request>) istream)
  "Deserializes a message object of type '<Multiply-request>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'A) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'B) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Multiply-request>)))
  "Returns string type for a service object of type '<Multiply-request>"
  "test2/MultiplyRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Multiply-request)))
  "Returns string type for a service object of type 'Multiply-request"
  "test2/MultiplyRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Multiply-request>)))
  "Returns md5sum for a message object of type '<Multiply-request>"
  "d93544996623378ddb27581d921401f7")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Multiply-request)))
  "Returns md5sum for a message object of type 'Multiply-request"
  "d93544996623378ddb27581d921401f7")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Multiply-request>)))
  "Returns full string definition for message of type '<Multiply-request>"
  (cl:format cl:nil "float64 A~%float64 B~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Multiply-request)))
  "Returns full string definition for message of type 'Multiply-request"
  (cl:format cl:nil "float64 A~%float64 B~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Multiply-request>))
  (cl:+ 0
     8
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Multiply-request>))
  "Converts a ROS message object to a list"
  (cl:list 'Multiply-request
    (cl:cons ':A (A msg))
    (cl:cons ':B (B msg))
))
;//! \htmlinclude Multiply-response.msg.html

(cl:defclass <Multiply-response> (roslisp-msg-protocol:ros-message)
  ((MUL
    :reader MUL
    :initarg :MUL
    :type cl:float
    :initform 0.0))
)

(cl:defclass Multiply-response (<Multiply-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Multiply-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Multiply-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name test2-srv:<Multiply-response> is deprecated: use test2-srv:Multiply-response instead.")))

(cl:ensure-generic-function 'MUL-val :lambda-list '(m))
(cl:defmethod MUL-val ((m <Multiply-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader test2-srv:MUL-val is deprecated.  Use test2-srv:MUL instead.")
  (MUL m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Multiply-response>) ostream)
  "Serializes a message object of type '<Multiply-response>"
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'MUL))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Multiply-response>) istream)
  "Deserializes a message object of type '<Multiply-response>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'MUL) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Multiply-response>)))
  "Returns string type for a service object of type '<Multiply-response>"
  "test2/MultiplyResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Multiply-response)))
  "Returns string type for a service object of type 'Multiply-response"
  "test2/MultiplyResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Multiply-response>)))
  "Returns md5sum for a message object of type '<Multiply-response>"
  "d93544996623378ddb27581d921401f7")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Multiply-response)))
  "Returns md5sum for a message object of type 'Multiply-response"
  "d93544996623378ddb27581d921401f7")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Multiply-response>)))
  "Returns full string definition for message of type '<Multiply-response>"
  (cl:format cl:nil "float64 MUL~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Multiply-response)))
  "Returns full string definition for message of type 'Multiply-response"
  (cl:format cl:nil "float64 MUL~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Multiply-response>))
  (cl:+ 0
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Multiply-response>))
  "Converts a ROS message object to a list"
  (cl:list 'Multiply-response
    (cl:cons ':MUL (MUL msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'Multiply)))
  'Multiply-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'Multiply)))
  'Multiply-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Multiply)))
  "Returns string type for a service object of type '<Multiply>"
  "test2/Multiply")