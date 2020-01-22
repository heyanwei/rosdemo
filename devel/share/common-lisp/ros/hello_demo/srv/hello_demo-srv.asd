
(cl:in-package :asdf)

(defsystem "hello_demo-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "add_srv" :depends-on ("_package_add_srv"))
    (:file "_package_add_srv" :depends-on ("_package"))
  ))