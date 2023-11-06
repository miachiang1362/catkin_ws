
(cl:in-package :asdf)

(defsystem "beam_test-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "AddTwoInts" :depends-on ("_package_AddTwoInts"))
    (:file "_package_AddTwoInts" :depends-on ("_package"))
    (:file "Beam" :depends-on ("_package_Beam"))
    (:file "_package_Beam" :depends-on ("_package"))
    (:file "Multiply" :depends-on ("_package_Multiply"))
    (:file "_package_Multiply" :depends-on ("_package"))
  ))