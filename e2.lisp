(in-package :bld-e2)

;; Define children
(defchildren e2 2 *spec*)
(defchildfuns *spec*)
(defgrefs 2 *spec*)
(defgsets 2 *spec*)

;; Define methods
(defgamethodsall e2 *spec* :vector ve2 :spinor re2)
