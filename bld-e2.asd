(defpackage :bld-e2.system
  (:use :asdf :cl)) 
(in-package :bld-e2.system) 
(defsystem :bld-e2 
  :name "bld-e2" 
  :author "Benjamin L. Diedrich" 
  :version "0.0.1" 
  :maintainer "Benjamin L. Diedrich" 
  :license "MIT" 
  :description "Euclidean 2D geometric algebra" 
  :depends-on ("bld-ga" "bld-gagen")
  :components ((:file "package")
	       (:file "e2" :depends-on ("package"))))
