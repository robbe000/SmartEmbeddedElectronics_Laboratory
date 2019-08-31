;; Auto-generated. Do not edit!


(when (boundp 'driver::directions)
  (if (not (find-package "DRIVER"))
    (make-package "DRIVER"))
  (shadow 'directions (find-package "DRIVER")))
(unless (find-package "DRIVER::DIRECTIONS")
  (make-package "DRIVER::DIRECTIONS"))

(in-package "ROS")
;;//! \htmlinclude directions.msg.html


(defclass driver::directions
  :super ros::object
  :slots (_direction _status ))

(defmethod driver::directions
  (:init
   (&key
    ((:direction __direction) 0)
    ((:status __status) 0)
    )
   (send-super :init)
   (setq _direction (round __direction))
   (setq _status (round __status))
   self)
  (:direction
   (&optional __direction)
   (if __direction (setq _direction __direction)) _direction)
  (:status
   (&optional __status)
   (if __status (setq _status __status)) _status)
  (:serialization-length
   ()
   (+
    ;; int16 _direction
    2
    ;; uint8 _status
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int16 _direction
       (write-word _direction s)
     ;; uint8 _status
       (write-byte _status s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int16 _direction
     (setq _direction (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint8 _status
     (setq _status (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(setf (get driver::directions :md5sum-) "1c4878b49e480178b449ff864f10fa72")
(setf (get driver::directions :datatype-) "driver/directions")
(setf (get driver::directions :definition-)
      "int16 direction
uint8 status
")



(provide :driver/directions "1c4878b49e480178b449ff864f10fa72")


