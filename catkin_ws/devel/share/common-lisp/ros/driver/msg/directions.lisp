; Auto-generated. Do not edit!


(cl:in-package driver-msg)


;//! \htmlinclude directions.msg.html

(cl:defclass <directions> (roslisp-msg-protocol:ros-message)
  ((direction
    :reader direction
    :initarg :direction
    :type cl:fixnum
    :initform 0)
   (status
    :reader status
    :initarg :status
    :type cl:fixnum
    :initform 0))
)

(cl:defclass directions (<directions>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <directions>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'directions)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name driver-msg:<directions> is deprecated: use driver-msg:directions instead.")))

(cl:ensure-generic-function 'direction-val :lambda-list '(m))
(cl:defmethod direction-val ((m <directions>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader driver-msg:direction-val is deprecated.  Use driver-msg:direction instead.")
  (direction m))

(cl:ensure-generic-function 'status-val :lambda-list '(m))
(cl:defmethod status-val ((m <directions>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader driver-msg:status-val is deprecated.  Use driver-msg:status instead.")
  (status m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <directions>) ostream)
  "Serializes a message object of type '<directions>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'direction)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'status)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <directions>) istream)
  "Deserializes a message object of type '<directions>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'direction)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'status)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<directions>)))
  "Returns string type for a message object of type '<directions>"
  "driver/directions")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'directions)))
  "Returns string type for a message object of type 'directions"
  "driver/directions")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<directions>)))
  "Returns md5sum for a message object of type '<directions>"
  "2ad149d8227f0e8133faeb3a94061d79")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'directions)))
  "Returns md5sum for a message object of type 'directions"
  "2ad149d8227f0e8133faeb3a94061d79")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<directions>)))
  "Returns full string definition for message of type '<directions>"
  (cl:format cl:nil "uint8 direction~%uint8 status~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'directions)))
  "Returns full string definition for message of type 'directions"
  (cl:format cl:nil "uint8 direction~%uint8 status~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <directions>))
  (cl:+ 0
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <directions>))
  "Converts a ROS message object to a list"
  (cl:list 'directions
    (cl:cons ':direction (direction msg))
    (cl:cons ':status (status msg))
))
