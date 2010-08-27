(defpackage bld-e2
  (:use :cl :bld-ga :bld-gagen)
  (:export :e2 :se2 :ve2 :ie2 :re2 :mve2))

(in-package :bld-e2)

(defparameter *spec*
  '((se2 #(0))
    (ve2 #(#b1 #b10))
    (ie2 #(#b11))
    (re2 #(0 #b11))
    (mve2 #(0 1 2 3)))
  "2D Euclidean algebra specification")

(defg e2 2)
(defgfun e2 2)
