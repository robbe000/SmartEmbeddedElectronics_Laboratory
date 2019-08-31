
(cl:in-package :asdf)

(defsystem "driver-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "directions" :depends-on ("_package_directions"))
    (:file "_package_directions" :depends-on ("_package"))
    (:file "directions" :depends-on ("_package_directions"))
    (:file "_package_directions" :depends-on ("_package"))
  ))