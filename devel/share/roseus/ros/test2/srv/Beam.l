;; Auto-generated. Do not edit!


(when (boundp 'test2::Beam)
  (if (not (find-package "TEST2"))
    (make-package "TEST2"))
  (shadow 'Beam (find-package "TEST2")))
(unless (find-package "TEST2::BEAM")
  (make-package "TEST2::BEAM"))
(unless (find-package "TEST2::BEAMREQUEST")
  (make-package "TEST2::BEAMREQUEST"))
(unless (find-package "TEST2::BEAMRESPONSE")
  (make-package "TEST2::BEAMRESPONSE"))

(in-package "ROS")





(defclass test2::BeamRequest
  :super ros::object
  :slots (_In ))

(defmethod test2::BeamRequest
  (:init
   (&key
    ((:In __In) "")
    )
   (send-super :init)
   (setq _In (string __In))
   self)
  (:In
   (&optional __In)
   (if __In (setq _In __In)) _In)
  (:serialization-length
   ()
   (+
    ;; string _In
    4 (length _In)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _In
       (write-long (length _In) s) (princ _In s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _In
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _In (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass test2::BeamResponse
  :super ros::object
  :slots (_ANG ))

(defmethod test2::BeamResponse
  (:init
   (&key
    ((:ANG __ANG) 0.0)
    )
   (send-super :init)
   (setq _ANG (float __ANG))
   self)
  (:ANG
   (&optional __ANG)
   (if __ANG (setq _ANG __ANG)) _ANG)
  (:serialization-length
   ()
   (+
    ;; float64 _ANG
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _ANG
       (sys::poke _ANG (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _ANG
     (setq _ANG (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(defclass test2::Beam
  :super ros::object
  :slots ())

(setf (get test2::Beam :md5sum-) "f776d2a85589bd6653da0466ec4b2203")
(setf (get test2::Beam :datatype-) "test2/Beam")
(setf (get test2::Beam :request) test2::BeamRequest)
(setf (get test2::Beam :response) test2::BeamResponse)

(defmethod test2::BeamRequest
  (:response () (instance test2::BeamResponse :init)))

(setf (get test2::BeamRequest :md5sum-) "f776d2a85589bd6653da0466ec4b2203")
(setf (get test2::BeamRequest :datatype-) "test2/BeamRequest")
(setf (get test2::BeamRequest :definition-)
      "string In
---
float64 ANG
")

(setf (get test2::BeamResponse :md5sum-) "f776d2a85589bd6653da0466ec4b2203")
(setf (get test2::BeamResponse :datatype-) "test2/BeamResponse")
(setf (get test2::BeamResponse :definition-)
      "string In
---
float64 ANG
")



(provide :test2/Beam "f776d2a85589bd6653da0466ec4b2203")


