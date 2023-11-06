;; Auto-generated. Do not edit!


(when (boundp 'beam_test::Beam)
  (if (not (find-package "BEAM_TEST"))
    (make-package "BEAM_TEST"))
  (shadow 'Beam (find-package "BEAM_TEST")))
(unless (find-package "BEAM_TEST::BEAM")
  (make-package "BEAM_TEST::BEAM"))
(unless (find-package "BEAM_TEST::BEAMREQUEST")
  (make-package "BEAM_TEST::BEAMREQUEST"))
(unless (find-package "BEAM_TEST::BEAMRESPONSE")
  (make-package "BEAM_TEST::BEAMRESPONSE"))

(in-package "ROS")





(defclass beam_test::BeamRequest
  :super ros::object
  :slots (_In ))

(defmethod beam_test::BeamRequest
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

(defclass beam_test::BeamResponse
  :super ros::object
  :slots (_ANG ))

(defmethod beam_test::BeamResponse
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

(defclass beam_test::Beam
  :super ros::object
  :slots ())

(setf (get beam_test::Beam :md5sum-) "f776d2a85589bd6653da0466ec4b2203")
(setf (get beam_test::Beam :datatype-) "beam_test/Beam")
(setf (get beam_test::Beam :request) beam_test::BeamRequest)
(setf (get beam_test::Beam :response) beam_test::BeamResponse)

(defmethod beam_test::BeamRequest
  (:response () (instance beam_test::BeamResponse :init)))

(setf (get beam_test::BeamRequest :md5sum-) "f776d2a85589bd6653da0466ec4b2203")
(setf (get beam_test::BeamRequest :datatype-) "beam_test/BeamRequest")
(setf (get beam_test::BeamRequest :definition-)
      "string In
---
float64 ANG
")

(setf (get beam_test::BeamResponse :md5sum-) "f776d2a85589bd6653da0466ec4b2203")
(setf (get beam_test::BeamResponse :datatype-) "beam_test/BeamResponse")
(setf (get beam_test::BeamResponse :definition-)
      "string In
---
float64 ANG
")



(provide :beam_test/Beam "f776d2a85589bd6653da0466ec4b2203")


