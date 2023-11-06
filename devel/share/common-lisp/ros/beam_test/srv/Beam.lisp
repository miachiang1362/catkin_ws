; Auto-generated. Do not edit!


(cl:in-package beam_test-srv)


;//! \htmlinclude Beam-request.msg.html

(cl:defclass <Beam-request> (roslisp-msg-protocol:ros-message)
  ((In
    :reader In
    :initarg :In
    :type cl:string
    :initform ""))
)

(cl:defclass Beam-request (<Beam-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Beam-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Beam-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name beam_test-srv:<Beam-request> is deprecated: use beam_test-srv:Beam-request instead.")))

(cl:ensure-generic-function 'In-val :lambda-list '(m))
(cl:defmethod In-val ((m <Beam-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader beam_test-srv:In-val is deprecated.  Use beam_test-srv:In instead.")
  (In m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Beam-request>) ostream)
  "Serializes a message object of type '<Beam-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'In))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'In))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Beam-request>) istream)
  "Deserializes a message object of type '<Beam-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'In) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'In) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Beam-request>)))
  "Returns string type for a service object of type '<Beam-request>"
  "beam_test/BeamRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Beam-request)))
  "Returns string type for a service object of type 'Beam-request"
  "beam_test/BeamRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Beam-request>)))
  "Returns md5sum for a message object of type '<Beam-request>"
  "f776d2a85589bd6653da0466ec4b2203")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Beam-request)))
  "Returns md5sum for a message object of type 'Beam-request"
  "f776d2a85589bd6653da0466ec4b2203")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Beam-request>)))
  "Returns full string definition for message of type '<Beam-request>"
  (cl:format cl:nil "string In~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Beam-request)))
  "Returns full string definition for message of type 'Beam-request"
  (cl:format cl:nil "string In~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Beam-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'In))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Beam-request>))
  "Converts a ROS message object to a list"
  (cl:list 'Beam-request
    (cl:cons ':In (In msg))
))
;//! \htmlinclude Beam-response.msg.html

(cl:defclass <Beam-response> (roslisp-msg-protocol:ros-message)
  ((ANG
    :reader ANG
    :initarg :ANG
    :type cl:float
    :initform 0.0))
)

(cl:defclass Beam-response (<Beam-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Beam-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Beam-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name beam_test-srv:<Beam-response> is deprecated: use beam_test-srv:Beam-response instead.")))

(cl:ensure-generic-function 'ANG-val :lambda-list '(m))
(cl:defmethod ANG-val ((m <Beam-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader beam_test-srv:ANG-val is deprecated.  Use beam_test-srv:ANG instead.")
  (ANG m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Beam-response>) ostream)
  "Serializes a message object of type '<Beam-response>"
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'ANG))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Beam-response>) istream)
  "Deserializes a message object of type '<Beam-response>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'ANG) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Beam-response>)))
  "Returns string type for a service object of type '<Beam-response>"
  "beam_test/BeamResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Beam-response)))
  "Returns string type for a service object of type 'Beam-response"
  "beam_test/BeamResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Beam-response>)))
  "Returns md5sum for a message object of type '<Beam-response>"
  "f776d2a85589bd6653da0466ec4b2203")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Beam-response)))
  "Returns md5sum for a message object of type 'Beam-response"
  "f776d2a85589bd6653da0466ec4b2203")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Beam-response>)))
  "Returns full string definition for message of type '<Beam-response>"
  (cl:format cl:nil "float64 ANG~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Beam-response)))
  "Returns full string definition for message of type 'Beam-response"
  (cl:format cl:nil "float64 ANG~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Beam-response>))
  (cl:+ 0
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Beam-response>))
  "Converts a ROS message object to a list"
  (cl:list 'Beam-response
    (cl:cons ':ANG (ANG msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'Beam)))
  'Beam-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'Beam)))
  'Beam-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Beam)))
  "Returns string type for a service object of type '<Beam>"
  "beam_test/Beam")