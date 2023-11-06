;; Auto-generated. Do not edit!


(when (boundp 'test2::Multiply)
  (if (not (find-package "TEST2"))
    (make-package "TEST2"))
  (shadow 'Multiply (find-package "TEST2")))
(unless (find-package "TEST2::MULTIPLY")
  (make-package "TEST2::MULTIPLY"))
(unless (find-package "TEST2::MULTIPLYREQUEST")
  (make-package "TEST2::MULTIPLYREQUEST"))
(unless (find-package "TEST2::MULTIPLYRESPONSE")
  (make-package "TEST2::MULTIPLYRESPONSE"))

(in-package "ROS")





(defclass test2::MultiplyRequest
  :super ros::object
  :slots (_A _B ))

(defmethod test2::MultiplyRequest
  (:init
   (&key
    ((:A __A) 0.0)
    ((:B __B) 0.0)
    )
   (send-super :init)
   (setq _A (float __A))
   (setq _B (float __B))
   self)
  (:A
   (&optional __A)
   (if __A (setq _A __A)) _A)
  (:B
   (&optional __B)
   (if __B (setq _B __B)) _B)
  (:serialization-length
   ()
   (+
    ;; float64 _A
    8
    ;; float64 _B
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _A
       (sys::poke _A (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _B
       (sys::poke _B (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _A
     (setq _A (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _B
     (setq _B (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(defclass test2::MultiplyResponse
  :super ros::object
  :slots (_MUL ))

(defmethod test2::MultiplyResponse
  (:init
   (&key
    ((:MUL __MUL) 0.0)
    )
   (send-super :init)
   (setq _MUL (float __MUL))
   self)
  (:MUL
   (&optional __MUL)
   (if __MUL (setq _MUL __MUL)) _MUL)
  (:serialization-length
   ()
   (+
    ;; float64 _MUL
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _MUL
       (sys::poke _MUL (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _MUL
     (setq _MUL (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(defclass test2::Multiply
  :super ros::object
  :slots ())

(setf (get test2::Multiply :md5sum-) "d93544996623378ddb27581d921401f7")
(setf (get test2::Multiply :datatype-) "test2/Multiply")
(setf (get test2::Multiply :request) test2::MultiplyRequest)
(setf (get test2::Multiply :response) test2::MultiplyResponse)

(defmethod test2::MultiplyRequest
  (:response () (instance test2::MultiplyResponse :init)))

(setf (get test2::MultiplyRequest :md5sum-) "d93544996623378ddb27581d921401f7")
(setf (get test2::MultiplyRequest :datatype-) "test2/MultiplyRequest")
(setf (get test2::MultiplyRequest :definition-)
      "float64 A
float64 B
---
float64 MUL
")

(setf (get test2::MultiplyResponse :md5sum-) "d93544996623378ddb27581d921401f7")
(setf (get test2::MultiplyResponse :datatype-) "test2/MultiplyResponse")
(setf (get test2::MultiplyResponse :definition-)
      "float64 A
float64 B
---
float64 MUL
")



(provide :test2/Multiply "d93544996623378ddb27581d921401f7")


