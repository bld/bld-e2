
(IN-PACKAGE :BLD-E2) 
(DEFMETHOD *O2 ((G1 E2) (G2 E2))
  (MAKE-INSTANCE 'E2 :COEF
                 (VECTOR (* (GREF G1 :S) (GREF G2 :S))
                         (+ (* (GREF G1 :S) (GREF G2 :E1))
                            (* (GREF G1 :E1) (GREF G2 :S)))
                         (+ (* (GREF G1 :S) (GREF G2 :E2))
                            (* (GREF G1 :E2) (GREF G2 :S)))
                         (+ (* (GREF G1 :S) (GREF G2 :E1E2))
                            (* (GREF G1 :E1) (GREF G2 :E2))
                            (* -1 (GREF G1 :E2) (GREF G2 :E1))
                            (* (GREF G1 :E1E2) (GREF G2 :S)))))) 
(DEFMETHOD *O2 ((G1 E2) (G2 SE2))
  (MAKE-INSTANCE 'E2 :COEF
                 (VECTOR (* (GREF G1 :S) (GREF G2 :S))
                         (* (GREF G1 :E1) (GREF G2 :S))
                         (* (GREF G1 :E2) (GREF G2 :S))
                         (* (GREF G1 :E1E2) (GREF G2 :S))))) 
(DEFMETHOD *O2 ((G1 E2) (G2 VE2))
  (MAKE-INSTANCE 'E2 :COEF
                 (VECTOR 0 (* (GREF G1 :S) (GREF G2 :E1))
                         (* (GREF G1 :S) (GREF G2 :E2))
                         (+ (* (GREF G1 :E1) (GREF G2 :E2))
                            (* -1 (GREF G1 :E2) (GREF G2 :E1)))))) 
(DEFMETHOD *O2 ((G1 E2) (G2 BVE2))
  (MAKE-INSTANCE 'BVE2 :COEF (VECTOR (* (GREF G1 :S) (GREF G2 :E1E2))))) 
(DEFMETHOD *O2 ((G1 E2) (G2 RE2))
  (MAKE-INSTANCE 'E2 :COEF
                 (VECTOR (* (GREF G1 :S) (GREF G2 :S))
                         (* (GREF G1 :E1) (GREF G2 :S))
                         (* (GREF G1 :E2) (GREF G2 :S))
                         (+ (* (GREF G1 :S) (GREF G2 :E1E2))
                            (* (GREF G1 :E1E2) (GREF G2 :S)))))) 
(DEFMETHOD *O2 ((G1 SE2) (G2 E2))
  (MAKE-INSTANCE 'E2 :COEF
                 (VECTOR (* (GREF G1 :S) (GREF G2 :S))
                         (* (GREF G1 :S) (GREF G2 :E1))
                         (* (GREF G1 :S) (GREF G2 :E2))
                         (* (GREF G1 :S) (GREF G2 :E1E2))))) 
(DEFMETHOD *O2 ((G1 SE2) (G2 SE2))
  (MAKE-INSTANCE 'SE2 :COEF (VECTOR (* (GREF G1 :S) (GREF G2 :S))))) 
(DEFMETHOD *O2 ((G1 SE2) (G2 VE2))
  (MAKE-INSTANCE 'VE2 :COEF
                 (VECTOR (* (GREF G1 :S) (GREF G2 :E1))
                         (* (GREF G1 :S) (GREF G2 :E2))))) 
(DEFMETHOD *O2 ((G1 SE2) (G2 BVE2))
  (MAKE-INSTANCE 'BVE2 :COEF (VECTOR (* (GREF G1 :S) (GREF G2 :E1E2))))) 
(DEFMETHOD *O2 ((G1 SE2) (G2 RE2))
  (MAKE-INSTANCE 'RE2 :COEF
                 (VECTOR (* (GREF G1 :S) (GREF G2 :S))
                         (* (GREF G1 :S) (GREF G2 :E1E2))))) 
(DEFMETHOD *O2 ((G1 VE2) (G2 E2))
  (MAKE-INSTANCE 'E2 :COEF
                 (VECTOR 0 (* (GREF G1 :E1) (GREF G2 :S))
                         (* (GREF G1 :E2) (GREF G2 :S))
                         (+ (* (GREF G1 :E1) (GREF G2 :E2))
                            (* -1 (GREF G1 :E2) (GREF G2 :E1)))))) 
(DEFMETHOD *O2 ((G1 VE2) (G2 SE2))
  (MAKE-INSTANCE 'VE2 :COEF
                 (VECTOR (* (GREF G1 :E1) (GREF G2 :S))
                         (* (GREF G1 :E2) (GREF G2 :S))))) 
(DEFMETHOD *O2 ((G1 VE2) (G2 VE2))
  (MAKE-INSTANCE 'BVE2 :COEF
                 (VECTOR
                  (+ (* (GREF G1 :E1) (GREF G2 :E2))
                     (* -1 (GREF G1 :E2) (GREF G2 :E1)))))) 
(DEFMETHOD *O2 ((G1 VE2) (G2 BVE2)) (MAKE-INSTANCE 'SE2 :COEF (VECTOR 0))) 
(DEFMETHOD *O2 ((G1 VE2) (G2 RE2))
  (MAKE-INSTANCE 'VE2 :COEF
                 (VECTOR (* (GREF G1 :E1) (GREF G2 :S))
                         (* (GREF G1 :E2) (GREF G2 :S))))) 
(DEFMETHOD *O2 ((G1 BVE2) (G2 E2))
  (MAKE-INSTANCE 'BVE2 :COEF (VECTOR (* (GREF G1 :E1E2) (GREF G2 :S))))) 
(DEFMETHOD *O2 ((G1 BVE2) (G2 SE2))
  (MAKE-INSTANCE 'BVE2 :COEF (VECTOR (* (GREF G1 :E1E2) (GREF G2 :S))))) 
(DEFMETHOD *O2 ((G1 BVE2) (G2 VE2)) (MAKE-INSTANCE 'SE2 :COEF (VECTOR 0))) 
(DEFMETHOD *O2 ((G1 BVE2) (G2 BVE2)) (MAKE-INSTANCE 'SE2 :COEF (VECTOR 0))) 
(DEFMETHOD *O2 ((G1 BVE2) (G2 RE2))
  (MAKE-INSTANCE 'BVE2 :COEF (VECTOR (* (GREF G1 :E1E2) (GREF G2 :S))))) 
(DEFMETHOD *O2 ((G1 RE2) (G2 E2))
  (MAKE-INSTANCE 'E2 :COEF
                 (VECTOR (* (GREF G1 :S) (GREF G2 :S))
                         (* (GREF G1 :S) (GREF G2 :E1))
                         (* (GREF G1 :S) (GREF G2 :E2))
                         (+ (* (GREF G1 :S) (GREF G2 :E1E2))
                            (* (GREF G1 :E1E2) (GREF G2 :S)))))) 
(DEFMETHOD *O2 ((G1 RE2) (G2 SE2))
  (MAKE-INSTANCE 'RE2 :COEF
                 (VECTOR (* (GREF G1 :S) (GREF G2 :S))
                         (* (GREF G1 :E1E2) (GREF G2 :S))))) 
(DEFMETHOD *O2 ((G1 RE2) (G2 VE2))
  (MAKE-INSTANCE 'VE2 :COEF
                 (VECTOR (* (GREF G1 :S) (GREF G2 :E1))
                         (* (GREF G1 :S) (GREF G2 :E2))))) 
(DEFMETHOD *O2 ((G1 RE2) (G2 BVE2))
  (MAKE-INSTANCE 'BVE2 :COEF (VECTOR (* (GREF G1 :S) (GREF G2 :E1E2))))) 
(DEFMETHOD *O2 ((G1 RE2) (G2 RE2))
  (MAKE-INSTANCE 'RE2 :COEF
                 (VECTOR (* (GREF G1 :S) (GREF G2 :S))
                         (+ (* (GREF G1 :S) (GREF G2 :E1E2))
                            (* (GREF G1 :E1E2) (GREF G2 :S)))))) 
(DEFMETHOD *G2 ((G1 E2) (G2 E2))
  (MAKE-INSTANCE 'E2 :COEF
                 (VECTOR
                  (+ (* (GREF G1 :S) (GREF G2 :S))
                     (* (GREF G1 :E1) (GREF G2 :E1))
                     (* (GREF G1 :E2) (GREF G2 :E2))
                     (* -1 (GREF G1 :E1E2) (GREF G2 :E1E2)))
                  (+ (* (GREF G1 :S) (GREF G2 :E1))
                     (* (GREF G1 :E1) (GREF G2 :S))
                     (* -1 (GREF G1 :E2) (GREF G2 :E1E2))
                     (* (GREF G1 :E1E2) (GREF G2 :E2)))
                  (+ (* (GREF G1 :S) (GREF G2 :E2))
                     (* (GREF G1 :E1) (GREF G2 :E1E2))
                     (* (GREF G1 :E2) (GREF G2 :S))
                     (* -1 (GREF G1 :E1E2) (GREF G2 :E1)))
                  (+ (* (GREF G1 :S) (GREF G2 :E1E2))
                     (* (GREF G1 :E1) (GREF G2 :E2))
                     (* -1 (GREF G1 :E2) (GREF G2 :E1))
                     (* (GREF G1 :E1E2) (GREF G2 :S)))))) 
(DEFMETHOD *G2 ((G1 E2) (G2 SE2))
  (MAKE-INSTANCE 'E2 :COEF
                 (VECTOR (* (GREF G1 :S) (GREF G2 :S))
                         (* (GREF G1 :E1) (GREF G2 :S))
                         (* (GREF G1 :E2) (GREF G2 :S))
                         (* (GREF G1 :E1E2) (GREF G2 :S))))) 
(DEFMETHOD *G2 ((G1 E2) (G2 VE2))
  (MAKE-INSTANCE 'E2 :COEF
                 (VECTOR
                  (+ (* (GREF G1 :E1) (GREF G2 :E1))
                     (* (GREF G1 :E2) (GREF G2 :E2)))
                  (+ (* (GREF G1 :S) (GREF G2 :E1))
                     (* (GREF G1 :E1E2) (GREF G2 :E2)))
                  (+ (* (GREF G1 :S) (GREF G2 :E2))
                     (* -1 (GREF G1 :E1E2) (GREF G2 :E1)))
                  (+ (* (GREF G1 :E1) (GREF G2 :E2))
                     (* -1 (GREF G1 :E2) (GREF G2 :E1)))))) 
(DEFMETHOD *G2 ((G1 E2) (G2 BVE2))
  (MAKE-INSTANCE 'E2 :COEF
                 (VECTOR (* -1 (GREF G1 :E1E2) (GREF G2 :E1E2))
                         (* -1 (GREF G1 :E2) (GREF G2 :E1E2))
                         (* (GREF G1 :E1) (GREF G2 :E1E2))
                         (* (GREF G1 :S) (GREF G2 :E1E2))))) 
(DEFMETHOD *G2 ((G1 E2) (G2 RE2))
  (MAKE-INSTANCE 'E2 :COEF
                 (VECTOR
                  (+ (* (GREF G1 :S) (GREF G2 :S))
                     (* -1 (GREF G1 :E1E2) (GREF G2 :E1E2)))
                  (+ (* (GREF G1 :E1) (GREF G2 :S))
                     (* -1 (GREF G1 :E2) (GREF G2 :E1E2)))
                  (+ (* (GREF G1 :E1) (GREF G2 :E1E2))
                     (* (GREF G1 :E2) (GREF G2 :S)))
                  (+ (* (GREF G1 :S) (GREF G2 :E1E2))
                     (* (GREF G1 :E1E2) (GREF G2 :S)))))) 
(DEFMETHOD *G2 ((G1 SE2) (G2 E2))
  (MAKE-INSTANCE 'E2 :COEF
                 (VECTOR (* (GREF G1 :S) (GREF G2 :S))
                         (* (GREF G1 :S) (GREF G2 :E1))
                         (* (GREF G1 :S) (GREF G2 :E2))
                         (* (GREF G1 :S) (GREF G2 :E1E2))))) 
(DEFMETHOD *G2 ((G1 SE2) (G2 SE2))
  (MAKE-INSTANCE 'SE2 :COEF (VECTOR (* (GREF G1 :S) (GREF G2 :S))))) 
(DEFMETHOD *G2 ((G1 SE2) (G2 VE2))
  (MAKE-INSTANCE 'VE2 :COEF
                 (VECTOR (* (GREF G1 :S) (GREF G2 :E1))
                         (* (GREF G1 :S) (GREF G2 :E2))))) 
(DEFMETHOD *G2 ((G1 SE2) (G2 BVE2))
  (MAKE-INSTANCE 'BVE2 :COEF (VECTOR (* (GREF G1 :S) (GREF G2 :E1E2))))) 
(DEFMETHOD *G2 ((G1 SE2) (G2 RE2))
  (MAKE-INSTANCE 'RE2 :COEF
                 (VECTOR (* (GREF G1 :S) (GREF G2 :S))
                         (* (GREF G1 :S) (GREF G2 :E1E2))))) 
(DEFMETHOD *G2 ((G1 VE2) (G2 E2))
  (MAKE-INSTANCE 'E2 :COEF
                 (VECTOR
                  (+ (* (GREF G1 :E1) (GREF G2 :E1))
                     (* (GREF G1 :E2) (GREF G2 :E2)))
                  (+ (* (GREF G1 :E1) (GREF G2 :S))
                     (* -1 (GREF G1 :E2) (GREF G2 :E1E2)))
                  (+ (* (GREF G1 :E1) (GREF G2 :E1E2))
                     (* (GREF G1 :E2) (GREF G2 :S)))
                  (+ (* (GREF G1 :E1) (GREF G2 :E2))
                     (* -1 (GREF G1 :E2) (GREF G2 :E1)))))) 
(DEFMETHOD *G2 ((G1 VE2) (G2 SE2))
  (MAKE-INSTANCE 'VE2 :COEF
                 (VECTOR (* (GREF G1 :E1) (GREF G2 :S))
                         (* (GREF G1 :E2) (GREF G2 :S))))) 
(DEFMETHOD *G2 ((G1 VE2) (G2 VE2))
  (MAKE-INSTANCE 'RE2 :COEF
                 (VECTOR
                  (+ (* (GREF G1 :E1) (GREF G2 :E1))
                     (* (GREF G1 :E2) (GREF G2 :E2)))
                  (+ (* (GREF G1 :E1) (GREF G2 :E2))
                     (* -1 (GREF G1 :E2) (GREF G2 :E1)))))) 
(DEFMETHOD *G2 ((G1 VE2) (G2 BVE2))
  (MAKE-INSTANCE 'VE2 :COEF
                 (VECTOR (* -1 (GREF G1 :E2) (GREF G2 :E1E2))
                         (* (GREF G1 :E1) (GREF G2 :E1E2))))) 
(DEFMETHOD *G2 ((G1 VE2) (G2 RE2))
  (MAKE-INSTANCE 'VE2 :COEF
                 (VECTOR
                  (+ (* (GREF G1 :E1) (GREF G2 :S))
                     (* -1 (GREF G1 :E2) (GREF G2 :E1E2)))
                  (+ (* (GREF G1 :E1) (GREF G2 :E1E2))
                     (* (GREF G1 :E2) (GREF G2 :S)))))) 
(DEFMETHOD *G2 ((G1 BVE2) (G2 E2))
  (MAKE-INSTANCE 'E2 :COEF
                 (VECTOR (* -1 (GREF G1 :E1E2) (GREF G2 :E1E2))
                         (* (GREF G1 :E1E2) (GREF G2 :E2))
                         (* -1 (GREF G1 :E1E2) (GREF G2 :E1))
                         (* (GREF G1 :E1E2) (GREF G2 :S))))) 
(DEFMETHOD *G2 ((G1 BVE2) (G2 SE2))
  (MAKE-INSTANCE 'BVE2 :COEF (VECTOR (* (GREF G1 :E1E2) (GREF G2 :S))))) 
(DEFMETHOD *G2 ((G1 BVE2) (G2 VE2))
  (MAKE-INSTANCE 'VE2 :COEF
                 (VECTOR (* (GREF G1 :E1E2) (GREF G2 :E2))
                         (* -1 (GREF G1 :E1E2) (GREF G2 :E1))))) 
(DEFMETHOD *G2 ((G1 BVE2) (G2 BVE2))
  (MAKE-INSTANCE 'SE2 :COEF (VECTOR (* -1 (GREF G1 :E1E2) (GREF G2 :E1E2))))) 
(DEFMETHOD *G2 ((G1 BVE2) (G2 RE2))
  (MAKE-INSTANCE 'RE2 :COEF
                 (VECTOR (* -1 (GREF G1 :E1E2) (GREF G2 :E1E2))
                         (* (GREF G1 :E1E2) (GREF G2 :S))))) 
(DEFMETHOD *G2 ((G1 RE2) (G2 E2))
  (MAKE-INSTANCE 'E2 :COEF
                 (VECTOR
                  (+ (* (GREF G1 :S) (GREF G2 :S))
                     (* -1 (GREF G1 :E1E2) (GREF G2 :E1E2)))
                  (+ (* (GREF G1 :S) (GREF G2 :E1))
                     (* (GREF G1 :E1E2) (GREF G2 :E2)))
                  (+ (* (GREF G1 :S) (GREF G2 :E2))
                     (* -1 (GREF G1 :E1E2) (GREF G2 :E1)))
                  (+ (* (GREF G1 :S) (GREF G2 :E1E2))
                     (* (GREF G1 :E1E2) (GREF G2 :S)))))) 
(DEFMETHOD *G2 ((G1 RE2) (G2 SE2))
  (MAKE-INSTANCE 'RE2 :COEF
                 (VECTOR (* (GREF G1 :S) (GREF G2 :S))
                         (* (GREF G1 :E1E2) (GREF G2 :S))))) 
(DEFMETHOD *G2 ((G1 RE2) (G2 VE2))
  (MAKE-INSTANCE 'VE2 :COEF
                 (VECTOR
                  (+ (* (GREF G1 :S) (GREF G2 :E1))
                     (* (GREF G1 :E1E2) (GREF G2 :E2)))
                  (+ (* (GREF G1 :S) (GREF G2 :E2))
                     (* -1 (GREF G1 :E1E2) (GREF G2 :E1)))))) 
(DEFMETHOD *G2 ((G1 RE2) (G2 BVE2))
  (MAKE-INSTANCE 'RE2 :COEF
                 (VECTOR (* -1 (GREF G1 :E1E2) (GREF G2 :E1E2))
                         (* (GREF G1 :S) (GREF G2 :E1E2))))) 
(DEFMETHOD *G2 ((G1 RE2) (G2 RE2))
  (MAKE-INSTANCE 'RE2 :COEF
                 (VECTOR
                  (+ (* (GREF G1 :S) (GREF G2 :S))
                     (* -1 (GREF G1 :E1E2) (GREF G2 :E1E2)))
                  (+ (* (GREF G1 :S) (GREF G2 :E1E2))
                     (* (GREF G1 :E1E2) (GREF G2 :S)))))) 
(DEFMETHOD *G3 ((G1 E2) (G2 E2) (G3 E2))
  (MAKE-INSTANCE 'E2 :COEF
                 (VECTOR
                  (+ (* (GREF G3 :E2) (GREF G2 :E1E2) (GREF G1 :E1))
                     (* (GREF G3 :E2) (GREF G1 :S) (GREF G2 :E2))
                     (*
                      (+ (* -1 (GREF G3 :E1) (GREF G2 :E1E2))
                         (* (GREF G3 :S) (GREF G2 :E2)))
                      (GREF G1 :E2))
                     (*
                      (+ (* (GREF G3 :E1) (GREF G1 :S))
                         (* (GREF G3 :S) (GREF G1 :E1)))
                      (GREF G2 :E1))
                     (*
                      (+ (* -1 (GREF G3 :S) (GREF G2 :E1E2))
                         (* (GREF G3 :E1) (GREF G2 :E2))
                         (* -1 (GREF G3 :E2) (GREF G2 :E1)))
                      (GREF G1 :E1E2))
                     (*
                      (+ (* (GREF G3 :S) (GREF G1 :S))
                         (* (GREF G3 :E1) (GREF G1 :E1))
                         (* (GREF G3 :E2) (GREF G1 :E2)))
                      (GREF G2 :S))
                     (*
                      (+ (* -1 (GREF G1 :S) (GREF G2 :E1E2))
                         (* -1 (GREF G1 :E1) (GREF G2 :E2))
                         (* (GREF G1 :E2) (GREF G2 :E1))
                         (* -1 (GREF G1 :E1E2) (GREF G2 :S)))
                      (GREF G3 :E1E2)))
                  (+ (* -1 (GREF G3 :E1E2) (GREF G2 :E1E2) (GREF G1 :E1))
                     (* -1 (GREF G3 :E1E2) (GREF G1 :S) (GREF G2 :E2))
                     (*
                      (+ (* -1 (GREF G3 :S) (GREF G2 :E1E2))
                         (* (GREF G3 :E1) (GREF G2 :E2)))
                      (GREF G1 :E2))
                     (*
                      (+ (* (GREF G3 :S) (GREF G1 :S))
                         (* (GREF G3 :E1) (GREF G1 :E1)))
                      (GREF G2 :E1))
                     (*
                      (+ (* -1 (GREF G3 :E1) (GREF G2 :E1E2))
                         (* (GREF G3 :S) (GREF G2 :E2))
                         (* (GREF G3 :E1E2) (GREF G2 :E1)))
                      (GREF G1 :E1E2))
                     (*
                      (+ (* (GREF G3 :E1) (GREF G1 :S))
                         (* (GREF G3 :S) (GREF G1 :E1))
                         (* -1 (GREF G3 :E1E2) (GREF G1 :E2)))
                      (GREF G2 :S))
                     (*
                      (+ (* (GREF G1 :S) (GREF G2 :E1E2))
                         (* (GREF G1 :E1) (GREF G2 :E2))
                         (* -1 (GREF G1 :E2) (GREF G2 :E1))
                         (* (GREF G1 :E1E2) (GREF G2 :S)))
                      (GREF G3 :E2)))
                  (+ (* (GREF G3 :S) (GREF G2 :E1E2) (GREF G1 :E1))
                     (* (GREF G3 :S) (GREF G1 :S) (GREF G2 :E2))
                     (*
                      (+ (* -1 (GREF G3 :E1E2) (GREF G2 :E1E2))
                         (* (GREF G3 :E2) (GREF G2 :E2)))
                      (GREF G1 :E2))
                     (*
                      (+ (* (GREF G3 :E1E2) (GREF G1 :S))
                         (* (GREF G3 :E2) (GREF G1 :E1)))
                      (GREF G2 :E1))
                     (*
                      (+ (* -1 (GREF G3 :E2) (GREF G2 :E1E2))
                         (* (GREF G3 :E1E2) (GREF G2 :E2))
                         (* -1 (GREF G3 :S) (GREF G2 :E1)))
                      (GREF G1 :E1E2))
                     (*
                      (+ (* (GREF G3 :E2) (GREF G1 :S))
                         (* (GREF G3 :E1E2) (GREF G1 :E1))
                         (* (GREF G3 :S) (GREF G1 :E2)))
                      (GREF G2 :S))
                     (*
                      (+ (* -1 (GREF G1 :S) (GREF G2 :E1E2))
                         (* -1 (GREF G1 :E1) (GREF G2 :E2))
                         (* (GREF G1 :E2) (GREF G2 :E1))
                         (* -1 (GREF G1 :E1E2) (GREF G2 :S)))
                      (GREF G3 :E1)))
                  (+ (* -1 (GREF G3 :E1) (GREF G2 :E1E2) (GREF G1 :E1))
                     (* -1 (GREF G3 :E1) (GREF G1 :S) (GREF G2 :E2))
                     (*
                      (+ (* -1 (GREF G3 :E2) (GREF G2 :E1E2))
                         (* (GREF G3 :E1E2) (GREF G2 :E2)))
                      (GREF G1 :E2))
                     (*
                      (+ (* (GREF G3 :E2) (GREF G1 :S))
                         (* (GREF G3 :E1E2) (GREF G1 :E1)))
                      (GREF G2 :E1))
                     (*
                      (+ (* -1 (GREF G3 :E1E2) (GREF G2 :E1E2))
                         (* (GREF G3 :E2) (GREF G2 :E2))
                         (* (GREF G3 :E1) (GREF G2 :E1)))
                      (GREF G1 :E1E2))
                     (*
                      (+ (* (GREF G3 :E1E2) (GREF G1 :S))
                         (* (GREF G3 :E2) (GREF G1 :E1))
                         (* -1 (GREF G3 :E1) (GREF G1 :E2)))
                      (GREF G2 :S))
                     (*
                      (+ (* (GREF G1 :S) (GREF G2 :E1E2))
                         (* (GREF G1 :E1) (GREF G2 :E2))
                         (* -1 (GREF G1 :E2) (GREF G2 :E1))
                         (* (GREF G1 :E1E2) (GREF G2 :S)))
                      (GREF G3 :S)))))) 
(DEFMETHOD *G3 ((G1 E2) (G2 E2) (G3 SE2))
  (MAKE-INSTANCE 'E2 :COEF
                 (VECTOR
                  (*
                   (+ (* (GREF G1 :S) (GREF G2 :S))
                      (* (GREF G1 :E1) (GREF G2 :E1))
                      (* (GREF G1 :E2) (GREF G2 :E2))
                      (* -1 (GREF G1 :E1E2) (GREF G2 :E1E2)))
                   (GREF G3 :S))
                  (*
                   (+ (* (GREF G1 :S) (GREF G2 :E1))
                      (* (GREF G1 :E1) (GREF G2 :S))
                      (* -1 (GREF G1 :E2) (GREF G2 :E1E2))
                      (* (GREF G1 :E1E2) (GREF G2 :E2)))
                   (GREF G3 :S))
                  (*
                   (+ (* (GREF G1 :S) (GREF G2 :E2))
                      (* (GREF G1 :E1) (GREF G2 :E1E2))
                      (* (GREF G1 :E2) (GREF G2 :S))
                      (* -1 (GREF G1 :E1E2) (GREF G2 :E1)))
                   (GREF G3 :S))
                  (*
                   (+ (* (GREF G1 :S) (GREF G2 :E1E2))
                      (* (GREF G1 :E1) (GREF G2 :E2))
                      (* -1 (GREF G1 :E2) (GREF G2 :E1))
                      (* (GREF G1 :E1E2) (GREF G2 :S)))
                   (GREF G3 :S))))) 
(DEFMETHOD *G3 ((G1 E2) (G2 E2) (G3 VE2))
  (MAKE-INSTANCE 'E2 :COEF
                 (VECTOR
                  (+ (* -1 (GREF G3 :E1) (GREF G2 :E1E2) (GREF G1 :E2))
                     (* (GREF G3 :E1) (GREF G1 :E1) (GREF G2 :S))
                     (* (GREF G3 :E1) (GREF G2 :E2) (GREF G1 :E1E2))
                     (* (GREF G3 :E1) (GREF G1 :S) (GREF G2 :E1))
                     (*
                      (+ (* (GREF G1 :S) (GREF G2 :E2))
                         (* (GREF G1 :E1) (GREF G2 :E1E2))
                         (* (GREF G1 :E2) (GREF G2 :S))
                         (* -1 (GREF G1 :E1E2) (GREF G2 :E1)))
                      (GREF G3 :E2)))
                  (+ (* (GREF G3 :E1) (GREF G2 :E2) (GREF G1 :E2))
                     (* (GREF G3 :E1) (GREF G1 :E1) (GREF G2 :E1))
                     (* -1 (GREF G3 :E1) (GREF G2 :E1E2) (GREF G1 :E1E2))
                     (* (GREF G3 :E1) (GREF G1 :S) (GREF G2 :S))
                     (*
                      (+ (* (GREF G1 :S) (GREF G2 :E1E2))
                         (* (GREF G1 :E1) (GREF G2 :E2))
                         (* -1 (GREF G1 :E2) (GREF G2 :E1))
                         (* (GREF G1 :E1E2) (GREF G2 :S)))
                      (GREF G3 :E2)))
                  (+ (* (GREF G3 :E2) (GREF G2 :E2) (GREF G1 :E2))
                     (* (GREF G3 :E2) (GREF G1 :E1) (GREF G2 :E1))
                     (* -1 (GREF G3 :E2) (GREF G2 :E1E2) (GREF G1 :E1E2))
                     (* (GREF G3 :E2) (GREF G1 :S) (GREF G2 :S))
                     (*
                      (+ (* -1 (GREF G1 :S) (GREF G2 :E1E2))
                         (* -1 (GREF G1 :E1) (GREF G2 :E2))
                         (* (GREF G1 :E2) (GREF G2 :E1))
                         (* -1 (GREF G1 :E1E2) (GREF G2 :S)))
                      (GREF G3 :E1)))
                  (+ (* -1 (GREF G3 :E2) (GREF G2 :E1E2) (GREF G1 :E2))
                     (* (GREF G3 :E2) (GREF G1 :E1) (GREF G2 :S))
                     (* (GREF G3 :E2) (GREF G2 :E2) (GREF G1 :E1E2))
                     (* (GREF G3 :E2) (GREF G1 :S) (GREF G2 :E1))
                     (*
                      (+ (* -1 (GREF G1 :S) (GREF G2 :E2))
                         (* -1 (GREF G1 :E1) (GREF G2 :E1E2))
                         (* -1 (GREF G1 :E2) (GREF G2 :S))
                         (* (GREF G1 :E1E2) (GREF G2 :E1)))
                      (GREF G3 :E1)))))) 
(DEFMETHOD *G3 ((G1 E2) (G2 E2) (G3 BVE2))
  (MAKE-INSTANCE 'E2 :COEF
                 (VECTOR
                  (*
                   (+ (* -1 (GREF G1 :S) (GREF G2 :E1E2))
                      (* -1 (GREF G1 :E1) (GREF G2 :E2))
                      (* (GREF G1 :E2) (GREF G2 :E1))
                      (* -1 (GREF G1 :E1E2) (GREF G2 :S)))
                   (GREF G3 :E1E2))
                  (*
                   (+ (* -1 (GREF G1 :S) (GREF G2 :E2))
                      (* -1 (GREF G1 :E1) (GREF G2 :E1E2))
                      (* -1 (GREF G1 :E2) (GREF G2 :S))
                      (* (GREF G1 :E1E2) (GREF G2 :E1)))
                   (GREF G3 :E1E2))
                  (*
                   (+ (* (GREF G1 :S) (GREF G2 :E1))
                      (* (GREF G1 :E1) (GREF G2 :S))
                      (* -1 (GREF G1 :E2) (GREF G2 :E1E2))
                      (* (GREF G1 :E1E2) (GREF G2 :E2)))
                   (GREF G3 :E1E2))
                  (*
                   (+ (* (GREF G1 :S) (GREF G2 :S))
                      (* (GREF G1 :E1) (GREF G2 :E1))
                      (* (GREF G1 :E2) (GREF G2 :E2))
                      (* -1 (GREF G1 :E1E2) (GREF G2 :E1E2)))
                   (GREF G3 :E1E2))))) 
(DEFMETHOD *G3 ((G1 E2) (G2 E2) (G3 RE2))
  (MAKE-INSTANCE 'E2 :COEF
                 (VECTOR
                  (+ (* (GREF G3 :S) (GREF G2 :E2) (GREF G1 :E2))
                     (* (GREF G3 :S) (GREF G1 :E1) (GREF G2 :E1))
                     (* -1 (GREF G3 :S) (GREF G2 :E1E2) (GREF G1 :E1E2))
                     (* (GREF G3 :S) (GREF G1 :S) (GREF G2 :S))
                     (*
                      (+ (* -1 (GREF G1 :S) (GREF G2 :E1E2))
                         (* -1 (GREF G1 :E1) (GREF G2 :E2))
                         (* (GREF G1 :E2) (GREF G2 :E1))
                         (* -1 (GREF G1 :E1E2) (GREF G2 :S)))
                      (GREF G3 :E1E2)))
                  (+ (* -1 (GREF G3 :S) (GREF G2 :E1E2) (GREF G1 :E2))
                     (* (GREF G3 :S) (GREF G1 :E1) (GREF G2 :S))
                     (* (GREF G3 :S) (GREF G2 :E2) (GREF G1 :E1E2))
                     (* (GREF G3 :S) (GREF G1 :S) (GREF G2 :E1))
                     (*
                      (+ (* -1 (GREF G1 :S) (GREF G2 :E2))
                         (* -1 (GREF G1 :E1) (GREF G2 :E1E2))
                         (* -1 (GREF G1 :E2) (GREF G2 :S))
                         (* (GREF G1 :E1E2) (GREF G2 :E1)))
                      (GREF G3 :E1E2)))
                  (+ (* -1 (GREF G3 :E1E2) (GREF G2 :E1E2) (GREF G1 :E2))
                     (* (GREF G3 :E1E2) (GREF G1 :E1) (GREF G2 :S))
                     (* (GREF G3 :E1E2) (GREF G2 :E2) (GREF G1 :E1E2))
                     (* (GREF G3 :E1E2) (GREF G1 :S) (GREF G2 :E1))
                     (*
                      (+ (* (GREF G1 :S) (GREF G2 :E2))
                         (* (GREF G1 :E1) (GREF G2 :E1E2))
                         (* (GREF G1 :E2) (GREF G2 :S))
                         (* -1 (GREF G1 :E1E2) (GREF G2 :E1)))
                      (GREF G3 :S)))
                  (+ (* (GREF G3 :E1E2) (GREF G2 :E2) (GREF G1 :E2))
                     (* (GREF G3 :E1E2) (GREF G1 :E1) (GREF G2 :E1))
                     (* -1 (GREF G3 :E1E2) (GREF G2 :E1E2) (GREF G1 :E1E2))
                     (* (GREF G3 :E1E2) (GREF G1 :S) (GREF G2 :S))
                     (*
                      (+ (* (GREF G1 :S) (GREF G2 :E1E2))
                         (* (GREF G1 :E1) (GREF G2 :E2))
                         (* -1 (GREF G1 :E2) (GREF G2 :E1))
                         (* (GREF G1 :E1E2) (GREF G2 :S)))
                      (GREF G3 :S)))))) 
(DEFMETHOD *G3 ((G1 E2) (G2 SE2) (G3 E2))
  (MAKE-INSTANCE 'E2 :COEF
                 (VECTOR
                  (+
                   (*
                    (+ (* (GREF G1 :S) (GREF G3 :S))
                       (* (GREF G1 :E1) (GREF G3 :E1))
                       (* (GREF G1 :E2) (GREF G3 :E2)))
                    (GREF G2 :S))
                   (* -1 (GREF G1 :E1E2) (GREF G2 :S) (GREF G3 :E1E2)))
                  (+
                   (*
                    (+ (* (GREF G1 :S) (GREF G3 :E1))
                       (* (GREF G1 :E1) (GREF G3 :S))
                       (* -1 (GREF G1 :E2) (GREF G3 :E1E2)))
                    (GREF G2 :S))
                   (* (GREF G1 :E1E2) (GREF G2 :S) (GREF G3 :E2)))
                  (+
                   (*
                    (+ (* (GREF G1 :S) (GREF G3 :E2))
                       (* (GREF G1 :E1) (GREF G3 :E1E2))
                       (* (GREF G1 :E2) (GREF G3 :S)))
                    (GREF G2 :S))
                   (* -1 (GREF G1 :E1E2) (GREF G2 :S) (GREF G3 :E1)))
                  (+
                   (*
                    (+ (* (GREF G1 :S) (GREF G3 :E1E2))
                       (* (GREF G1 :E1) (GREF G3 :E2))
                       (* -1 (GREF G1 :E2) (GREF G3 :E1)))
                    (GREF G2 :S))
                   (* (GREF G1 :E1E2) (GREF G2 :S) (GREF G3 :S)))))) 
(DEFMETHOD *G3 ((G1 E2) (G2 SE2) (G3 SE2))
  (MAKE-INSTANCE 'E2 :COEF
                 (VECTOR (* (GREF G1 :S) (GREF G2 :S) (GREF G3 :S))
                         (* (GREF G1 :E1) (GREF G2 :S) (GREF G3 :S))
                         (* (GREF G1 :E2) (GREF G2 :S) (GREF G3 :S))
                         (* (GREF G1 :E1E2) (GREF G2 :S) (GREF G3 :S))))) 
(DEFMETHOD *G3 ((G1 E2) (G2 SE2) (G3 VE2))
  (MAKE-INSTANCE 'E2 :COEF
                 (VECTOR
                  (+ (* (GREF G1 :E1) (GREF G3 :E1) (GREF G2 :S))
                     (* (GREF G1 :E2) (GREF G2 :S) (GREF G3 :E2)))
                  (+ (* (GREF G1 :S) (GREF G3 :E1) (GREF G2 :S))
                     (* (GREF G1 :E1E2) (GREF G2 :S) (GREF G3 :E2)))
                  (+ (* (GREF G1 :S) (GREF G3 :E2) (GREF G2 :S))
                     (* -1 (GREF G1 :E1E2) (GREF G2 :S) (GREF G3 :E1)))
                  (+ (* (GREF G1 :E1) (GREF G3 :E2) (GREF G2 :S))
                     (* -1 (GREF G1 :E2) (GREF G2 :S) (GREF G3 :E1)))))) 
(DEFMETHOD *G3 ((G1 E2) (G2 SE2) (G3 BVE2))
  (MAKE-INSTANCE 'E2 :COEF
                 (VECTOR (* -1 (GREF G1 :E1E2) (GREF G2 :S) (GREF G3 :E1E2))
                         (* -1 (GREF G1 :E2) (GREF G2 :S) (GREF G3 :E1E2))
                         (* (GREF G1 :E1) (GREF G2 :S) (GREF G3 :E1E2))
                         (* (GREF G1 :S) (GREF G2 :S) (GREF G3 :E1E2))))) 
(DEFMETHOD *G3 ((G1 E2) (G2 SE2) (G3 RE2))
  (MAKE-INSTANCE 'E2 :COEF
                 (VECTOR
                  (+ (* (GREF G1 :S) (GREF G3 :S) (GREF G2 :S))
                     (* -1 (GREF G1 :E1E2) (GREF G2 :S) (GREF G3 :E1E2)))
                  (+ (* (GREF G1 :E1) (GREF G3 :S) (GREF G2 :S))
                     (* -1 (GREF G1 :E2) (GREF G2 :S) (GREF G3 :E1E2)))
                  (+ (* (GREF G1 :E1) (GREF G3 :E1E2) (GREF G2 :S))
                     (* (GREF G1 :E2) (GREF G2 :S) (GREF G3 :S)))
                  (+ (* (GREF G1 :S) (GREF G3 :E1E2) (GREF G2 :S))
                     (* (GREF G1 :E1E2) (GREF G2 :S) (GREF G3 :S)))))) 
(DEFMETHOD *G3 ((G1 E2) (G2 VE2) (G3 E2))
  (MAKE-INSTANCE 'E2 :COEF
                 (VECTOR
                  (+
                   (*
                    (+ (* (GREF G3 :E1) (GREF G1 :E1E2))
                       (* (GREF G1 :S) (GREF G3 :E2)))
                    (GREF G2 :E2))
                   (* (GREF G3 :S) (GREF G2 :E2) (GREF G1 :E2))
                   (*
                    (+ (* (GREF G3 :E1) (GREF G1 :S))
                       (* -1 (GREF G1 :E1E2) (GREF G3 :E2))
                       (* (GREF G3 :S) (GREF G1 :E1)))
                    (GREF G2 :E1))
                   (*
                    (+ (* -1 (GREF G1 :E1) (GREF G2 :E2))
                       (* (GREF G1 :E2) (GREF G2 :E1)))
                    (GREF G3 :E1E2)))
                  (+
                   (*
                    (+ (* (GREF G3 :S) (GREF G1 :E1E2))
                       (* -1 (GREF G1 :S) (GREF G3 :E1E2)))
                    (GREF G2 :E2))
                   (* (GREF G3 :E1) (GREF G2 :E2) (GREF G1 :E2))
                   (*
                    (+ (* (GREF G3 :S) (GREF G1 :S))
                       (* (GREF G1 :E1E2) (GREF G3 :E1E2))
                       (* (GREF G3 :E1) (GREF G1 :E1)))
                    (GREF G2 :E1))
                   (*
                    (+ (* (GREF G1 :E1) (GREF G2 :E2))
                       (* -1 (GREF G1 :E2) (GREF G2 :E1)))
                    (GREF G3 :E2)))
                  (+
                   (*
                    (+ (* (GREF G3 :E1E2) (GREF G1 :E1E2))
                       (* (GREF G1 :S) (GREF G3 :S)))
                    (GREF G2 :E2))
                   (* (GREF G3 :E2) (GREF G2 :E2) (GREF G1 :E2))
                   (*
                    (+ (* (GREF G3 :E1E2) (GREF G1 :S))
                       (* -1 (GREF G1 :E1E2) (GREF G3 :S))
                       (* (GREF G3 :E2) (GREF G1 :E1)))
                    (GREF G2 :E1))
                   (*
                    (+ (* -1 (GREF G1 :E1) (GREF G2 :E2))
                       (* (GREF G1 :E2) (GREF G2 :E1)))
                    (GREF G3 :E1)))
                  (+
                   (*
                    (+ (* (GREF G3 :E2) (GREF G1 :E1E2))
                       (* -1 (GREF G1 :S) (GREF G3 :E1)))
                    (GREF G2 :E2))
                   (* (GREF G3 :E1E2) (GREF G2 :E2) (GREF G1 :E2))
                   (*
                    (+ (* (GREF G3 :E2) (GREF G1 :S))
                       (* (GREF G1 :E1E2) (GREF G3 :E1))
                       (* (GREF G3 :E1E2) (GREF G1 :E1)))
                    (GREF G2 :E1))
                   (*
                    (+ (* (GREF G1 :E1) (GREF G2 :E2))
                       (* -1 (GREF G1 :E2) (GREF G2 :E1)))
                    (GREF G3 :S)))))) 
(DEFMETHOD *G3 ((G1 E2) (G2 VE2) (G3 SE2))
  (MAKE-INSTANCE 'E2 :COEF
                 (VECTOR
                  (*
                   (+ (* (GREF G1 :E1) (GREF G2 :E1))
                      (* (GREF G1 :E2) (GREF G2 :E2)))
                   (GREF G3 :S))
                  (*
                   (+ (* (GREF G1 :S) (GREF G2 :E1))
                      (* (GREF G1 :E1E2) (GREF G2 :E2)))
                   (GREF G3 :S))
                  (*
                   (+ (* (GREF G1 :S) (GREF G2 :E2))
                      (* -1 (GREF G1 :E1E2) (GREF G2 :E1)))
                   (GREF G3 :S))
                  (*
                   (+ (* (GREF G1 :E1) (GREF G2 :E2))
                      (* -1 (GREF G1 :E2) (GREF G2 :E1)))
                   (GREF G3 :S))))) 
(DEFMETHOD *G3 ((G1 E2) (G2 VE2) (G3 VE2))
  (MAKE-INSTANCE 'E2 :COEF
                 (VECTOR
                  (+ (* (GREF G3 :E1) (GREF G2 :E2) (GREF G1 :E1E2))
                     (* (GREF G3 :E1) (GREF G1 :S) (GREF G2 :E1))
                     (*
                      (+ (* (GREF G1 :S) (GREF G2 :E2))
                         (* -1 (GREF G1 :E1E2) (GREF G2 :E1)))
                      (GREF G3 :E2)))
                  (+ (* (GREF G3 :E1) (GREF G2 :E2) (GREF G1 :E2))
                     (* (GREF G3 :E1) (GREF G1 :E1) (GREF G2 :E1))
                     (*
                      (+ (* (GREF G1 :E1) (GREF G2 :E2))
                         (* -1 (GREF G1 :E2) (GREF G2 :E1)))
                      (GREF G3 :E2)))
                  (+ (* (GREF G3 :E2) (GREF G2 :E2) (GREF G1 :E2))
                     (* (GREF G3 :E2) (GREF G1 :E1) (GREF G2 :E1))
                     (*
                      (+ (* -1 (GREF G1 :E1) (GREF G2 :E2))
                         (* (GREF G1 :E2) (GREF G2 :E1)))
                      (GREF G3 :E1)))
                  (+ (* (GREF G3 :E2) (GREF G2 :E2) (GREF G1 :E1E2))
                     (* (GREF G3 :E2) (GREF G1 :S) (GREF G2 :E1))
                     (*
                      (+ (* -1 (GREF G1 :S) (GREF G2 :E2))
                         (* (GREF G1 :E1E2) (GREF G2 :E1)))
                      (GREF G3 :E1)))))) 
(DEFMETHOD *G3 ((G1 E2) (G2 VE2) (G3 BVE2))
  (MAKE-INSTANCE 'E2 :COEF
                 (VECTOR
                  (*
                   (+ (* -1 (GREF G1 :E1) (GREF G2 :E2))
                      (* (GREF G1 :E2) (GREF G2 :E1)))
                   (GREF G3 :E1E2))
                  (*
                   (+ (* -1 (GREF G1 :S) (GREF G2 :E2))
                      (* (GREF G1 :E1E2) (GREF G2 :E1)))
                   (GREF G3 :E1E2))
                  (*
                   (+ (* (GREF G1 :S) (GREF G2 :E1))
                      (* (GREF G1 :E1E2) (GREF G2 :E2)))
                   (GREF G3 :E1E2))
                  (*
                   (+ (* (GREF G1 :E1) (GREF G2 :E1))
                      (* (GREF G1 :E2) (GREF G2 :E2)))
                   (GREF G3 :E1E2))))) 
(DEFMETHOD *G3 ((G1 E2) (G2 VE2) (G3 RE2))
  (MAKE-INSTANCE 'E2 :COEF
                 (VECTOR
                  (+ (* (GREF G3 :S) (GREF G2 :E2) (GREF G1 :E2))
                     (* (GREF G3 :S) (GREF G1 :E1) (GREF G2 :E1))
                     (*
                      (+ (* -1 (GREF G1 :E1) (GREF G2 :E2))
                         (* (GREF G1 :E2) (GREF G2 :E1)))
                      (GREF G3 :E1E2)))
                  (+ (* (GREF G3 :S) (GREF G2 :E2) (GREF G1 :E1E2))
                     (* (GREF G3 :S) (GREF G1 :S) (GREF G2 :E1))
                     (*
                      (+ (* -1 (GREF G1 :S) (GREF G2 :E2))
                         (* (GREF G1 :E1E2) (GREF G2 :E1)))
                      (GREF G3 :E1E2)))
                  (+ (* (GREF G3 :E1E2) (GREF G2 :E2) (GREF G1 :E1E2))
                     (* (GREF G3 :E1E2) (GREF G1 :S) (GREF G2 :E1))
                     (*
                      (+ (* (GREF G1 :S) (GREF G2 :E2))
                         (* -1 (GREF G1 :E1E2) (GREF G2 :E1)))
                      (GREF G3 :S)))
                  (+ (* (GREF G3 :E1E2) (GREF G2 :E2) (GREF G1 :E2))
                     (* (GREF G3 :E1E2) (GREF G1 :E1) (GREF G2 :E1))
                     (*
                      (+ (* (GREF G1 :E1) (GREF G2 :E2))
                         (* -1 (GREF G1 :E2) (GREF G2 :E1)))
                      (GREF G3 :S)))))) 
(DEFMETHOD *G3 ((G1 E2) (G2 BVE2) (G3 E2))
  (MAKE-INSTANCE 'E2 :COEF
                 (VECTOR
                  (+
                   (*
                    (+ (* -1 (GREF G1 :E1E2) (GREF G3 :S))
                       (* -1 (GREF G1 :E2) (GREF G3 :E1))
                       (* (GREF G1 :E1) (GREF G3 :E2)))
                    (GREF G2 :E1E2))
                   (* -1 (GREF G1 :S) (GREF G2 :E1E2) (GREF G3 :E1E2)))
                  (+
                   (*
                    (+ (* -1 (GREF G1 :E1E2) (GREF G3 :E1))
                       (* -1 (GREF G1 :E2) (GREF G3 :S))
                       (* -1 (GREF G1 :E1) (GREF G3 :E1E2)))
                    (GREF G2 :E1E2))
                   (* (GREF G1 :S) (GREF G2 :E1E2) (GREF G3 :E2)))
                  (+
                   (*
                    (+ (* -1 (GREF G1 :E1E2) (GREF G3 :E2))
                       (* -1 (GREF G1 :E2) (GREF G3 :E1E2))
                       (* (GREF G1 :E1) (GREF G3 :S)))
                    (GREF G2 :E1E2))
                   (* -1 (GREF G1 :S) (GREF G2 :E1E2) (GREF G3 :E1)))
                  (+
                   (*
                    (+ (* -1 (GREF G1 :E1E2) (GREF G3 :E1E2))
                       (* -1 (GREF G1 :E2) (GREF G3 :E2))
                       (* -1 (GREF G1 :E1) (GREF G3 :E1)))
                    (GREF G2 :E1E2))
                   (* (GREF G1 :S) (GREF G2 :E1E2) (GREF G3 :S)))))) 
(DEFMETHOD *G3 ((G1 E2) (G2 BVE2) (G3 SE2))
  (MAKE-INSTANCE 'E2 :COEF
                 (VECTOR (* -1 (GREF G1 :E1E2) (GREF G2 :E1E2) (GREF G3 :S))
                         (* -1 (GREF G1 :E2) (GREF G2 :E1E2) (GREF G3 :S))
                         (* (GREF G1 :E1) (GREF G2 :E1E2) (GREF G3 :S))
                         (* (GREF G1 :S) (GREF G2 :E1E2) (GREF G3 :S))))) 
(DEFMETHOD *G3 ((G1 E2) (G2 BVE2) (G3 VE2))
  (MAKE-INSTANCE 'E2 :COEF
                 (VECTOR
                  (+ (* -1 (GREF G1 :E2) (GREF G3 :E1) (GREF G2 :E1E2))
                     (* (GREF G1 :E1) (GREF G2 :E1E2) (GREF G3 :E2)))
                  (+ (* -1 (GREF G1 :E1E2) (GREF G3 :E1) (GREF G2 :E1E2))
                     (* (GREF G1 :S) (GREF G2 :E1E2) (GREF G3 :E2)))
                  (+ (* -1 (GREF G1 :E1E2) (GREF G3 :E2) (GREF G2 :E1E2))
                     (* -1 (GREF G1 :S) (GREF G2 :E1E2) (GREF G3 :E1)))
                  (+ (* -1 (GREF G1 :E2) (GREF G3 :E2) (GREF G2 :E1E2))
                     (* -1 (GREF G1 :E1) (GREF G2 :E1E2) (GREF G3 :E1)))))) 
(DEFMETHOD *G3 ((G1 E2) (G2 BVE2) (G3 BVE2))
  (MAKE-INSTANCE 'E2 :COEF
                 (VECTOR (* -1 (GREF G1 :S) (GREF G2 :E1E2) (GREF G3 :E1E2))
                         (* -1 (GREF G1 :E1) (GREF G2 :E1E2) (GREF G3 :E1E2))
                         (* -1 (GREF G1 :E2) (GREF G2 :E1E2) (GREF G3 :E1E2))
                         (* -1 (GREF G1 :E1E2) (GREF G2 :E1E2)
                            (GREF G3 :E1E2))))) 
(DEFMETHOD *G3 ((G1 E2) (G2 BVE2) (G3 RE2))
  (MAKE-INSTANCE 'E2 :COEF
                 (VECTOR
                  (+ (* -1 (GREF G1 :E1E2) (GREF G3 :S) (GREF G2 :E1E2))
                     (* -1 (GREF G1 :S) (GREF G2 :E1E2) (GREF G3 :E1E2)))
                  (+ (* -1 (GREF G1 :E2) (GREF G3 :S) (GREF G2 :E1E2))
                     (* -1 (GREF G1 :E1) (GREF G2 :E1E2) (GREF G3 :E1E2)))
                  (+ (* -1 (GREF G1 :E2) (GREF G3 :E1E2) (GREF G2 :E1E2))
                     (* (GREF G1 :E1) (GREF G2 :E1E2) (GREF G3 :S)))
                  (+ (* -1 (GREF G1 :E1E2) (GREF G3 :E1E2) (GREF G2 :E1E2))
                     (* (GREF G1 :S) (GREF G2 :E1E2) (GREF G3 :S)))))) 
(DEFMETHOD *G3 ((G1 E2) (G2 RE2) (G3 E2))
  (MAKE-INSTANCE 'E2 :COEF
                 (VECTOR
                  (+
                   (*
                    (+ (* -1 (GREF G3 :E1) (GREF G1 :E2))
                       (* (GREF G1 :E1) (GREF G3 :E2)))
                    (GREF G2 :E1E2))
                   (* -1 (GREF G3 :S) (GREF G2 :E1E2) (GREF G1 :E1E2))
                   (*
                    (+ (* (GREF G3 :E1) (GREF G1 :E1))
                       (* (GREF G1 :E2) (GREF G3 :E2))
                       (* (GREF G3 :S) (GREF G1 :S)))
                    (GREF G2 :S))
                   (*
                    (+ (* -1 (GREF G1 :S) (GREF G2 :E1E2))
                       (* -1 (GREF G1 :E1E2) (GREF G2 :S)))
                    (GREF G3 :E1E2)))
                  (+
                   (*
                    (+ (* -1 (GREF G3 :S) (GREF G1 :E2))
                       (* -1 (GREF G1 :E1) (GREF G3 :E1E2)))
                    (GREF G2 :E1E2))
                   (* -1 (GREF G3 :E1) (GREF G2 :E1E2) (GREF G1 :E1E2))
                   (*
                    (+ (* (GREF G3 :S) (GREF G1 :E1))
                       (* -1 (GREF G1 :E2) (GREF G3 :E1E2))
                       (* (GREF G3 :E1) (GREF G1 :S)))
                    (GREF G2 :S))
                   (*
                    (+ (* (GREF G1 :S) (GREF G2 :E1E2))
                       (* (GREF G1 :E1E2) (GREF G2 :S)))
                    (GREF G3 :E2)))
                  (+
                   (*
                    (+ (* -1 (GREF G3 :E1E2) (GREF G1 :E2))
                       (* (GREF G1 :E1) (GREF G3 :S)))
                    (GREF G2 :E1E2))
                   (* -1 (GREF G3 :E2) (GREF G2 :E1E2) (GREF G1 :E1E2))
                   (*
                    (+ (* (GREF G3 :E1E2) (GREF G1 :E1))
                       (* (GREF G1 :E2) (GREF G3 :S))
                       (* (GREF G3 :E2) (GREF G1 :S)))
                    (GREF G2 :S))
                   (*
                    (+ (* -1 (GREF G1 :S) (GREF G2 :E1E2))
                       (* -1 (GREF G1 :E1E2) (GREF G2 :S)))
                    (GREF G3 :E1)))
                  (+
                   (*
                    (+ (* -1 (GREF G3 :E2) (GREF G1 :E2))
                       (* -1 (GREF G1 :E1) (GREF G3 :E1)))
                    (GREF G2 :E1E2))
                   (* -1 (GREF G3 :E1E2) (GREF G2 :E1E2) (GREF G1 :E1E2))
                   (*
                    (+ (* (GREF G3 :E2) (GREF G1 :E1))
                       (* -1 (GREF G1 :E2) (GREF G3 :E1))
                       (* (GREF G3 :E1E2) (GREF G1 :S)))
                    (GREF G2 :S))
                   (*
                    (+ (* (GREF G1 :S) (GREF G2 :E1E2))
                       (* (GREF G1 :E1E2) (GREF G2 :S)))
                    (GREF G3 :S)))))) 
(DEFMETHOD *G3 ((G1 E2) (G2 RE2) (G3 SE2))
  (MAKE-INSTANCE 'E2 :COEF
                 (VECTOR
                  (*
                   (+ (* (GREF G1 :S) (GREF G2 :S))
                      (* -1 (GREF G1 :E1E2) (GREF G2 :E1E2)))
                   (GREF G3 :S))
                  (*
                   (+ (* (GREF G1 :E1) (GREF G2 :S))
                      (* -1 (GREF G1 :E2) (GREF G2 :E1E2)))
                   (GREF G3 :S))
                  (*
                   (+ (* (GREF G1 :E1) (GREF G2 :E1E2))
                      (* (GREF G1 :E2) (GREF G2 :S)))
                   (GREF G3 :S))
                  (*
                   (+ (* (GREF G1 :S) (GREF G2 :E1E2))
                      (* (GREF G1 :E1E2) (GREF G2 :S)))
                   (GREF G3 :S))))) 
(DEFMETHOD *G3 ((G1 E2) (G2 RE2) (G3 VE2))
  (MAKE-INSTANCE 'E2 :COEF
                 (VECTOR
                  (+ (* -1 (GREF G3 :E1) (GREF G2 :E1E2) (GREF G1 :E2))
                     (* (GREF G3 :E1) (GREF G1 :E1) (GREF G2 :S))
                     (*
                      (+ (* (GREF G1 :E1) (GREF G2 :E1E2))
                         (* (GREF G1 :E2) (GREF G2 :S)))
                      (GREF G3 :E2)))
                  (+ (* -1 (GREF G3 :E1) (GREF G2 :E1E2) (GREF G1 :E1E2))
                     (* (GREF G3 :E1) (GREF G1 :S) (GREF G2 :S))
                     (*
                      (+ (* (GREF G1 :S) (GREF G2 :E1E2))
                         (* (GREF G1 :E1E2) (GREF G2 :S)))
                      (GREF G3 :E2)))
                  (+ (* -1 (GREF G3 :E2) (GREF G2 :E1E2) (GREF G1 :E1E2))
                     (* (GREF G3 :E2) (GREF G1 :S) (GREF G2 :S))
                     (*
                      (+ (* -1 (GREF G1 :S) (GREF G2 :E1E2))
                         (* -1 (GREF G1 :E1E2) (GREF G2 :S)))
                      (GREF G3 :E1)))
                  (+ (* -1 (GREF G3 :E2) (GREF G2 :E1E2) (GREF G1 :E2))
                     (* (GREF G3 :E2) (GREF G1 :E1) (GREF G2 :S))
                     (*
                      (+ (* -1 (GREF G1 :E1) (GREF G2 :E1E2))
                         (* -1 (GREF G1 :E2) (GREF G2 :S)))
                      (GREF G3 :E1)))))) 
(DEFMETHOD *G3 ((G1 E2) (G2 RE2) (G3 BVE2))
  (MAKE-INSTANCE 'E2 :COEF
                 (VECTOR
                  (*
                   (+ (* -1 (GREF G1 :S) (GREF G2 :E1E2))
                      (* -1 (GREF G1 :E1E2) (GREF G2 :S)))
                   (GREF G3 :E1E2))
                  (*
                   (+ (* -1 (GREF G1 :E1) (GREF G2 :E1E2))
                      (* -1 (GREF G1 :E2) (GREF G2 :S)))
                   (GREF G3 :E1E2))
                  (*
                   (+ (* (GREF G1 :E1) (GREF G2 :S))
                      (* -1 (GREF G1 :E2) (GREF G2 :E1E2)))
                   (GREF G3 :E1E2))
                  (*
                   (+ (* (GREF G1 :S) (GREF G2 :S))
                      (* -1 (GREF G1 :E1E2) (GREF G2 :E1E2)))
                   (GREF G3 :E1E2))))) 
(DEFMETHOD *G3 ((G1 E2) (G2 RE2) (G3 RE2))
  (MAKE-INSTANCE 'E2 :COEF
                 (VECTOR
                  (+ (* -1 (GREF G3 :S) (GREF G2 :E1E2) (GREF G1 :E1E2))
                     (* (GREF G3 :S) (GREF G1 :S) (GREF G2 :S))
                     (*
                      (+ (* -1 (GREF G1 :S) (GREF G2 :E1E2))
                         (* -1 (GREF G1 :E1E2) (GREF G2 :S)))
                      (GREF G3 :E1E2)))
                  (+ (* -1 (GREF G3 :S) (GREF G2 :E1E2) (GREF G1 :E2))
                     (* (GREF G3 :S) (GREF G1 :E1) (GREF G2 :S))
                     (*
                      (+ (* -1 (GREF G1 :E1) (GREF G2 :E1E2))
                         (* -1 (GREF G1 :E2) (GREF G2 :S)))
                      (GREF G3 :E1E2)))
                  (+ (* -1 (GREF G3 :E1E2) (GREF G2 :E1E2) (GREF G1 :E2))
                     (* (GREF G3 :E1E2) (GREF G1 :E1) (GREF G2 :S))
                     (*
                      (+ (* (GREF G1 :E1) (GREF G2 :E1E2))
                         (* (GREF G1 :E2) (GREF G2 :S)))
                      (GREF G3 :S)))
                  (+ (* -1 (GREF G3 :E1E2) (GREF G2 :E1E2) (GREF G1 :E1E2))
                     (* (GREF G3 :E1E2) (GREF G1 :S) (GREF G2 :S))
                     (*
                      (+ (* (GREF G1 :S) (GREF G2 :E1E2))
                         (* (GREF G1 :E1E2) (GREF G2 :S)))
                      (GREF G3 :S)))))) 
(DEFMETHOD *G3 ((G1 SE2) (G2 E2) (G3 E2))
  (MAKE-INSTANCE 'E2 :COEF
                 (VECTOR
                  (+
                   (*
                    (+ (* (GREF G2 :S) (GREF G3 :S))
                       (* (GREF G2 :E1) (GREF G3 :E1))
                       (* (GREF G2 :E2) (GREF G3 :E2)))
                    (GREF G1 :S))
                   (* -1 (GREF G1 :S) (GREF G2 :E1E2) (GREF G3 :E1E2)))
                  (+
                   (*
                    (+ (* (GREF G2 :S) (GREF G3 :E1))
                       (* (GREF G2 :E1) (GREF G3 :S))
                       (* -1 (GREF G2 :E2) (GREF G3 :E1E2)))
                    (GREF G1 :S))
                   (* (GREF G1 :S) (GREF G2 :E1E2) (GREF G3 :E2)))
                  (+
                   (*
                    (+ (* (GREF G2 :S) (GREF G3 :E2))
                       (* (GREF G2 :E1) (GREF G3 :E1E2))
                       (* (GREF G2 :E2) (GREF G3 :S)))
                    (GREF G1 :S))
                   (* -1 (GREF G1 :S) (GREF G2 :E1E2) (GREF G3 :E1)))
                  (+
                   (*
                    (+ (* (GREF G2 :S) (GREF G3 :E1E2))
                       (* (GREF G2 :E1) (GREF G3 :E2))
                       (* -1 (GREF G2 :E2) (GREF G3 :E1)))
                    (GREF G1 :S))
                   (* (GREF G1 :S) (GREF G2 :E1E2) (GREF G3 :S)))))) 
(DEFMETHOD *G3 ((G1 SE2) (G2 E2) (G3 SE2))
  (MAKE-INSTANCE 'E2 :COEF
                 (VECTOR (* (GREF G1 :S) (GREF G2 :S) (GREF G3 :S))
                         (* (GREF G1 :S) (GREF G2 :E1) (GREF G3 :S))
                         (* (GREF G1 :S) (GREF G2 :E2) (GREF G3 :S))
                         (* (GREF G1 :S) (GREF G2 :E1E2) (GREF G3 :S))))) 
(DEFMETHOD *G3 ((G1 SE2) (G2 E2) (G3 VE2))
  (MAKE-INSTANCE 'E2 :COEF
                 (VECTOR
                  (+ (* (GREF G2 :E1) (GREF G3 :E1) (GREF G1 :S))
                     (* (GREF G1 :S) (GREF G2 :E2) (GREF G3 :E2)))
                  (+ (* (GREF G2 :S) (GREF G3 :E1) (GREF G1 :S))
                     (* (GREF G1 :S) (GREF G2 :E1E2) (GREF G3 :E2)))
                  (+ (* (GREF G2 :S) (GREF G3 :E2) (GREF G1 :S))
                     (* -1 (GREF G1 :S) (GREF G2 :E1E2) (GREF G3 :E1)))
                  (+ (* (GREF G2 :E1) (GREF G3 :E2) (GREF G1 :S))
                     (* -1 (GREF G1 :S) (GREF G2 :E2) (GREF G3 :E1)))))) 
(DEFMETHOD *G3 ((G1 SE2) (G2 E2) (G3 BVE2))
  (MAKE-INSTANCE 'E2 :COEF
                 (VECTOR (* -1 (GREF G1 :S) (GREF G2 :E1E2) (GREF G3 :E1E2))
                         (* -1 (GREF G1 :S) (GREF G2 :E2) (GREF G3 :E1E2))
                         (* (GREF G1 :S) (GREF G2 :E1) (GREF G3 :E1E2))
                         (* (GREF G1 :S) (GREF G2 :S) (GREF G3 :E1E2))))) 
(DEFMETHOD *G3 ((G1 SE2) (G2 E2) (G3 RE2))
  (MAKE-INSTANCE 'E2 :COEF
                 (VECTOR
                  (+ (* (GREF G2 :S) (GREF G3 :S) (GREF G1 :S))
                     (* -1 (GREF G1 :S) (GREF G2 :E1E2) (GREF G3 :E1E2)))
                  (+ (* (GREF G2 :E1) (GREF G3 :S) (GREF G1 :S))
                     (* -1 (GREF G1 :S) (GREF G2 :E2) (GREF G3 :E1E2)))
                  (+ (* (GREF G2 :E1) (GREF G3 :E1E2) (GREF G1 :S))
                     (* (GREF G1 :S) (GREF G2 :E2) (GREF G3 :S)))
                  (+ (* (GREF G2 :S) (GREF G3 :E1E2) (GREF G1 :S))
                     (* (GREF G1 :S) (GREF G2 :E1E2) (GREF G3 :S)))))) 
(DEFMETHOD *G3 ((G1 SE2) (G2 SE2) (G3 E2))
  (MAKE-INSTANCE 'E2 :COEF
                 (VECTOR (* (GREF G1 :S) (GREF G2 :S) (GREF G3 :S))
                         (* (GREF G1 :S) (GREF G2 :S) (GREF G3 :E1))
                         (* (GREF G1 :S) (GREF G2 :S) (GREF G3 :E2))
                         (* (GREF G1 :S) (GREF G2 :S) (GREF G3 :E1E2))))) 
(DEFMETHOD *G3 ((G1 SE2) (G2 SE2) (G3 SE2))
  (MAKE-INSTANCE 'SE2 :COEF
                 (VECTOR (* (GREF G1 :S) (GREF G2 :S) (GREF G3 :S))))) 
(DEFMETHOD *G3 ((G1 SE2) (G2 SE2) (G3 VE2))
  (MAKE-INSTANCE 'VE2 :COEF
                 (VECTOR (* (GREF G1 :S) (GREF G2 :S) (GREF G3 :E1))
                         (* (GREF G1 :S) (GREF G2 :S) (GREF G3 :E2))))) 
(DEFMETHOD *G3 ((G1 SE2) (G2 SE2) (G3 BVE2))
  (MAKE-INSTANCE 'BVE2 :COEF
                 (VECTOR (* (GREF G1 :S) (GREF G2 :S) (GREF G3 :E1E2))))) 
(DEFMETHOD *G3 ((G1 SE2) (G2 SE2) (G3 RE2))
  (MAKE-INSTANCE 'RE2 :COEF
                 (VECTOR (* (GREF G1 :S) (GREF G2 :S) (GREF G3 :S))
                         (* (GREF G1 :S) (GREF G2 :S) (GREF G3 :E1E2))))) 
(DEFMETHOD *G3 ((G1 SE2) (G2 VE2) (G3 E2))
  (MAKE-INSTANCE 'E2 :COEF
                 (VECTOR
                  (+ (* (GREF G2 :E1) (GREF G3 :E1) (GREF G1 :S))
                     (* (GREF G1 :S) (GREF G2 :E2) (GREF G3 :E2)))
                  (+ (* (GREF G2 :E1) (GREF G3 :S) (GREF G1 :S))
                     (* -1 (GREF G1 :S) (GREF G2 :E2) (GREF G3 :E1E2)))
                  (+ (* (GREF G2 :E1) (GREF G3 :E1E2) (GREF G1 :S))
                     (* (GREF G1 :S) (GREF G2 :E2) (GREF G3 :S)))
                  (+ (* (GREF G2 :E1) (GREF G3 :E2) (GREF G1 :S))
                     (* -1 (GREF G1 :S) (GREF G2 :E2) (GREF G3 :E1)))))) 
(DEFMETHOD *G3 ((G1 SE2) (G2 VE2) (G3 SE2))
  (MAKE-INSTANCE 'VE2 :COEF
                 (VECTOR (* (GREF G1 :S) (GREF G2 :E1) (GREF G3 :S))
                         (* (GREF G1 :S) (GREF G2 :E2) (GREF G3 :S))))) 
(DEFMETHOD *G3 ((G1 SE2) (G2 VE2) (G3 VE2))
  (MAKE-INSTANCE 'RE2 :COEF
                 (VECTOR
                  (+ (* (GREF G2 :E1) (GREF G3 :E1) (GREF G1 :S))
                     (* (GREF G1 :S) (GREF G2 :E2) (GREF G3 :E2)))
                  (+ (* (GREF G2 :E1) (GREF G3 :E2) (GREF G1 :S))
                     (* -1 (GREF G1 :S) (GREF G2 :E2) (GREF G3 :E1)))))) 
(DEFMETHOD *G3 ((G1 SE2) (G2 VE2) (G3 BVE2))
  (MAKE-INSTANCE 'VE2 :COEF
                 (VECTOR (* -1 (GREF G1 :S) (GREF G2 :E2) (GREF G3 :E1E2))
                         (* (GREF G1 :S) (GREF G2 :E1) (GREF G3 :E1E2))))) 
(DEFMETHOD *G3 ((G1 SE2) (G2 VE2) (G3 RE2))
  (MAKE-INSTANCE 'VE2 :COEF
                 (VECTOR
                  (+ (* (GREF G2 :E1) (GREF G3 :S) (GREF G1 :S))
                     (* -1 (GREF G1 :S) (GREF G2 :E2) (GREF G3 :E1E2)))
                  (+ (* (GREF G2 :E1) (GREF G3 :E1E2) (GREF G1 :S))
                     (* (GREF G1 :S) (GREF G2 :E2) (GREF G3 :S)))))) 
(DEFMETHOD *G3 ((G1 SE2) (G2 BVE2) (G3 E2))
  (MAKE-INSTANCE 'E2 :COEF
                 (VECTOR (* -1 (GREF G1 :S) (GREF G2 :E1E2) (GREF G3 :E1E2))
                         (* (GREF G1 :S) (GREF G2 :E1E2) (GREF G3 :E2))
                         (* -1 (GREF G1 :S) (GREF G2 :E1E2) (GREF G3 :E1))
                         (* (GREF G1 :S) (GREF G2 :E1E2) (GREF G3 :S))))) 
(DEFMETHOD *G3 ((G1 SE2) (G2 BVE2) (G3 SE2))
  (MAKE-INSTANCE 'BVE2 :COEF
                 (VECTOR (* (GREF G1 :S) (GREF G2 :E1E2) (GREF G3 :S))))) 
(DEFMETHOD *G3 ((G1 SE2) (G2 BVE2) (G3 VE2))
  (MAKE-INSTANCE 'VE2 :COEF
                 (VECTOR (* (GREF G1 :S) (GREF G2 :E1E2) (GREF G3 :E2))
                         (* -1 (GREF G1 :S) (GREF G2 :E1E2) (GREF G3 :E1))))) 
(DEFMETHOD *G3 ((G1 SE2) (G2 BVE2) (G3 BVE2))
  (MAKE-INSTANCE 'SE2 :COEF
                 (VECTOR (* -1 (GREF G1 :S) (GREF G2 :E1E2) (GREF G3 :E1E2))))) 
(DEFMETHOD *G3 ((G1 SE2) (G2 BVE2) (G3 RE2))
  (MAKE-INSTANCE 'RE2 :COEF
                 (VECTOR (* -1 (GREF G1 :S) (GREF G2 :E1E2) (GREF G3 :E1E2))
                         (* (GREF G1 :S) (GREF G2 :E1E2) (GREF G3 :S))))) 
(DEFMETHOD *G3 ((G1 SE2) (G2 RE2) (G3 E2))
  (MAKE-INSTANCE 'E2 :COEF
                 (VECTOR
                  (+ (* (GREF G2 :S) (GREF G3 :S) (GREF G1 :S))
                     (* -1 (GREF G1 :S) (GREF G2 :E1E2) (GREF G3 :E1E2)))
                  (+ (* (GREF G2 :S) (GREF G3 :E1) (GREF G1 :S))
                     (* (GREF G1 :S) (GREF G2 :E1E2) (GREF G3 :E2)))
                  (+ (* (GREF G2 :S) (GREF G3 :E2) (GREF G1 :S))
                     (* -1 (GREF G1 :S) (GREF G2 :E1E2) (GREF G3 :E1)))
                  (+ (* (GREF G2 :S) (GREF G3 :E1E2) (GREF G1 :S))
                     (* (GREF G1 :S) (GREF G2 :E1E2) (GREF G3 :S)))))) 
(DEFMETHOD *G3 ((G1 SE2) (G2 RE2) (G3 SE2))
  (MAKE-INSTANCE 'RE2 :COEF
                 (VECTOR (* (GREF G1 :S) (GREF G2 :S) (GREF G3 :S))
                         (* (GREF G1 :S) (GREF G2 :E1E2) (GREF G3 :S))))) 
(DEFMETHOD *G3 ((G1 SE2) (G2 RE2) (G3 VE2))
  (MAKE-INSTANCE 'VE2 :COEF
                 (VECTOR
                  (+ (* (GREF G2 :S) (GREF G3 :E1) (GREF G1 :S))
                     (* (GREF G1 :S) (GREF G2 :E1E2) (GREF G3 :E2)))
                  (+ (* (GREF G2 :S) (GREF G3 :E2) (GREF G1 :S))
                     (* -1 (GREF G1 :S) (GREF G2 :E1E2) (GREF G3 :E1)))))) 
(DEFMETHOD *G3 ((G1 SE2) (G2 RE2) (G3 BVE2))
  (MAKE-INSTANCE 'RE2 :COEF
                 (VECTOR (* -1 (GREF G1 :S) (GREF G2 :E1E2) (GREF G3 :E1E2))
                         (* (GREF G1 :S) (GREF G2 :S) (GREF G3 :E1E2))))) 
(DEFMETHOD *G3 ((G1 SE2) (G2 RE2) (G3 RE2))
  (MAKE-INSTANCE 'RE2 :COEF
                 (VECTOR
                  (+ (* (GREF G2 :S) (GREF G3 :S) (GREF G1 :S))
                     (* -1 (GREF G1 :S) (GREF G2 :E1E2) (GREF G3 :E1E2)))
                  (+ (* (GREF G2 :S) (GREF G3 :E1E2) (GREF G1 :S))
                     (* (GREF G1 :S) (GREF G2 :E1E2) (GREF G3 :S)))))) 
(DEFMETHOD *G3 ((G1 VE2) (G2 E2) (G3 E2))
  (MAKE-INSTANCE 'E2 :COEF
                 (VECTOR
                  (+
                   (*
                    (+ (* (GREF G3 :E1) (GREF G2 :S))
                       (* (GREF G2 :E1E2) (GREF G3 :E2)))
                    (GREF G1 :E1))
                   (*
                    (+ (* -1 (GREF G3 :E1) (GREF G2 :E1E2))
                       (* (GREF G2 :S) (GREF G3 :E2))
                       (* (GREF G3 :S) (GREF G2 :E2)))
                    (GREF G1 :E2))
                   (* (GREF G3 :S) (GREF G1 :E1) (GREF G2 :E1))
                   (*
                    (+ (* -1 (GREF G1 :E1) (GREF G2 :E2))
                       (* (GREF G1 :E2) (GREF G2 :E1)))
                    (GREF G3 :E1E2)))
                  (+
                   (*
                    (+ (* (GREF G3 :S) (GREF G2 :S))
                       (* -1 (GREF G2 :E1E2) (GREF G3 :E1E2)))
                    (GREF G1 :E1))
                   (*
                    (+ (* -1 (GREF G3 :S) (GREF G2 :E1E2))
                       (* -1 (GREF G2 :S) (GREF G3 :E1E2))
                       (* (GREF G3 :E1) (GREF G2 :E2)))
                    (GREF G1 :E2))
                   (* (GREF G3 :E1) (GREF G1 :E1) (GREF G2 :E1))
                   (*
                    (+ (* (GREF G1 :E1) (GREF G2 :E2))
                       (* -1 (GREF G1 :E2) (GREF G2 :E1)))
                    (GREF G3 :E2)))
                  (+
                   (*
                    (+ (* (GREF G3 :E1E2) (GREF G2 :S))
                       (* (GREF G2 :E1E2) (GREF G3 :S)))
                    (GREF G1 :E1))
                   (*
                    (+ (* -1 (GREF G3 :E1E2) (GREF G2 :E1E2))
                       (* (GREF G2 :S) (GREF G3 :S))
                       (* (GREF G3 :E2) (GREF G2 :E2)))
                    (GREF G1 :E2))
                   (* (GREF G3 :E2) (GREF G1 :E1) (GREF G2 :E1))
                   (*
                    (+ (* -1 (GREF G1 :E1) (GREF G2 :E2))
                       (* (GREF G1 :E2) (GREF G2 :E1)))
                    (GREF G3 :E1)))
                  (+
                   (*
                    (+ (* (GREF G3 :E2) (GREF G2 :S))
                       (* -1 (GREF G2 :E1E2) (GREF G3 :E1)))
                    (GREF G1 :E1))
                   (*
                    (+ (* -1 (GREF G3 :E2) (GREF G2 :E1E2))
                       (* -1 (GREF G2 :S) (GREF G3 :E1))
                       (* (GREF G3 :E1E2) (GREF G2 :E2)))
                    (GREF G1 :E2))
                   (* (GREF G3 :E1E2) (GREF G1 :E1) (GREF G2 :E1))
                   (*
                    (+ (* (GREF G1 :E1) (GREF G2 :E2))
                       (* -1 (GREF G1 :E2) (GREF G2 :E1)))
                    (GREF G3 :S)))))) 
(DEFMETHOD *G3 ((G1 VE2) (G2 E2) (G3 SE2))
  (MAKE-INSTANCE 'E2 :COEF
                 (VECTOR
                  (*
                   (+ (* (GREF G1 :E1) (GREF G2 :E1))
                      (* (GREF G1 :E2) (GREF G2 :E2)))
                   (GREF G3 :S))
                  (*
                   (+ (* (GREF G1 :E1) (GREF G2 :S))
                      (* -1 (GREF G1 :E2) (GREF G2 :E1E2)))
                   (GREF G3 :S))
                  (*
                   (+ (* (GREF G1 :E1) (GREF G2 :E1E2))
                      (* (GREF G1 :E2) (GREF G2 :S)))
                   (GREF G3 :S))
                  (*
                   (+ (* (GREF G1 :E1) (GREF G2 :E2))
                      (* -1 (GREF G1 :E2) (GREF G2 :E1)))
                   (GREF G3 :S))))) 
(DEFMETHOD *G3 ((G1 VE2) (G2 E2) (G3 VE2))
  (MAKE-INSTANCE 'E2 :COEF
                 (VECTOR
                  (+ (* -1 (GREF G3 :E1) (GREF G2 :E1E2) (GREF G1 :E2))
                     (* (GREF G3 :E1) (GREF G1 :E1) (GREF G2 :S))
                     (*
                      (+ (* (GREF G1 :E1) (GREF G2 :E1E2))
                         (* (GREF G1 :E2) (GREF G2 :S)))
                      (GREF G3 :E2)))
                  (+ (* (GREF G3 :E1) (GREF G2 :E2) (GREF G1 :E2))
                     (* (GREF G3 :E1) (GREF G1 :E1) (GREF G2 :E1))
                     (*
                      (+ (* (GREF G1 :E1) (GREF G2 :E2))
                         (* -1 (GREF G1 :E2) (GREF G2 :E1)))
                      (GREF G3 :E2)))
                  (+ (* (GREF G3 :E2) (GREF G2 :E2) (GREF G1 :E2))
                     (* (GREF G3 :E2) (GREF G1 :E1) (GREF G2 :E1))
                     (*
                      (+ (* -1 (GREF G1 :E1) (GREF G2 :E2))
                         (* (GREF G1 :E2) (GREF G2 :E1)))
                      (GREF G3 :E1)))
                  (+ (* -1 (GREF G3 :E2) (GREF G2 :E1E2) (GREF G1 :E2))
                     (* (GREF G3 :E2) (GREF G1 :E1) (GREF G2 :S))
                     (*
                      (+ (* -1 (GREF G1 :E1) (GREF G2 :E1E2))
                         (* -1 (GREF G1 :E2) (GREF G2 :S)))
                      (GREF G3 :E1)))))) 
(DEFMETHOD *G3 ((G1 VE2) (G2 E2) (G3 BVE2))
  (MAKE-INSTANCE 'E2 :COEF
                 (VECTOR
                  (*
                   (+ (* -1 (GREF G1 :E1) (GREF G2 :E2))
                      (* (GREF G1 :E2) (GREF G2 :E1)))
                   (GREF G3 :E1E2))
                  (*
                   (+ (* -1 (GREF G1 :E1) (GREF G2 :E1E2))
                      (* -1 (GREF G1 :E2) (GREF G2 :S)))
                   (GREF G3 :E1E2))
                  (*
                   (+ (* (GREF G1 :E1) (GREF G2 :S))
                      (* -1 (GREF G1 :E2) (GREF G2 :E1E2)))
                   (GREF G3 :E1E2))
                  (*
                   (+ (* (GREF G1 :E1) (GREF G2 :E1))
                      (* (GREF G1 :E2) (GREF G2 :E2)))
                   (GREF G3 :E1E2))))) 
(DEFMETHOD *G3 ((G1 VE2) (G2 E2) (G3 RE2))
  (MAKE-INSTANCE 'E2 :COEF
                 (VECTOR
                  (+ (* (GREF G3 :S) (GREF G2 :E2) (GREF G1 :E2))
                     (* (GREF G3 :S) (GREF G1 :E1) (GREF G2 :E1))
                     (*
                      (+ (* -1 (GREF G1 :E1) (GREF G2 :E2))
                         (* (GREF G1 :E2) (GREF G2 :E1)))
                      (GREF G3 :E1E2)))
                  (+ (* -1 (GREF G3 :S) (GREF G2 :E1E2) (GREF G1 :E2))
                     (* (GREF G3 :S) (GREF G1 :E1) (GREF G2 :S))
                     (*
                      (+ (* -1 (GREF G1 :E1) (GREF G2 :E1E2))
                         (* -1 (GREF G1 :E2) (GREF G2 :S)))
                      (GREF G3 :E1E2)))
                  (+ (* -1 (GREF G3 :E1E2) (GREF G2 :E1E2) (GREF G1 :E2))
                     (* (GREF G3 :E1E2) (GREF G1 :E1) (GREF G2 :S))
                     (*
                      (+ (* (GREF G1 :E1) (GREF G2 :E1E2))
                         (* (GREF G1 :E2) (GREF G2 :S)))
                      (GREF G3 :S)))
                  (+ (* (GREF G3 :E1E2) (GREF G2 :E2) (GREF G1 :E2))
                     (* (GREF G3 :E1E2) (GREF G1 :E1) (GREF G2 :E1))
                     (*
                      (+ (* (GREF G1 :E1) (GREF G2 :E2))
                         (* -1 (GREF G1 :E2) (GREF G2 :E1)))
                      (GREF G3 :S)))))) 
(DEFMETHOD *G3 ((G1 VE2) (G2 SE2) (G3 E2))
  (MAKE-INSTANCE 'E2 :COEF
                 (VECTOR
                  (+ (* (GREF G1 :E1) (GREF G3 :E1) (GREF G2 :S))
                     (* (GREF G1 :E2) (GREF G2 :S) (GREF G3 :E2)))
                  (+ (* (GREF G1 :E1) (GREF G3 :S) (GREF G2 :S))
                     (* -1 (GREF G1 :E2) (GREF G2 :S) (GREF G3 :E1E2)))
                  (+ (* (GREF G1 :E1) (GREF G3 :E1E2) (GREF G2 :S))
                     (* (GREF G1 :E2) (GREF G2 :S) (GREF G3 :S)))
                  (+ (* (GREF G1 :E1) (GREF G3 :E2) (GREF G2 :S))
                     (* -1 (GREF G1 :E2) (GREF G2 :S) (GREF G3 :E1)))))) 
(DEFMETHOD *G3 ((G1 VE2) (G2 SE2) (G3 SE2))
  (MAKE-INSTANCE 'VE2 :COEF
                 (VECTOR (* (GREF G1 :E1) (GREF G2 :S) (GREF G3 :S))
                         (* (GREF G1 :E2) (GREF G2 :S) (GREF G3 :S))))) 
(DEFMETHOD *G3 ((G1 VE2) (G2 SE2) (G3 VE2))
  (MAKE-INSTANCE 'RE2 :COEF
                 (VECTOR
                  (+ (* (GREF G1 :E1) (GREF G3 :E1) (GREF G2 :S))
                     (* (GREF G1 :E2) (GREF G2 :S) (GREF G3 :E2)))
                  (+ (* (GREF G1 :E1) (GREF G3 :E2) (GREF G2 :S))
                     (* -1 (GREF G1 :E2) (GREF G2 :S) (GREF G3 :E1)))))) 
(DEFMETHOD *G3 ((G1 VE2) (G2 SE2) (G3 BVE2))
  (MAKE-INSTANCE 'VE2 :COEF
                 (VECTOR (* -1 (GREF G1 :E2) (GREF G2 :S) (GREF G3 :E1E2))
                         (* (GREF G1 :E1) (GREF G2 :S) (GREF G3 :E1E2))))) 
(DEFMETHOD *G3 ((G1 VE2) (G2 SE2) (G3 RE2))
  (MAKE-INSTANCE 'VE2 :COEF
                 (VECTOR
                  (+ (* (GREF G1 :E1) (GREF G3 :S) (GREF G2 :S))
                     (* -1 (GREF G1 :E2) (GREF G2 :S) (GREF G3 :E1E2)))
                  (+ (* (GREF G1 :E1) (GREF G3 :E1E2) (GREF G2 :S))
                     (* (GREF G1 :E2) (GREF G2 :S) (GREF G3 :S)))))) 
(DEFMETHOD *G3 ((G1 VE2) (G2 VE2) (G3 E2))
  (MAKE-INSTANCE 'E2 :COEF
                 (VECTOR
                  (+ (* (GREF G3 :S) (GREF G2 :E2) (GREF G1 :E2))
                     (* (GREF G3 :S) (GREF G1 :E1) (GREF G2 :E1))
                     (*
                      (+ (* -1 (GREF G1 :E1) (GREF G2 :E2))
                         (* (GREF G1 :E2) (GREF G2 :E1)))
                      (GREF G3 :E1E2)))
                  (+ (* (GREF G3 :E1) (GREF G2 :E2) (GREF G1 :E2))
                     (* (GREF G3 :E1) (GREF G1 :E1) (GREF G2 :E1))
                     (*
                      (+ (* (GREF G1 :E1) (GREF G2 :E2))
                         (* -1 (GREF G1 :E2) (GREF G2 :E1)))
                      (GREF G3 :E2)))
                  (+ (* (GREF G3 :E2) (GREF G2 :E2) (GREF G1 :E2))
                     (* (GREF G3 :E2) (GREF G1 :E1) (GREF G2 :E1))
                     (*
                      (+ (* -1 (GREF G1 :E1) (GREF G2 :E2))
                         (* (GREF G1 :E2) (GREF G2 :E1)))
                      (GREF G3 :E1)))
                  (+ (* (GREF G3 :E1E2) (GREF G2 :E2) (GREF G1 :E2))
                     (* (GREF G3 :E1E2) (GREF G1 :E1) (GREF G2 :E1))
                     (*
                      (+ (* (GREF G1 :E1) (GREF G2 :E2))
                         (* -1 (GREF G1 :E2) (GREF G2 :E1)))
                      (GREF G3 :S)))))) 
(DEFMETHOD *G3 ((G1 VE2) (G2 VE2) (G3 SE2))
  (MAKE-INSTANCE 'RE2 :COEF
                 (VECTOR
                  (*
                   (+ (* (GREF G1 :E1) (GREF G2 :E1))
                      (* (GREF G1 :E2) (GREF G2 :E2)))
                   (GREF G3 :S))
                  (*
                   (+ (* (GREF G1 :E1) (GREF G2 :E2))
                      (* -1 (GREF G1 :E2) (GREF G2 :E1)))
                   (GREF G3 :S))))) 
(DEFMETHOD *G3 ((G1 VE2) (G2 VE2) (G3 VE2))
  (MAKE-INSTANCE 'VE2 :COEF
                 (VECTOR
                  (+ (* (GREF G3 :E1) (GREF G2 :E2) (GREF G1 :E2))
                     (* (GREF G3 :E1) (GREF G1 :E1) (GREF G2 :E1))
                     (*
                      (+ (* (GREF G1 :E1) (GREF G2 :E2))
                         (* -1 (GREF G1 :E2) (GREF G2 :E1)))
                      (GREF G3 :E2)))
                  (+ (* (GREF G3 :E2) (GREF G2 :E2) (GREF G1 :E2))
                     (* (GREF G3 :E2) (GREF G1 :E1) (GREF G2 :E1))
                     (*
                      (+ (* -1 (GREF G1 :E1) (GREF G2 :E2))
                         (* (GREF G1 :E2) (GREF G2 :E1)))
                      (GREF G3 :E1)))))) 
(DEFMETHOD *G3 ((G1 VE2) (G2 VE2) (G3 BVE2))
  (MAKE-INSTANCE 'RE2 :COEF
                 (VECTOR
                  (*
                   (+ (* -1 (GREF G1 :E1) (GREF G2 :E2))
                      (* (GREF G1 :E2) (GREF G2 :E1)))
                   (GREF G3 :E1E2))
                  (*
                   (+ (* (GREF G1 :E1) (GREF G2 :E1))
                      (* (GREF G1 :E2) (GREF G2 :E2)))
                   (GREF G3 :E1E2))))) 
(DEFMETHOD *G3 ((G1 VE2) (G2 VE2) (G3 RE2))
  (MAKE-INSTANCE 'RE2 :COEF
                 (VECTOR
                  (+ (* (GREF G3 :S) (GREF G2 :E2) (GREF G1 :E2))
                     (* (GREF G3 :S) (GREF G1 :E1) (GREF G2 :E1))
                     (*
                      (+ (* -1 (GREF G1 :E1) (GREF G2 :E2))
                         (* (GREF G1 :E2) (GREF G2 :E1)))
                      (GREF G3 :E1E2)))
                  (+ (* (GREF G3 :E1E2) (GREF G2 :E2) (GREF G1 :E2))
                     (* (GREF G3 :E1E2) (GREF G1 :E1) (GREF G2 :E1))
                     (*
                      (+ (* (GREF G1 :E1) (GREF G2 :E2))
                         (* -1 (GREF G1 :E2) (GREF G2 :E1)))
                      (GREF G3 :S)))))) 
(DEFMETHOD *G3 ((G1 VE2) (G2 BVE2) (G3 E2))
  (MAKE-INSTANCE 'E2 :COEF
                 (VECTOR
                  (+ (* -1 (GREF G1 :E2) (GREF G3 :E1) (GREF G2 :E1E2))
                     (* (GREF G1 :E1) (GREF G2 :E1E2) (GREF G3 :E2)))
                  (+ (* -1 (GREF G1 :E2) (GREF G3 :S) (GREF G2 :E1E2))
                     (* -1 (GREF G1 :E1) (GREF G2 :E1E2) (GREF G3 :E1E2)))
                  (+ (* -1 (GREF G1 :E2) (GREF G3 :E1E2) (GREF G2 :E1E2))
                     (* (GREF G1 :E1) (GREF G2 :E1E2) (GREF G3 :S)))
                  (+ (* -1 (GREF G1 :E2) (GREF G3 :E2) (GREF G2 :E1E2))
                     (* -1 (GREF G1 :E1) (GREF G2 :E1E2) (GREF G3 :E1)))))) 
(DEFMETHOD *G3 ((G1 VE2) (G2 BVE2) (G3 SE2))
  (MAKE-INSTANCE 'VE2 :COEF
                 (VECTOR (* -1 (GREF G1 :E2) (GREF G2 :E1E2) (GREF G3 :S))
                         (* (GREF G1 :E1) (GREF G2 :E1E2) (GREF G3 :S))))) 
(DEFMETHOD *G3 ((G1 VE2) (G2 BVE2) (G3 VE2))
  (MAKE-INSTANCE 'RE2 :COEF
                 (VECTOR
                  (+ (* -1 (GREF G1 :E2) (GREF G3 :E1) (GREF G2 :E1E2))
                     (* (GREF G1 :E1) (GREF G2 :E1E2) (GREF G3 :E2)))
                  (+ (* -1 (GREF G1 :E2) (GREF G3 :E2) (GREF G2 :E1E2))
                     (* -1 (GREF G1 :E1) (GREF G2 :E1E2) (GREF G3 :E1)))))) 
(DEFMETHOD *G3 ((G1 VE2) (G2 BVE2) (G3 BVE2))
  (MAKE-INSTANCE 'VE2 :COEF
                 (VECTOR (* -1 (GREF G1 :E1) (GREF G2 :E1E2) (GREF G3 :E1E2))
                         (* -1 (GREF G1 :E2) (GREF G2 :E1E2) (GREF G3 :E1E2))))) 
(DEFMETHOD *G3 ((G1 VE2) (G2 BVE2) (G3 RE2))
  (MAKE-INSTANCE 'VE2 :COEF
                 (VECTOR
                  (+ (* -1 (GREF G1 :E2) (GREF G3 :S) (GREF G2 :E1E2))
                     (* -1 (GREF G1 :E1) (GREF G2 :E1E2) (GREF G3 :E1E2)))
                  (+ (* -1 (GREF G1 :E2) (GREF G3 :E1E2) (GREF G2 :E1E2))
                     (* (GREF G1 :E1) (GREF G2 :E1E2) (GREF G3 :S)))))) 
(DEFMETHOD *G3 ((G1 VE2) (G2 RE2) (G3 E2))
  (MAKE-INSTANCE 'E2 :COEF
                 (VECTOR
                  (+ (* -1 (GREF G3 :E1) (GREF G2 :E1E2) (GREF G1 :E2))
                     (* (GREF G3 :E1) (GREF G1 :E1) (GREF G2 :S))
                     (*
                      (+ (* (GREF G1 :E1) (GREF G2 :E1E2))
                         (* (GREF G1 :E2) (GREF G2 :S)))
                      (GREF G3 :E2)))
                  (+ (* -1 (GREF G3 :S) (GREF G2 :E1E2) (GREF G1 :E2))
                     (* (GREF G3 :S) (GREF G1 :E1) (GREF G2 :S))
                     (*
                      (+ (* -1 (GREF G1 :E1) (GREF G2 :E1E2))
                         (* -1 (GREF G1 :E2) (GREF G2 :S)))
                      (GREF G3 :E1E2)))
                  (+ (* -1 (GREF G3 :E1E2) (GREF G2 :E1E2) (GREF G1 :E2))
                     (* (GREF G3 :E1E2) (GREF G1 :E1) (GREF G2 :S))
                     (*
                      (+ (* (GREF G1 :E1) (GREF G2 :E1E2))
                         (* (GREF G1 :E2) (GREF G2 :S)))
                      (GREF G3 :S)))
                  (+ (* -1 (GREF G3 :E2) (GREF G2 :E1E2) (GREF G1 :E2))
                     (* (GREF G3 :E2) (GREF G1 :E1) (GREF G2 :S))
                     (*
                      (+ (* -1 (GREF G1 :E1) (GREF G2 :E1E2))
                         (* -1 (GREF G1 :E2) (GREF G2 :S)))
                      (GREF G3 :E1)))))) 
(DEFMETHOD *G3 ((G1 VE2) (G2 RE2) (G3 SE2))
  (MAKE-INSTANCE 'VE2 :COEF
                 (VECTOR
                  (*
                   (+ (* (GREF G1 :E1) (GREF G2 :S))
                      (* -1 (GREF G1 :E2) (GREF G2 :E1E2)))
                   (GREF G3 :S))
                  (*
                   (+ (* (GREF G1 :E1) (GREF G2 :E1E2))
                      (* (GREF G1 :E2) (GREF G2 :S)))
                   (GREF G3 :S))))) 
(DEFMETHOD *G3 ((G1 VE2) (G2 RE2) (G3 VE2))
  (MAKE-INSTANCE 'RE2 :COEF
                 (VECTOR
                  (+ (* -1 (GREF G3 :E1) (GREF G2 :E1E2) (GREF G1 :E2))
                     (* (GREF G3 :E1) (GREF G1 :E1) (GREF G2 :S))
                     (*
                      (+ (* (GREF G1 :E1) (GREF G2 :E1E2))
                         (* (GREF G1 :E2) (GREF G2 :S)))
                      (GREF G3 :E2)))
                  (+ (* -1 (GREF G3 :E2) (GREF G2 :E1E2) (GREF G1 :E2))
                     (* (GREF G3 :E2) (GREF G1 :E1) (GREF G2 :S))
                     (*
                      (+ (* -1 (GREF G1 :E1) (GREF G2 :E1E2))
                         (* -1 (GREF G1 :E2) (GREF G2 :S)))
                      (GREF G3 :E1)))))) 
(DEFMETHOD *G3 ((G1 VE2) (G2 RE2) (G3 BVE2))
  (MAKE-INSTANCE 'VE2 :COEF
                 (VECTOR
                  (*
                   (+ (* -1 (GREF G1 :E1) (GREF G2 :E1E2))
                      (* -1 (GREF G1 :E2) (GREF G2 :S)))
                   (GREF G3 :E1E2))
                  (*
                   (+ (* (GREF G1 :E1) (GREF G2 :S))
                      (* -1 (GREF G1 :E2) (GREF G2 :E1E2)))
                   (GREF G3 :E1E2))))) 
(DEFMETHOD *G3 ((G1 VE2) (G2 RE2) (G3 RE2))
  (MAKE-INSTANCE 'VE2 :COEF
                 (VECTOR
                  (+ (* -1 (GREF G3 :S) (GREF G2 :E1E2) (GREF G1 :E2))
                     (* (GREF G3 :S) (GREF G1 :E1) (GREF G2 :S))
                     (*
                      (+ (* -1 (GREF G1 :E1) (GREF G2 :E1E2))
                         (* -1 (GREF G1 :E2) (GREF G2 :S)))
                      (GREF G3 :E1E2)))
                  (+ (* -1 (GREF G3 :E1E2) (GREF G2 :E1E2) (GREF G1 :E2))
                     (* (GREF G3 :E1E2) (GREF G1 :E1) (GREF G2 :S))
                     (*
                      (+ (* (GREF G1 :E1) (GREF G2 :E1E2))
                         (* (GREF G1 :E2) (GREF G2 :S)))
                      (GREF G3 :S)))))) 
(DEFMETHOD *G3 ((G1 BVE2) (G2 E2) (G3 E2))
  (MAKE-INSTANCE 'E2 :COEF
                 (VECTOR
                  (+
                   (*
                    (+ (* -1 (GREF G2 :E1E2) (GREF G3 :S))
                       (* (GREF G2 :E2) (GREF G3 :E1))
                       (* -1 (GREF G2 :E1) (GREF G3 :E2)))
                    (GREF G1 :E1E2))
                   (* -1 (GREF G1 :E1E2) (GREF G2 :S) (GREF G3 :E1E2)))
                  (+
                   (*
                    (+ (* -1 (GREF G2 :E1E2) (GREF G3 :E1))
                       (* (GREF G2 :E2) (GREF G3 :S))
                       (* (GREF G2 :E1) (GREF G3 :E1E2)))
                    (GREF G1 :E1E2))
                   (* (GREF G1 :E1E2) (GREF G2 :S) (GREF G3 :E2)))
                  (+
                   (*
                    (+ (* -1 (GREF G2 :E1E2) (GREF G3 :E2))
                       (* (GREF G2 :E2) (GREF G3 :E1E2))
                       (* -1 (GREF G2 :E1) (GREF G3 :S)))
                    (GREF G1 :E1E2))
                   (* -1 (GREF G1 :E1E2) (GREF G2 :S) (GREF G3 :E1)))
                  (+
                   (*
                    (+ (* -1 (GREF G2 :E1E2) (GREF G3 :E1E2))
                       (* (GREF G2 :E2) (GREF G3 :E2))
                       (* (GREF G2 :E1) (GREF G3 :E1)))
                    (GREF G1 :E1E2))
                   (* (GREF G1 :E1E2) (GREF G2 :S) (GREF G3 :S)))))) 
(DEFMETHOD *G3 ((G1 BVE2) (G2 E2) (G3 SE2))
  (MAKE-INSTANCE 'E2 :COEF
                 (VECTOR (* -1 (GREF G1 :E1E2) (GREF G2 :E1E2) (GREF G3 :S))
                         (* (GREF G1 :E1E2) (GREF G2 :E2) (GREF G3 :S))
                         (* -1 (GREF G1 :E1E2) (GREF G2 :E1) (GREF G3 :S))
                         (* (GREF G1 :E1E2) (GREF G2 :S) (GREF G3 :S))))) 
(DEFMETHOD *G3 ((G1 BVE2) (G2 E2) (G3 VE2))
  (MAKE-INSTANCE 'E2 :COEF
                 (VECTOR
                  (+ (* (GREF G2 :E2) (GREF G3 :E1) (GREF G1 :E1E2))
                     (* -1 (GREF G1 :E1E2) (GREF G2 :E1) (GREF G3 :E2)))
                  (+ (* -1 (GREF G2 :E1E2) (GREF G3 :E1) (GREF G1 :E1E2))
                     (* (GREF G1 :E1E2) (GREF G2 :S) (GREF G3 :E2)))
                  (+ (* -1 (GREF G2 :E1E2) (GREF G3 :E2) (GREF G1 :E1E2))
                     (* -1 (GREF G1 :E1E2) (GREF G2 :S) (GREF G3 :E1)))
                  (+ (* (GREF G2 :E2) (GREF G3 :E2) (GREF G1 :E1E2))
                     (* (GREF G1 :E1E2) (GREF G2 :E1) (GREF G3 :E1)))))) 
(DEFMETHOD *G3 ((G1 BVE2) (G2 E2) (G3 BVE2))
  (MAKE-INSTANCE 'E2 :COEF
                 (VECTOR (* -1 (GREF G1 :E1E2) (GREF G2 :S) (GREF G3 :E1E2))
                         (* (GREF G1 :E1E2) (GREF G2 :E1) (GREF G3 :E1E2))
                         (* (GREF G1 :E1E2) (GREF G2 :E2) (GREF G3 :E1E2))
                         (* -1 (GREF G1 :E1E2) (GREF G2 :E1E2)
                            (GREF G3 :E1E2))))) 
(DEFMETHOD *G3 ((G1 BVE2) (G2 E2) (G3 RE2))
  (MAKE-INSTANCE 'E2 :COEF
                 (VECTOR
                  (+ (* -1 (GREF G2 :E1E2) (GREF G3 :S) (GREF G1 :E1E2))
                     (* -1 (GREF G1 :E1E2) (GREF G2 :S) (GREF G3 :E1E2)))
                  (+ (* (GREF G2 :E2) (GREF G3 :S) (GREF G1 :E1E2))
                     (* (GREF G1 :E1E2) (GREF G2 :E1) (GREF G3 :E1E2)))
                  (+ (* (GREF G2 :E2) (GREF G3 :E1E2) (GREF G1 :E1E2))
                     (* -1 (GREF G1 :E1E2) (GREF G2 :E1) (GREF G3 :S)))
                  (+ (* -1 (GREF G2 :E1E2) (GREF G3 :E1E2) (GREF G1 :E1E2))
                     (* (GREF G1 :E1E2) (GREF G2 :S) (GREF G3 :S)))))) 
(DEFMETHOD *G3 ((G1 BVE2) (G2 SE2) (G3 E2))
  (MAKE-INSTANCE 'E2 :COEF
                 (VECTOR (* -1 (GREF G1 :E1E2) (GREF G2 :S) (GREF G3 :E1E2))
                         (* (GREF G1 :E1E2) (GREF G2 :S) (GREF G3 :E2))
                         (* -1 (GREF G1 :E1E2) (GREF G2 :S) (GREF G3 :E1))
                         (* (GREF G1 :E1E2) (GREF G2 :S) (GREF G3 :S))))) 
(DEFMETHOD *G3 ((G1 BVE2) (G2 SE2) (G3 SE2))
  (MAKE-INSTANCE 'BVE2 :COEF
                 (VECTOR (* (GREF G1 :E1E2) (GREF G2 :S) (GREF G3 :S))))) 
(DEFMETHOD *G3 ((G1 BVE2) (G2 SE2) (G3 VE2))
  (MAKE-INSTANCE 'VE2 :COEF
                 (VECTOR (* (GREF G1 :E1E2) (GREF G2 :S) (GREF G3 :E2))
                         (* -1 (GREF G1 :E1E2) (GREF G2 :S) (GREF G3 :E1))))) 
(DEFMETHOD *G3 ((G1 BVE2) (G2 SE2) (G3 BVE2))
  (MAKE-INSTANCE 'SE2 :COEF
                 (VECTOR (* -1 (GREF G1 :E1E2) (GREF G2 :S) (GREF G3 :E1E2))))) 
(DEFMETHOD *G3 ((G1 BVE2) (G2 SE2) (G3 RE2))
  (MAKE-INSTANCE 'RE2 :COEF
                 (VECTOR (* -1 (GREF G1 :E1E2) (GREF G2 :S) (GREF G3 :E1E2))
                         (* (GREF G1 :E1E2) (GREF G2 :S) (GREF G3 :S))))) 
(DEFMETHOD *G3 ((G1 BVE2) (G2 VE2) (G3 E2))
  (MAKE-INSTANCE 'E2 :COEF
                 (VECTOR
                  (+ (* (GREF G2 :E2) (GREF G3 :E1) (GREF G1 :E1E2))
                     (* -1 (GREF G1 :E1E2) (GREF G2 :E1) (GREF G3 :E2)))
                  (+ (* (GREF G2 :E2) (GREF G3 :S) (GREF G1 :E1E2))
                     (* (GREF G1 :E1E2) (GREF G2 :E1) (GREF G3 :E1E2)))
                  (+ (* (GREF G2 :E2) (GREF G3 :E1E2) (GREF G1 :E1E2))
                     (* -1 (GREF G1 :E1E2) (GREF G2 :E1) (GREF G3 :S)))
                  (+ (* (GREF G2 :E2) (GREF G3 :E2) (GREF G1 :E1E2))
                     (* (GREF G1 :E1E2) (GREF G2 :E1) (GREF G3 :E1)))))) 
(DEFMETHOD *G3 ((G1 BVE2) (G2 VE2) (G3 SE2))
  (MAKE-INSTANCE 'VE2 :COEF
                 (VECTOR (* (GREF G1 :E1E2) (GREF G2 :E2) (GREF G3 :S))
                         (* -1 (GREF G1 :E1E2) (GREF G2 :E1) (GREF G3 :S))))) 
(DEFMETHOD *G3 ((G1 BVE2) (G2 VE2) (G3 VE2))
  (MAKE-INSTANCE 'RE2 :COEF
                 (VECTOR
                  (+ (* (GREF G2 :E2) (GREF G3 :E1) (GREF G1 :E1E2))
                     (* -1 (GREF G1 :E1E2) (GREF G2 :E1) (GREF G3 :E2)))
                  (+ (* (GREF G2 :E2) (GREF G3 :E2) (GREF G1 :E1E2))
                     (* (GREF G1 :E1E2) (GREF G2 :E1) (GREF G3 :E1)))))) 
(DEFMETHOD *G3 ((G1 BVE2) (G2 VE2) (G3 BVE2))
  (MAKE-INSTANCE 'VE2 :COEF
                 (VECTOR (* (GREF G1 :E1E2) (GREF G2 :E1) (GREF G3 :E1E2))
                         (* (GREF G1 :E1E2) (GREF G2 :E2) (GREF G3 :E1E2))))) 
(DEFMETHOD *G3 ((G1 BVE2) (G2 VE2) (G3 RE2))
  (MAKE-INSTANCE 'VE2 :COEF
                 (VECTOR
                  (+ (* (GREF G2 :E2) (GREF G3 :S) (GREF G1 :E1E2))
                     (* (GREF G1 :E1E2) (GREF G2 :E1) (GREF G3 :E1E2)))
                  (+ (* (GREF G2 :E2) (GREF G3 :E1E2) (GREF G1 :E1E2))
                     (* -1 (GREF G1 :E1E2) (GREF G2 :E1) (GREF G3 :S)))))) 
(DEFMETHOD *G3 ((G1 BVE2) (G2 BVE2) (G3 E2))
  (MAKE-INSTANCE 'E2 :COEF
                 (VECTOR (* -1 (GREF G1 :E1E2) (GREF G2 :E1E2) (GREF G3 :S))
                         (* -1 (GREF G1 :E1E2) (GREF G2 :E1E2) (GREF G3 :E1))
                         (* -1 (GREF G1 :E1E2) (GREF G2 :E1E2) (GREF G3 :E2))
                         (* -1 (GREF G1 :E1E2) (GREF G2 :E1E2)
                            (GREF G3 :E1E2))))) 
(DEFMETHOD *G3 ((G1 BVE2) (G2 BVE2) (G3 SE2))
  (MAKE-INSTANCE 'SE2 :COEF
                 (VECTOR (* -1 (GREF G1 :E1E2) (GREF G2 :E1E2) (GREF G3 :S))))) 
(DEFMETHOD *G3 ((G1 BVE2) (G2 BVE2) (G3 VE2))
  (MAKE-INSTANCE 'VE2 :COEF
                 (VECTOR (* -1 (GREF G1 :E1E2) (GREF G2 :E1E2) (GREF G3 :E1))
                         (* -1 (GREF G1 :E1E2) (GREF G2 :E1E2) (GREF G3 :E2))))) 
(DEFMETHOD *G3 ((G1 BVE2) (G2 BVE2) (G3 BVE2))
  (MAKE-INSTANCE 'BVE2 :COEF
                 (VECTOR
                  (* -1 (GREF G1 :E1E2) (GREF G2 :E1E2) (GREF G3 :E1E2))))) 
(DEFMETHOD *G3 ((G1 BVE2) (G2 BVE2) (G3 RE2))
  (MAKE-INSTANCE 'RE2 :COEF
                 (VECTOR (* -1 (GREF G1 :E1E2) (GREF G2 :E1E2) (GREF G3 :S))
                         (* -1 (GREF G1 :E1E2) (GREF G2 :E1E2)
                            (GREF G3 :E1E2))))) 
(DEFMETHOD *G3 ((G1 BVE2) (G2 RE2) (G3 E2))
  (MAKE-INSTANCE 'E2 :COEF
                 (VECTOR
                  (+ (* -1 (GREF G2 :E1E2) (GREF G3 :S) (GREF G1 :E1E2))
                     (* -1 (GREF G1 :E1E2) (GREF G2 :S) (GREF G3 :E1E2)))
                  (+ (* -1 (GREF G2 :E1E2) (GREF G3 :E1) (GREF G1 :E1E2))
                     (* (GREF G1 :E1E2) (GREF G2 :S) (GREF G3 :E2)))
                  (+ (* -1 (GREF G2 :E1E2) (GREF G3 :E2) (GREF G1 :E1E2))
                     (* -1 (GREF G1 :E1E2) (GREF G2 :S) (GREF G3 :E1)))
                  (+ (* -1 (GREF G2 :E1E2) (GREF G3 :E1E2) (GREF G1 :E1E2))
                     (* (GREF G1 :E1E2) (GREF G2 :S) (GREF G3 :S)))))) 
(DEFMETHOD *G3 ((G1 BVE2) (G2 RE2) (G3 SE2))
  (MAKE-INSTANCE 'RE2 :COEF
                 (VECTOR (* -1 (GREF G1 :E1E2) (GREF G2 :E1E2) (GREF G3 :S))
                         (* (GREF G1 :E1E2) (GREF G2 :S) (GREF G3 :S))))) 
(DEFMETHOD *G3 ((G1 BVE2) (G2 RE2) (G3 VE2))
  (MAKE-INSTANCE 'VE2 :COEF
                 (VECTOR
                  (+ (* -1 (GREF G2 :E1E2) (GREF G3 :E1) (GREF G1 :E1E2))
                     (* (GREF G1 :E1E2) (GREF G2 :S) (GREF G3 :E2)))
                  (+ (* -1 (GREF G2 :E1E2) (GREF G3 :E2) (GREF G1 :E1E2))
                     (* -1 (GREF G1 :E1E2) (GREF G2 :S) (GREF G3 :E1)))))) 
(DEFMETHOD *G3 ((G1 BVE2) (G2 RE2) (G3 BVE2))
  (MAKE-INSTANCE 'RE2 :COEF
                 (VECTOR (* -1 (GREF G1 :E1E2) (GREF G2 :S) (GREF G3 :E1E2))
                         (* -1 (GREF G1 :E1E2) (GREF G2 :E1E2)
                            (GREF G3 :E1E2))))) 
(DEFMETHOD *G3 ((G1 BVE2) (G2 RE2) (G3 RE2))
  (MAKE-INSTANCE 'RE2 :COEF
                 (VECTOR
                  (+ (* -1 (GREF G2 :E1E2) (GREF G3 :S) (GREF G1 :E1E2))
                     (* -1 (GREF G1 :E1E2) (GREF G2 :S) (GREF G3 :E1E2)))
                  (+ (* -1 (GREF G2 :E1E2) (GREF G3 :E1E2) (GREF G1 :E1E2))
                     (* (GREF G1 :E1E2) (GREF G2 :S) (GREF G3 :S)))))) 
(DEFMETHOD *G3 ((G1 RE2) (G2 E2) (G3 E2))
  (MAKE-INSTANCE 'E2 :COEF
                 (VECTOR
                  (+
                   (*
                    (+ (* (GREF G3 :E1) (GREF G2 :E1))
                       (* (GREF G2 :E2) (GREF G3 :E2)))
                    (GREF G1 :S))
                   (*
                    (+ (* (GREF G3 :E1) (GREF G2 :E2))
                       (* -1 (GREF G2 :E1) (GREF G3 :E2))
                       (* -1 (GREF G3 :S) (GREF G2 :E1E2)))
                    (GREF G1 :E1E2))
                   (* (GREF G3 :S) (GREF G1 :S) (GREF G2 :S))
                   (*
                    (+ (* -1 (GREF G1 :S) (GREF G2 :E1E2))
                       (* -1 (GREF G1 :E1E2) (GREF G2 :S)))
                    (GREF G3 :E1E2)))
                  (+
                   (*
                    (+ (* (GREF G3 :S) (GREF G2 :E1))
                       (* -1 (GREF G2 :E2) (GREF G3 :E1E2)))
                    (GREF G1 :S))
                   (*
                    (+ (* (GREF G3 :S) (GREF G2 :E2))
                       (* (GREF G2 :E1) (GREF G3 :E1E2))
                       (* -1 (GREF G3 :E1) (GREF G2 :E1E2)))
                    (GREF G1 :E1E2))
                   (* (GREF G3 :E1) (GREF G1 :S) (GREF G2 :S))
                   (*
                    (+ (* (GREF G1 :S) (GREF G2 :E1E2))
                       (* (GREF G1 :E1E2) (GREF G2 :S)))
                    (GREF G3 :E2)))
                  (+
                   (*
                    (+ (* (GREF G3 :E1E2) (GREF G2 :E1))
                       (* (GREF G2 :E2) (GREF G3 :S)))
                    (GREF G1 :S))
                   (*
                    (+ (* (GREF G3 :E1E2) (GREF G2 :E2))
                       (* -1 (GREF G2 :E1) (GREF G3 :S))
                       (* -1 (GREF G3 :E2) (GREF G2 :E1E2)))
                    (GREF G1 :E1E2))
                   (* (GREF G3 :E2) (GREF G1 :S) (GREF G2 :S))
                   (*
                    (+ (* -1 (GREF G1 :S) (GREF G2 :E1E2))
                       (* -1 (GREF G1 :E1E2) (GREF G2 :S)))
                    (GREF G3 :E1)))
                  (+
                   (*
                    (+ (* (GREF G3 :E2) (GREF G2 :E1))
                       (* -1 (GREF G2 :E2) (GREF G3 :E1)))
                    (GREF G1 :S))
                   (*
                    (+ (* (GREF G3 :E2) (GREF G2 :E2))
                       (* (GREF G2 :E1) (GREF G3 :E1))
                       (* -1 (GREF G3 :E1E2) (GREF G2 :E1E2)))
                    (GREF G1 :E1E2))
                   (* (GREF G3 :E1E2) (GREF G1 :S) (GREF G2 :S))
                   (*
                    (+ (* (GREF G1 :S) (GREF G2 :E1E2))
                       (* (GREF G1 :E1E2) (GREF G2 :S)))
                    (GREF G3 :S)))))) 
(DEFMETHOD *G3 ((G1 RE2) (G2 E2) (G3 SE2))
  (MAKE-INSTANCE 'E2 :COEF
                 (VECTOR
                  (*
                   (+ (* (GREF G1 :S) (GREF G2 :S))
                      (* -1 (GREF G1 :E1E2) (GREF G2 :E1E2)))
                   (GREF G3 :S))
                  (*
                   (+ (* (GREF G1 :S) (GREF G2 :E1))
                      (* (GREF G1 :E1E2) (GREF G2 :E2)))
                   (GREF G3 :S))
                  (*
                   (+ (* (GREF G1 :S) (GREF G2 :E2))
                      (* -1 (GREF G1 :E1E2) (GREF G2 :E1)))
                   (GREF G3 :S))
                  (*
                   (+ (* (GREF G1 :S) (GREF G2 :E1E2))
                      (* (GREF G1 :E1E2) (GREF G2 :S)))
                   (GREF G3 :S))))) 
(DEFMETHOD *G3 ((G1 RE2) (G2 E2) (G3 VE2))
  (MAKE-INSTANCE 'E2 :COEF
                 (VECTOR
                  (+ (* (GREF G3 :E1) (GREF G2 :E2) (GREF G1 :E1E2))
                     (* (GREF G3 :E1) (GREF G1 :S) (GREF G2 :E1))
                     (*
                      (+ (* (GREF G1 :S) (GREF G2 :E2))
                         (* -1 (GREF G1 :E1E2) (GREF G2 :E1)))
                      (GREF G3 :E2)))
                  (+ (* -1 (GREF G3 :E1) (GREF G2 :E1E2) (GREF G1 :E1E2))
                     (* (GREF G3 :E1) (GREF G1 :S) (GREF G2 :S))
                     (*
                      (+ (* (GREF G1 :S) (GREF G2 :E1E2))
                         (* (GREF G1 :E1E2) (GREF G2 :S)))
                      (GREF G3 :E2)))
                  (+ (* -1 (GREF G3 :E2) (GREF G2 :E1E2) (GREF G1 :E1E2))
                     (* (GREF G3 :E2) (GREF G1 :S) (GREF G2 :S))
                     (*
                      (+ (* -1 (GREF G1 :S) (GREF G2 :E1E2))
                         (* -1 (GREF G1 :E1E2) (GREF G2 :S)))
                      (GREF G3 :E1)))
                  (+ (* (GREF G3 :E2) (GREF G2 :E2) (GREF G1 :E1E2))
                     (* (GREF G3 :E2) (GREF G1 :S) (GREF G2 :E1))
                     (*
                      (+ (* -1 (GREF G1 :S) (GREF G2 :E2))
                         (* (GREF G1 :E1E2) (GREF G2 :E1)))
                      (GREF G3 :E1)))))) 
(DEFMETHOD *G3 ((G1 RE2) (G2 E2) (G3 BVE2))
  (MAKE-INSTANCE 'E2 :COEF
                 (VECTOR
                  (*
                   (+ (* -1 (GREF G1 :S) (GREF G2 :E1E2))
                      (* -1 (GREF G1 :E1E2) (GREF G2 :S)))
                   (GREF G3 :E1E2))
                  (*
                   (+ (* -1 (GREF G1 :S) (GREF G2 :E2))
                      (* (GREF G1 :E1E2) (GREF G2 :E1)))
                   (GREF G3 :E1E2))
                  (*
                   (+ (* (GREF G1 :S) (GREF G2 :E1))
                      (* (GREF G1 :E1E2) (GREF G2 :E2)))
                   (GREF G3 :E1E2))
                  (*
                   (+ (* (GREF G1 :S) (GREF G2 :S))
                      (* -1 (GREF G1 :E1E2) (GREF G2 :E1E2)))
                   (GREF G3 :E1E2))))) 
(DEFMETHOD *G3 ((G1 RE2) (G2 E2) (G3 RE2))
  (MAKE-INSTANCE 'E2 :COEF
                 (VECTOR
                  (+ (* -1 (GREF G3 :S) (GREF G2 :E1E2) (GREF G1 :E1E2))
                     (* (GREF G3 :S) (GREF G1 :S) (GREF G2 :S))
                     (*
                      (+ (* -1 (GREF G1 :S) (GREF G2 :E1E2))
                         (* -1 (GREF G1 :E1E2) (GREF G2 :S)))
                      (GREF G3 :E1E2)))
                  (+ (* (GREF G3 :S) (GREF G2 :E2) (GREF G1 :E1E2))
                     (* (GREF G3 :S) (GREF G1 :S) (GREF G2 :E1))
                     (*
                      (+ (* -1 (GREF G1 :S) (GREF G2 :E2))
                         (* (GREF G1 :E1E2) (GREF G2 :E1)))
                      (GREF G3 :E1E2)))
                  (+ (* (GREF G3 :E1E2) (GREF G2 :E2) (GREF G1 :E1E2))
                     (* (GREF G3 :E1E2) (GREF G1 :S) (GREF G2 :E1))
                     (*
                      (+ (* (GREF G1 :S) (GREF G2 :E2))
                         (* -1 (GREF G1 :E1E2) (GREF G2 :E1)))
                      (GREF G3 :S)))
                  (+ (* -1 (GREF G3 :E1E2) (GREF G2 :E1E2) (GREF G1 :E1E2))
                     (* (GREF G3 :E1E2) (GREF G1 :S) (GREF G2 :S))
                     (*
                      (+ (* (GREF G1 :S) (GREF G2 :E1E2))
                         (* (GREF G1 :E1E2) (GREF G2 :S)))
                      (GREF G3 :S)))))) 
(DEFMETHOD *G3 ((G1 RE2) (G2 SE2) (G3 E2))
  (MAKE-INSTANCE 'E2 :COEF
                 (VECTOR
                  (+ (* (GREF G1 :S) (GREF G3 :S) (GREF G2 :S))
                     (* -1 (GREF G1 :E1E2) (GREF G2 :S) (GREF G3 :E1E2)))
                  (+ (* (GREF G1 :S) (GREF G3 :E1) (GREF G2 :S))
                     (* (GREF G1 :E1E2) (GREF G2 :S) (GREF G3 :E2)))
                  (+ (* (GREF G1 :S) (GREF G3 :E2) (GREF G2 :S))
                     (* -1 (GREF G1 :E1E2) (GREF G2 :S) (GREF G3 :E1)))
                  (+ (* (GREF G1 :S) (GREF G3 :E1E2) (GREF G2 :S))
                     (* (GREF G1 :E1E2) (GREF G2 :S) (GREF G3 :S)))))) 
(DEFMETHOD *G3 ((G1 RE2) (G2 SE2) (G3 SE2))
  (MAKE-INSTANCE 'RE2 :COEF
                 (VECTOR (* (GREF G1 :S) (GREF G2 :S) (GREF G3 :S))
                         (* (GREF G1 :E1E2) (GREF G2 :S) (GREF G3 :S))))) 
(DEFMETHOD *G3 ((G1 RE2) (G2 SE2) (G3 VE2))
  (MAKE-INSTANCE 'VE2 :COEF
                 (VECTOR
                  (+ (* (GREF G1 :S) (GREF G3 :E1) (GREF G2 :S))
                     (* (GREF G1 :E1E2) (GREF G2 :S) (GREF G3 :E2)))
                  (+ (* (GREF G1 :S) (GREF G3 :E2) (GREF G2 :S))
                     (* -1 (GREF G1 :E1E2) (GREF G2 :S) (GREF G3 :E1)))))) 
(DEFMETHOD *G3 ((G1 RE2) (G2 SE2) (G3 BVE2))
  (MAKE-INSTANCE 'RE2 :COEF
                 (VECTOR (* -1 (GREF G1 :E1E2) (GREF G2 :S) (GREF G3 :E1E2))
                         (* (GREF G1 :S) (GREF G2 :S) (GREF G3 :E1E2))))) 
(DEFMETHOD *G3 ((G1 RE2) (G2 SE2) (G3 RE2))
  (MAKE-INSTANCE 'RE2 :COEF
                 (VECTOR
                  (+ (* (GREF G1 :S) (GREF G3 :S) (GREF G2 :S))
                     (* -1 (GREF G1 :E1E2) (GREF G2 :S) (GREF G3 :E1E2)))
                  (+ (* (GREF G1 :S) (GREF G3 :E1E2) (GREF G2 :S))
                     (* (GREF G1 :E1E2) (GREF G2 :S) (GREF G3 :S)))))) 
(DEFMETHOD *G3 ((G1 RE2) (G2 VE2) (G3 E2))
  (MAKE-INSTANCE 'E2 :COEF
                 (VECTOR
                  (+ (* (GREF G3 :E1) (GREF G2 :E2) (GREF G1 :E1E2))
                     (* (GREF G3 :E1) (GREF G1 :S) (GREF G2 :E1))
                     (*
                      (+ (* (GREF G1 :S) (GREF G2 :E2))
                         (* -1 (GREF G1 :E1E2) (GREF G2 :E1)))
                      (GREF G3 :E2)))
                  (+ (* (GREF G3 :S) (GREF G2 :E2) (GREF G1 :E1E2))
                     (* (GREF G3 :S) (GREF G1 :S) (GREF G2 :E1))
                     (*
                      (+ (* -1 (GREF G1 :S) (GREF G2 :E2))
                         (* (GREF G1 :E1E2) (GREF G2 :E1)))
                      (GREF G3 :E1E2)))
                  (+ (* (GREF G3 :E1E2) (GREF G2 :E2) (GREF G1 :E1E2))
                     (* (GREF G3 :E1E2) (GREF G1 :S) (GREF G2 :E1))
                     (*
                      (+ (* (GREF G1 :S) (GREF G2 :E2))
                         (* -1 (GREF G1 :E1E2) (GREF G2 :E1)))
                      (GREF G3 :S)))
                  (+ (* (GREF G3 :E2) (GREF G2 :E2) (GREF G1 :E1E2))
                     (* (GREF G3 :E2) (GREF G1 :S) (GREF G2 :E1))
                     (*
                      (+ (* -1 (GREF G1 :S) (GREF G2 :E2))
                         (* (GREF G1 :E1E2) (GREF G2 :E1)))
                      (GREF G3 :E1)))))) 
(DEFMETHOD *G3 ((G1 RE2) (G2 VE2) (G3 SE2))
  (MAKE-INSTANCE 'VE2 :COEF
                 (VECTOR
                  (*
                   (+ (* (GREF G1 :S) (GREF G2 :E1))
                      (* (GREF G1 :E1E2) (GREF G2 :E2)))
                   (GREF G3 :S))
                  (*
                   (+ (* (GREF G1 :S) (GREF G2 :E2))
                      (* -1 (GREF G1 :E1E2) (GREF G2 :E1)))
                   (GREF G3 :S))))) 
(DEFMETHOD *G3 ((G1 RE2) (G2 VE2) (G3 VE2))
  (MAKE-INSTANCE 'RE2 :COEF
                 (VECTOR
                  (+ (* (GREF G3 :E1) (GREF G2 :E2) (GREF G1 :E1E2))
                     (* (GREF G3 :E1) (GREF G1 :S) (GREF G2 :E1))
                     (*
                      (+ (* (GREF G1 :S) (GREF G2 :E2))
                         (* -1 (GREF G1 :E1E2) (GREF G2 :E1)))
                      (GREF G3 :E2)))
                  (+ (* (GREF G3 :E2) (GREF G2 :E2) (GREF G1 :E1E2))
                     (* (GREF G3 :E2) (GREF G1 :S) (GREF G2 :E1))
                     (*
                      (+ (* -1 (GREF G1 :S) (GREF G2 :E2))
                         (* (GREF G1 :E1E2) (GREF G2 :E1)))
                      (GREF G3 :E1)))))) 
(DEFMETHOD *G3 ((G1 RE2) (G2 VE2) (G3 BVE2))
  (MAKE-INSTANCE 'VE2 :COEF
                 (VECTOR
                  (*
                   (+ (* -1 (GREF G1 :S) (GREF G2 :E2))
                      (* (GREF G1 :E1E2) (GREF G2 :E1)))
                   (GREF G3 :E1E2))
                  (*
                   (+ (* (GREF G1 :S) (GREF G2 :E1))
                      (* (GREF G1 :E1E2) (GREF G2 :E2)))
                   (GREF G3 :E1E2))))) 
(DEFMETHOD *G3 ((G1 RE2) (G2 VE2) (G3 RE2))
  (MAKE-INSTANCE 'VE2 :COEF
                 (VECTOR
                  (+ (* (GREF G3 :S) (GREF G2 :E2) (GREF G1 :E1E2))
                     (* (GREF G3 :S) (GREF G1 :S) (GREF G2 :E1))
                     (*
                      (+ (* -1 (GREF G1 :S) (GREF G2 :E2))
                         (* (GREF G1 :E1E2) (GREF G2 :E1)))
                      (GREF G3 :E1E2)))
                  (+ (* (GREF G3 :E1E2) (GREF G2 :E2) (GREF G1 :E1E2))
                     (* (GREF G3 :E1E2) (GREF G1 :S) (GREF G2 :E1))
                     (*
                      (+ (* (GREF G1 :S) (GREF G2 :E2))
                         (* -1 (GREF G1 :E1E2) (GREF G2 :E1)))
                      (GREF G3 :S)))))) 
(DEFMETHOD *G3 ((G1 RE2) (G2 BVE2) (G3 E2))
  (MAKE-INSTANCE 'E2 :COEF
                 (VECTOR
                  (+ (* -1 (GREF G1 :E1E2) (GREF G3 :S) (GREF G2 :E1E2))
                     (* -1 (GREF G1 :S) (GREF G2 :E1E2) (GREF G3 :E1E2)))
                  (+ (* -1 (GREF G1 :E1E2) (GREF G3 :E1) (GREF G2 :E1E2))
                     (* (GREF G1 :S) (GREF G2 :E1E2) (GREF G3 :E2)))
                  (+ (* -1 (GREF G1 :E1E2) (GREF G3 :E2) (GREF G2 :E1E2))
                     (* -1 (GREF G1 :S) (GREF G2 :E1E2) (GREF G3 :E1)))
                  (+ (* -1 (GREF G1 :E1E2) (GREF G3 :E1E2) (GREF G2 :E1E2))
                     (* (GREF G1 :S) (GREF G2 :E1E2) (GREF G3 :S)))))) 
(DEFMETHOD *G3 ((G1 RE2) (G2 BVE2) (G3 SE2))
  (MAKE-INSTANCE 'RE2 :COEF
                 (VECTOR (* -1 (GREF G1 :E1E2) (GREF G2 :E1E2) (GREF G3 :S))
                         (* (GREF G1 :S) (GREF G2 :E1E2) (GREF G3 :S))))) 
(DEFMETHOD *G3 ((G1 RE2) (G2 BVE2) (G3 VE2))
  (MAKE-INSTANCE 'VE2 :COEF
                 (VECTOR
                  (+ (* -1 (GREF G1 :E1E2) (GREF G3 :E1) (GREF G2 :E1E2))
                     (* (GREF G1 :S) (GREF G2 :E1E2) (GREF G3 :E2)))
                  (+ (* -1 (GREF G1 :E1E2) (GREF G3 :E2) (GREF G2 :E1E2))
                     (* -1 (GREF G1 :S) (GREF G2 :E1E2) (GREF G3 :E1)))))) 
(DEFMETHOD *G3 ((G1 RE2) (G2 BVE2) (G3 BVE2))
  (MAKE-INSTANCE 'RE2 :COEF
                 (VECTOR (* -1 (GREF G1 :S) (GREF G2 :E1E2) (GREF G3 :E1E2))
                         (* -1 (GREF G1 :E1E2) (GREF G2 :E1E2)
                            (GREF G3 :E1E2))))) 
(DEFMETHOD *G3 ((G1 RE2) (G2 BVE2) (G3 RE2))
  (MAKE-INSTANCE 'RE2 :COEF
                 (VECTOR
                  (+ (* -1 (GREF G1 :E1E2) (GREF G3 :S) (GREF G2 :E1E2))
                     (* -1 (GREF G1 :S) (GREF G2 :E1E2) (GREF G3 :E1E2)))
                  (+ (* -1 (GREF G1 :E1E2) (GREF G3 :E1E2) (GREF G2 :E1E2))
                     (* (GREF G1 :S) (GREF G2 :E1E2) (GREF G3 :S)))))) 
(DEFMETHOD *G3 ((G1 RE2) (G2 RE2) (G3 E2))
  (MAKE-INSTANCE 'E2 :COEF
                 (VECTOR
                  (+ (* -1 (GREF G3 :S) (GREF G2 :E1E2) (GREF G1 :E1E2))
                     (* (GREF G3 :S) (GREF G1 :S) (GREF G2 :S))
                     (*
                      (+ (* -1 (GREF G1 :S) (GREF G2 :E1E2))
                         (* -1 (GREF G1 :E1E2) (GREF G2 :S)))
                      (GREF G3 :E1E2)))
                  (+ (* -1 (GREF G3 :E1) (GREF G2 :E1E2) (GREF G1 :E1E2))
                     (* (GREF G3 :E1) (GREF G1 :S) (GREF G2 :S))
                     (*
                      (+ (* (GREF G1 :S) (GREF G2 :E1E2))
                         (* (GREF G1 :E1E2) (GREF G2 :S)))
                      (GREF G3 :E2)))
                  (+ (* -1 (GREF G3 :E2) (GREF G2 :E1E2) (GREF G1 :E1E2))
                     (* (GREF G3 :E2) (GREF G1 :S) (GREF G2 :S))
                     (*
                      (+ (* -1 (GREF G1 :S) (GREF G2 :E1E2))
                         (* -1 (GREF G1 :E1E2) (GREF G2 :S)))
                      (GREF G3 :E1)))
                  (+ (* -1 (GREF G3 :E1E2) (GREF G2 :E1E2) (GREF G1 :E1E2))
                     (* (GREF G3 :E1E2) (GREF G1 :S) (GREF G2 :S))
                     (*
                      (+ (* (GREF G1 :S) (GREF G2 :E1E2))
                         (* (GREF G1 :E1E2) (GREF G2 :S)))
                      (GREF G3 :S)))))) 
(DEFMETHOD *G3 ((G1 RE2) (G2 RE2) (G3 SE2))
  (MAKE-INSTANCE 'RE2 :COEF
                 (VECTOR
                  (*
                   (+ (* (GREF G1 :S) (GREF G2 :S))
                      (* -1 (GREF G1 :E1E2) (GREF G2 :E1E2)))
                   (GREF G3 :S))
                  (*
                   (+ (* (GREF G1 :S) (GREF G2 :E1E2))
                      (* (GREF G1 :E1E2) (GREF G2 :S)))
                   (GREF G3 :S))))) 
(DEFMETHOD *G3 ((G1 RE2) (G2 RE2) (G3 VE2))
  (MAKE-INSTANCE 'VE2 :COEF
                 (VECTOR
                  (+ (* -1 (GREF G3 :E1) (GREF G2 :E1E2) (GREF G1 :E1E2))
                     (* (GREF G3 :E1) (GREF G1 :S) (GREF G2 :S))
                     (*
                      (+ (* (GREF G1 :S) (GREF G2 :E1E2))
                         (* (GREF G1 :E1E2) (GREF G2 :S)))
                      (GREF G3 :E2)))
                  (+ (* -1 (GREF G3 :E2) (GREF G2 :E1E2) (GREF G1 :E1E2))
                     (* (GREF G3 :E2) (GREF G1 :S) (GREF G2 :S))
                     (*
                      (+ (* -1 (GREF G1 :S) (GREF G2 :E1E2))
                         (* -1 (GREF G1 :E1E2) (GREF G2 :S)))
                      (GREF G3 :E1)))))) 
(DEFMETHOD *G3 ((G1 RE2) (G2 RE2) (G3 BVE2))
  (MAKE-INSTANCE 'RE2 :COEF
                 (VECTOR
                  (*
                   (+ (* -1 (GREF G1 :S) (GREF G2 :E1E2))
                      (* -1 (GREF G1 :E1E2) (GREF G2 :S)))
                   (GREF G3 :E1E2))
                  (*
                   (+ (* (GREF G1 :S) (GREF G2 :S))
                      (* -1 (GREF G1 :E1E2) (GREF G2 :E1E2)))
                   (GREF G3 :E1E2))))) 
(DEFMETHOD *G3 ((G1 RE2) (G2 RE2) (G3 RE2))
  (MAKE-INSTANCE 'RE2 :COEF
                 (VECTOR
                  (+ (* -1 (GREF G3 :S) (GREF G2 :E1E2) (GREF G1 :E1E2))
                     (* (GREF G3 :S) (GREF G1 :S) (GREF G2 :S))
                     (*
                      (+ (* -1 (GREF G1 :S) (GREF G2 :E1E2))
                         (* -1 (GREF G1 :E1E2) (GREF G2 :S)))
                      (GREF G3 :E1E2)))
                  (+ (* -1 (GREF G3 :E1E2) (GREF G2 :E1E2) (GREF G1 :E1E2))
                     (* (GREF G3 :E1E2) (GREF G1 :S) (GREF G2 :S))
                     (*
                      (+ (* (GREF G1 :S) (GREF G2 :E1E2))
                         (* (GREF G1 :E1E2) (GREF G2 :S)))
                      (GREF G3 :S)))))) 
(DEFMETHOD *I2 ((G1 E2) (G2 E2))
  (MAKE-INSTANCE 'E2 :COEF
                 (VECTOR
                  (+ (* (GREF G1 :S) (GREF G2 :S))
                     (* (GREF G1 :E1) (GREF G2 :E1))
                     (* (GREF G1 :E2) (GREF G2 :E2))
                     (* -1 (GREF G1 :E1E2) (GREF G2 :E1E2)))
                  (+ (* (GREF G1 :S) (GREF G2 :E1))
                     (* -1 (GREF G1 :E2) (GREF G2 :E1E2)))
                  (+ (* (GREF G1 :S) (GREF G2 :E2))
                     (* (GREF G1 :E1) (GREF G2 :E1E2)))
                  (* (GREF G1 :S) (GREF G2 :E1E2))))) 
(DEFMETHOD *I2 ((G1 E2) (G2 SE2))
  (MAKE-INSTANCE 'SE2 :COEF (VECTOR (* (GREF G1 :S) (GREF G2 :S))))) 
(DEFMETHOD *I2 ((G1 E2) (G2 VE2))
  (MAKE-INSTANCE 'E2 :COEF
                 (VECTOR
                  (+ (* (GREF G1 :E1) (GREF G2 :E1))
                     (* (GREF G1 :E2) (GREF G2 :E2)))
                  (* (GREF G1 :S) (GREF G2 :E1)) (* (GREF G1 :S) (GREF G2 :E2))
                  0))) 
(DEFMETHOD *I2 ((G1 E2) (G2 BVE2))
  (MAKE-INSTANCE 'E2 :COEF
                 (VECTOR (* -1 (GREF G1 :E1E2) (GREF G2 :E1E2))
                         (* -1 (GREF G1 :E2) (GREF G2 :E1E2))
                         (* (GREF G1 :E1) (GREF G2 :E1E2))
                         (* (GREF G1 :S) (GREF G2 :E1E2))))) 
(DEFMETHOD *I2 ((G1 E2) (G2 RE2))
  (MAKE-INSTANCE 'E2 :COEF
                 (VECTOR
                  (+ (* (GREF G1 :S) (GREF G2 :S))
                     (* -1 (GREF G1 :E1E2) (GREF G2 :E1E2)))
                  (* -1 (GREF G1 :E2) (GREF G2 :E1E2))
                  (* (GREF G1 :E1) (GREF G2 :E1E2))
                  (* (GREF G1 :S) (GREF G2 :E1E2))))) 
(DEFMETHOD *I2 ((G1 SE2) (G2 E2))
  (MAKE-INSTANCE 'E2 :COEF
                 (VECTOR (* (GREF G1 :S) (GREF G2 :S))
                         (* (GREF G1 :S) (GREF G2 :E1))
                         (* (GREF G1 :S) (GREF G2 :E2))
                         (* (GREF G1 :S) (GREF G2 :E1E2))))) 
(DEFMETHOD *I2 ((G1 SE2) (G2 SE2))
  (MAKE-INSTANCE 'SE2 :COEF (VECTOR (* (GREF G1 :S) (GREF G2 :S))))) 
(DEFMETHOD *I2 ((G1 SE2) (G2 VE2))
  (MAKE-INSTANCE 'VE2 :COEF
                 (VECTOR (* (GREF G1 :S) (GREF G2 :E1))
                         (* (GREF G1 :S) (GREF G2 :E2))))) 
(DEFMETHOD *I2 ((G1 SE2) (G2 BVE2))
  (MAKE-INSTANCE 'BVE2 :COEF (VECTOR (* (GREF G1 :S) (GREF G2 :E1E2))))) 
(DEFMETHOD *I2 ((G1 SE2) (G2 RE2))
  (MAKE-INSTANCE 'RE2 :COEF
                 (VECTOR (* (GREF G1 :S) (GREF G2 :S))
                         (* (GREF G1 :S) (GREF G2 :E1E2))))) 
(DEFMETHOD *I2 ((G1 VE2) (G2 E2))
  (MAKE-INSTANCE 'E2 :COEF
                 (VECTOR
                  (+ (* (GREF G1 :E1) (GREF G2 :E1))
                     (* (GREF G1 :E2) (GREF G2 :E2)))
                  (* -1 (GREF G1 :E2) (GREF G2 :E1E2))
                  (* (GREF G1 :E1) (GREF G2 :E1E2)) 0))) 
(DEFMETHOD *I2 ((G1 VE2) (G2 SE2)) (MAKE-INSTANCE 'SE2 :COEF (VECTOR 0))) 
(DEFMETHOD *I2 ((G1 VE2) (G2 VE2))
  (MAKE-INSTANCE 'SE2 :COEF
                 (VECTOR
                  (+ (* (GREF G1 :E1) (GREF G2 :E1))
                     (* (GREF G1 :E2) (GREF G2 :E2)))))) 
(DEFMETHOD *I2 ((G1 VE2) (G2 BVE2))
  (MAKE-INSTANCE 'VE2 :COEF
                 (VECTOR (* -1 (GREF G1 :E2) (GREF G2 :E1E2))
                         (* (GREF G1 :E1) (GREF G2 :E1E2))))) 
(DEFMETHOD *I2 ((G1 VE2) (G2 RE2))
  (MAKE-INSTANCE 'VE2 :COEF
                 (VECTOR (* -1 (GREF G1 :E2) (GREF G2 :E1E2))
                         (* (GREF G1 :E1) (GREF G2 :E1E2))))) 
(DEFMETHOD *I2 ((G1 BVE2) (G2 E2))
  (MAKE-INSTANCE 'SE2 :COEF (VECTOR (* -1 (GREF G1 :E1E2) (GREF G2 :E1E2))))) 
(DEFMETHOD *I2 ((G1 BVE2) (G2 SE2)) (MAKE-INSTANCE 'SE2 :COEF (VECTOR 0))) 
(DEFMETHOD *I2 ((G1 BVE2) (G2 VE2)) (MAKE-INSTANCE 'SE2 :COEF (VECTOR 0))) 
(DEFMETHOD *I2 ((G1 BVE2) (G2 BVE2))
  (MAKE-INSTANCE 'SE2 :COEF (VECTOR (* -1 (GREF G1 :E1E2) (GREF G2 :E1E2))))) 
(DEFMETHOD *I2 ((G1 BVE2) (G2 RE2))
  (MAKE-INSTANCE 'SE2 :COEF (VECTOR (* -1 (GREF G1 :E1E2) (GREF G2 :E1E2))))) 
(DEFMETHOD *I2 ((G1 RE2) (G2 E2))
  (MAKE-INSTANCE 'E2 :COEF
                 (VECTOR
                  (+ (* (GREF G1 :S) (GREF G2 :S))
                     (* -1 (GREF G1 :E1E2) (GREF G2 :E1E2)))
                  (* (GREF G1 :S) (GREF G2 :E1)) (* (GREF G1 :S) (GREF G2 :E2))
                  (* (GREF G1 :S) (GREF G2 :E1E2))))) 
(DEFMETHOD *I2 ((G1 RE2) (G2 SE2))
  (MAKE-INSTANCE 'SE2 :COEF (VECTOR (* (GREF G1 :S) (GREF G2 :S))))) 
(DEFMETHOD *I2 ((G1 RE2) (G2 VE2))
  (MAKE-INSTANCE 'VE2 :COEF
                 (VECTOR (* (GREF G1 :S) (GREF G2 :E1))
                         (* (GREF G1 :S) (GREF G2 :E2))))) 
(DEFMETHOD *I2 ((G1 RE2) (G2 BVE2))
  (MAKE-INSTANCE 'RE2 :COEF
                 (VECTOR (* -1 (GREF G1 :E1E2) (GREF G2 :E1E2))
                         (* (GREF G1 :S) (GREF G2 :E1E2))))) 
(DEFMETHOD *I2 ((G1 RE2) (G2 RE2))
  (MAKE-INSTANCE 'RE2 :COEF
                 (VECTOR
                  (+ (* (GREF G1 :S) (GREF G2 :S))
                     (* -1 (GREF G1 :E1E2) (GREF G2 :E1E2)))
                  (* (GREF G1 :S) (GREF G2 :E1E2))))) 
(DEFMETHOD *C2 ((G1 E2) (G2 E2))
  (MAKE-INSTANCE 'E2 :COEF
                 (VECTOR 0
                         (+ (* -1 (GREF G1 :E2) (GREF G2 :E1E2))
                            (* (GREF G1 :E1E2) (GREF G2 :E2)))
                         (+ (* (GREF G1 :E1) (GREF G2 :E1E2))
                            (* -1 (GREF G1 :E1E2) (GREF G2 :E1)))
                         (+ (* (GREF G1 :E1) (GREF G2 :E2))
                            (* -1 (GREF G1 :E2) (GREF G2 :E1)))))) 
(DEFMETHOD *C2 ((G1 E2) (G2 SE2)) (MAKE-INSTANCE 'SE2 :COEF (VECTOR 0))) 
(DEFMETHOD *C2 ((G1 E2) (G2 VE2))
  (MAKE-INSTANCE 'E2 :COEF
                 (VECTOR 0 (* (GREF G1 :E1E2) (GREF G2 :E2))
                         (* -1 (GREF G1 :E1E2) (GREF G2 :E1))
                         (+ (* (GREF G1 :E1) (GREF G2 :E2))
                            (* -1 (GREF G1 :E2) (GREF G2 :E1)))))) 
(DEFMETHOD *C2 ((G1 E2) (G2 BVE2))
  (MAKE-INSTANCE 'VE2 :COEF
                 (VECTOR (* -1 (GREF G1 :E2) (GREF G2 :E1E2))
                         (* (GREF G1 :E1) (GREF G2 :E1E2))))) 
(DEFMETHOD *C2 ((G1 E2) (G2 RE2))
  (MAKE-INSTANCE 'VE2 :COEF
                 (VECTOR (* -1 (GREF G1 :E2) (GREF G2 :E1E2))
                         (* (GREF G1 :E1) (GREF G2 :E1E2))))) 
(DEFMETHOD *C2 ((G1 SE2) (G2 E2)) (MAKE-INSTANCE 'SE2 :COEF (VECTOR 0))) 
(DEFMETHOD *C2 ((G1 SE2) (G2 SE2)) (MAKE-INSTANCE 'SE2 :COEF (VECTOR 0))) 
(DEFMETHOD *C2 ((G1 SE2) (G2 VE2)) (MAKE-INSTANCE 'SE2 :COEF (VECTOR 0))) 
(DEFMETHOD *C2 ((G1 SE2) (G2 BVE2)) (MAKE-INSTANCE 'SE2 :COEF (VECTOR 0))) 
(DEFMETHOD *C2 ((G1 SE2) (G2 RE2)) (MAKE-INSTANCE 'SE2 :COEF (VECTOR 0))) 
(DEFMETHOD *C2 ((G1 VE2) (G2 E2))
  (MAKE-INSTANCE 'E2 :COEF
                 (VECTOR 0 (* -1 (GREF G1 :E2) (GREF G2 :E1E2))
                         (* (GREF G1 :E1) (GREF G2 :E1E2))
                         (+ (* (GREF G1 :E1) (GREF G2 :E2))
                            (* -1 (GREF G1 :E2) (GREF G2 :E1)))))) 
(DEFMETHOD *C2 ((G1 VE2) (G2 SE2)) (MAKE-INSTANCE 'SE2 :COEF (VECTOR 0))) 
(DEFMETHOD *C2 ((G1 VE2) (G2 VE2))
  (MAKE-INSTANCE 'BVE2 :COEF
                 (VECTOR
                  (+ (* (GREF G1 :E1) (GREF G2 :E2))
                     (* -1 (GREF G1 :E2) (GREF G2 :E1)))))) 
(DEFMETHOD *C2 ((G1 VE2) (G2 BVE2))
  (MAKE-INSTANCE 'VE2 :COEF
                 (VECTOR (* -1 (GREF G1 :E2) (GREF G2 :E1E2))
                         (* (GREF G1 :E1) (GREF G2 :E1E2))))) 
(DEFMETHOD *C2 ((G1 VE2) (G2 RE2))
  (MAKE-INSTANCE 'VE2 :COEF
                 (VECTOR (* -1 (GREF G1 :E2) (GREF G2 :E1E2))
                         (* (GREF G1 :E1) (GREF G2 :E1E2))))) 
(DEFMETHOD *C2 ((G1 BVE2) (G2 E2))
  (MAKE-INSTANCE 'VE2 :COEF
                 (VECTOR (* (GREF G1 :E1E2) (GREF G2 :E2))
                         (* -1 (GREF G1 :E1E2) (GREF G2 :E1))))) 
(DEFMETHOD *C2 ((G1 BVE2) (G2 SE2)) (MAKE-INSTANCE 'SE2 :COEF (VECTOR 0))) 
(DEFMETHOD *C2 ((G1 BVE2) (G2 VE2))
  (MAKE-INSTANCE 'VE2 :COEF
                 (VECTOR (* (GREF G1 :E1E2) (GREF G2 :E2))
                         (* -1 (GREF G1 :E1E2) (GREF G2 :E1))))) 
(DEFMETHOD *C2 ((G1 BVE2) (G2 BVE2)) (MAKE-INSTANCE 'SE2 :COEF (VECTOR 0))) 
(DEFMETHOD *C2 ((G1 BVE2) (G2 RE2)) (MAKE-INSTANCE 'SE2 :COEF (VECTOR 0))) 
(DEFMETHOD *C2 ((G1 RE2) (G2 E2))
  (MAKE-INSTANCE 'VE2 :COEF
                 (VECTOR (* (GREF G1 :E1E2) (GREF G2 :E2))
                         (* -1 (GREF G1 :E1E2) (GREF G2 :E1))))) 
(DEFMETHOD *C2 ((G1 RE2) (G2 SE2)) (MAKE-INSTANCE 'SE2 :COEF (VECTOR 0))) 
(DEFMETHOD *C2 ((G1 RE2) (G2 VE2))
  (MAKE-INSTANCE 'VE2 :COEF
                 (VECTOR (* (GREF G1 :E1E2) (GREF G2 :E2))
                         (* -1 (GREF G1 :E1E2) (GREF G2 :E1))))) 
(DEFMETHOD *C2 ((G1 RE2) (G2 BVE2)) (MAKE-INSTANCE 'SE2 :COEF (VECTOR 0))) 
(DEFMETHOD *C2 ((G1 RE2) (G2 RE2)) (MAKE-INSTANCE 'SE2 :COEF (VECTOR 0))) 
(DEFMETHOD *S2 ((G1 E2) (G2 E2))
  (+ (* (GREF G1 :S) (GREF G2 :S)) (* (GREF G1 :E1) (GREF G2 :E1))
     (* (GREF G1 :E2) (GREF G2 :E2)) (* -1 (GREF G1 :E1E2) (GREF G2 :E1E2)))) 
(DEFMETHOD *S2 ((G1 E2) (G2 SE2)) (* (GREF G1 :S) (GREF G2 :S))) 
(DEFMETHOD *S2 ((G1 E2) (G2 VE2))
  (+ (* (GREF G1 :E1) (GREF G2 :E1)) (* (GREF G1 :E2) (GREF G2 :E2)))) 
(DEFMETHOD *S2 ((G1 E2) (G2 BVE2)) (* -1 (GREF G1 :E1E2) (GREF G2 :E1E2))) 
(DEFMETHOD *S2 ((G1 E2) (G2 RE2))
  (+ (* (GREF G1 :S) (GREF G2 :S)) (* -1 (GREF G1 :E1E2) (GREF G2 :E1E2)))) 
(DEFMETHOD *S2 ((G1 SE2) (G2 E2)) (* (GREF G1 :S) (GREF G2 :S))) 
(DEFMETHOD *S2 ((G1 SE2) (G2 SE2)) (* (GREF G1 :S) (GREF G2 :S))) 
(DEFMETHOD *S2 ((G1 SE2) (G2 VE2)) 0) 
(DEFMETHOD *S2 ((G1 SE2) (G2 BVE2)) 0) 
(DEFMETHOD *S2 ((G1 SE2) (G2 RE2)) (* (GREF G1 :S) (GREF G2 :S))) 
(DEFMETHOD *S2 ((G1 VE2) (G2 E2))
  (+ (* (GREF G1 :E1) (GREF G2 :E1)) (* (GREF G1 :E2) (GREF G2 :E2)))) 
(DEFMETHOD *S2 ((G1 VE2) (G2 SE2)) 0) 
(DEFMETHOD *S2 ((G1 VE2) (G2 VE2))
  (+ (* (GREF G1 :E1) (GREF G2 :E1)) (* (GREF G1 :E2) (GREF G2 :E2)))) 
(DEFMETHOD *S2 ((G1 VE2) (G2 BVE2)) 0) 
(DEFMETHOD *S2 ((G1 VE2) (G2 RE2)) 0) 
(DEFMETHOD *S2 ((G1 BVE2) (G2 E2)) (* -1 (GREF G1 :E1E2) (GREF G2 :E1E2))) 
(DEFMETHOD *S2 ((G1 BVE2) (G2 SE2)) 0) 
(DEFMETHOD *S2 ((G1 BVE2) (G2 VE2)) 0) 
(DEFMETHOD *S2 ((G1 BVE2) (G2 BVE2)) (* -1 (GREF G1 :E1E2) (GREF G2 :E1E2))) 
(DEFMETHOD *S2 ((G1 BVE2) (G2 RE2)) (* -1 (GREF G1 :E1E2) (GREF G2 :E1E2))) 
(DEFMETHOD *S2 ((G1 RE2) (G2 E2))
  (+ (* (GREF G1 :S) (GREF G2 :S)) (* -1 (GREF G1 :E1E2) (GREF G2 :E1E2)))) 
(DEFMETHOD *S2 ((G1 RE2) (G2 SE2)) (* (GREF G1 :S) (GREF G2 :S))) 
(DEFMETHOD *S2 ((G1 RE2) (G2 VE2)) 0) 
(DEFMETHOD *S2 ((G1 RE2) (G2 BVE2)) (* -1 (GREF G1 :E1E2) (GREF G2 :E1E2))) 
(DEFMETHOD *S2 ((G1 RE2) (G2 RE2))
  (+ (* (GREF G1 :S) (GREF G2 :S)) (* -1 (GREF G1 :E1E2) (GREF G2 :E1E2)))) 
(DEFMETHOD REVG ((G1 E2))
  (MAKE-INSTANCE 'E2 :COEF
                 (VECTOR (GREF G1 :S) (GREF G1 :E1) (GREF G1 :E2)
                         (* -1 (GREF G1 :E1E2))))) 
(DEFMETHOD REVG ((G1 SE2)) (MAKE-INSTANCE 'SE2 :COEF (VECTOR (GREF G1 :S)))) 
(DEFMETHOD REVG ((G1 VE2))
  (MAKE-INSTANCE 'VE2 :COEF (VECTOR (GREF G1 :E1) (GREF G1 :E2)))) 
(DEFMETHOD REVG ((G1 BVE2))
  (MAKE-INSTANCE 'BVE2 :COEF (VECTOR (* -1 (GREF G1 :E1E2))))) 
(DEFMETHOD REVG ((G1 RE2))
  (MAKE-INSTANCE 'RE2 :COEF (VECTOR (GREF G1 :S) (* -1 (GREF G1 :E1E2))))) 
(DEFMETHOD INVV ((G1 SE2))
  (MAKE-INSTANCE 'SE2 :COEF (VECTOR (EXPT (GREF G1 :S) -1)))) 
(DEFMETHOD INVV ((G1 VE2))
  (MAKE-INSTANCE 'VE2 :COEF
                 (VECTOR
                  (* (GREF G1 :E1)
                     (EXPT (+ (EXPT (GREF G1 :E1) 2) (EXPT (GREF G1 :E2) 2))
                           -1))
                  (* (GREF G1 :E2)
                     (EXPT (+ (EXPT (GREF G1 :E1) 2) (EXPT (GREF G1 :E2) 2))
                           -1))))) 
(DEFMETHOD INVV ((G1 BVE2))
  (MAKE-INSTANCE 'BVE2 :COEF (VECTOR (* -1 (EXPT (GREF G1 :E1E2) -1))))) 
(DEFMETHOD INVV ((G1 RE2))
  (MAKE-INSTANCE 'RE2 :COEF
                 (VECTOR
                  (* (GREF G1 :S)
                     (EXPT (+ (EXPT (GREF G1 :S) 2) (EXPT (GREF G1 :E1E2) 2))
                           -1))
                  (* -1 (GREF G1 :E1E2)
                     (EXPT (+ (EXPT (GREF G1 :S) 2) (EXPT (GREF G1 :E1E2) 2))
                           -1))))) 
(DEFMETHOD REFLECTLINE ((G1 E2) (G2 VE2))
  (MAKE-INSTANCE 'E2 :COEF
                 (VECTOR (GREF G1 :S)
                         (* -1
                            (EXPT
                             (+ (EXPT (GREF G2 :E1) 2) (EXPT (GREF G2 :E2) 2))
                             -1)
                            (+ (* -1 (GREF G1 :E1) (EXPT (GREF G2 :E1) 2))
                               (* -2 (GREF G1 :E2) (GREF G2 :E1) (GREF G2 :E2))
                               (* (GREF G1 :E1) (EXPT (GREF G2 :E2) 2))))
                         (*
                          (EXPT
                           (+ (EXPT (GREF G2 :E1) 2) (EXPT (GREF G2 :E2) 2))
                           -1)
                          (+ (* -1 (GREF G1 :E2) (EXPT (GREF G2 :E1) 2))
                             (* 2 (GREF G1 :E1) (GREF G2 :E1) (GREF G2 :E2))
                             (* (GREF G1 :E2) (EXPT (GREF G2 :E2) 2))))
                         (* -1 (GREF G1 :E1E2))))) 
(DEFMETHOD REFLECTLINE ((G1 SE2) (G2 VE2))
  (MAKE-INSTANCE 'SE2 :COEF (VECTOR (GREF G1 :S)))) 
(DEFMETHOD REFLECTLINE ((G1 VE2) (G2 VE2))
  (MAKE-INSTANCE 'VE2 :COEF
                 (VECTOR
                  (* -1
                     (EXPT (+ (EXPT (GREF G2 :E1) 2) (EXPT (GREF G2 :E2) 2))
                           -1)
                     (+ (* -1 (GREF G1 :E1) (EXPT (GREF G2 :E1) 2))
                        (* -2 (GREF G1 :E2) (GREF G2 :E1) (GREF G2 :E2))
                        (* (GREF G1 :E1) (EXPT (GREF G2 :E2) 2))))
                  (*
                   (EXPT (+ (EXPT (GREF G2 :E1) 2) (EXPT (GREF G2 :E2) 2)) -1)
                   (+ (* -1 (GREF G1 :E2) (EXPT (GREF G2 :E1) 2))
                      (* 2 (GREF G1 :E1) (GREF G2 :E1) (GREF G2 :E2))
                      (* (GREF G1 :E2) (EXPT (GREF G2 :E2) 2))))))) 
(DEFMETHOD REFLECTLINE ((G1 BVE2) (G2 VE2))
  (MAKE-INSTANCE 'BVE2 :COEF (VECTOR (* -1 (GREF G1 :E1E2))))) 
(DEFMETHOD REFLECTLINE ((G1 RE2) (G2 VE2))
  (MAKE-INSTANCE 'RE2 :COEF (VECTOR (GREF G1 :S) (* -1 (GREF G1 :E1E2))))) 
(DEFMETHOD REFLECTPLANE ((G1 E2) (G2 VE2))
  (MAKE-INSTANCE 'E2 :COEF
                 (VECTOR (* -1 (GREF G1 :S))
                         (*
                          (EXPT
                           (+ (EXPT (GREF G2 :E1) 2) (EXPT (GREF G2 :E2) 2))
                           -1)
                          (+ (* -1 (GREF G1 :E1) (EXPT (GREF G2 :E1) 2))
                             (* -2 (GREF G1 :E2) (GREF G2 :E1) (GREF G2 :E2))
                             (* (GREF G1 :E1) (EXPT (GREF G2 :E2) 2))))
                         (* -1
                            (EXPT
                             (+ (EXPT (GREF G2 :E1) 2) (EXPT (GREF G2 :E2) 2))
                             -1)
                            (+ (* -1 (GREF G1 :E2) (EXPT (GREF G2 :E1) 2))
                               (* 2 (GREF G1 :E1) (GREF G2 :E1) (GREF G2 :E2))
                               (* (GREF G1 :E2) (EXPT (GREF G2 :E2) 2))))
                         (GREF G1 :E1E2)))) 
(DEFMETHOD REFLECTPLANE ((G1 SE2) (G2 VE2))
  (MAKE-INSTANCE 'SE2 :COEF (VECTOR (* -1 (GREF G1 :S))))) 
(DEFMETHOD REFLECTPLANE ((G1 VE2) (G2 VE2))
  (MAKE-INSTANCE 'VE2 :COEF
                 (VECTOR
                  (*
                   (EXPT (+ (EXPT (GREF G2 :E1) 2) (EXPT (GREF G2 :E2) 2)) -1)
                   (+ (* -1 (GREF G1 :E1) (EXPT (GREF G2 :E1) 2))
                      (* -2 (GREF G1 :E2) (GREF G2 :E1) (GREF G2 :E2))
                      (* (GREF G1 :E1) (EXPT (GREF G2 :E2) 2))))
                  (* -1
                     (EXPT (+ (EXPT (GREF G2 :E1) 2) (EXPT (GREF G2 :E2) 2))
                           -1)
                     (+ (* -1 (GREF G1 :E2) (EXPT (GREF G2 :E1) 2))
                        (* 2 (GREF G1 :E1) (GREF G2 :E1) (GREF G2 :E2))
                        (* (GREF G1 :E2) (EXPT (GREF G2 :E2) 2))))))) 
(DEFMETHOD REFLECTPLANE ((G1 BVE2) (G2 VE2))
  (MAKE-INSTANCE 'BVE2 :COEF (VECTOR (GREF G1 :E1E2)))) 
(DEFMETHOD REFLECTPLANE ((G1 RE2) (G2 VE2))
  (MAKE-INSTANCE 'RE2 :COEF (VECTOR (* -1 (GREF G1 :S)) (GREF G1 :E1E2)))) 
(DEFMETHOD ROTATEG ((G1 E2) (G2 RE2))
  (MAKE-INSTANCE 'E2 :COEF
                 (VECTOR (GREF G1 :S)
                         (* -1
                            (EXPT
                             (+ (EXPT (GREF G2 :S) 2) (EXPT (GREF G2 :E1E2) 2))
                             -1)
                            (+ (* -1 (GREF G1 :E1) (EXPT (GREF G2 :S) 2))
                               (* -2 (GREF G1 :E2) (GREF G2 :S)
                                  (GREF G2 :E1E2))
                               (* (GREF G1 :E1) (EXPT (GREF G2 :E1E2) 2))))
                         (* -1
                            (EXPT
                             (+ (EXPT (GREF G2 :S) 2) (EXPT (GREF G2 :E1E2) 2))
                             -1)
                            (+ (* -1 (GREF G1 :E2) (EXPT (GREF G2 :S) 2))
                               (* 2 (GREF G1 :E1) (GREF G2 :S) (GREF G2 :E1E2))
                               (* (GREF G1 :E2) (EXPT (GREF G2 :E1E2) 2))))
                         (GREF G1 :E1E2)))) 
(DEFMETHOD ROTATEG ((G1 SE2) (G2 RE2))
  (MAKE-INSTANCE 'SE2 :COEF (VECTOR (GREF G1 :S)))) 
(DEFMETHOD ROTATEG ((G1 VE2) (G2 RE2))
  (MAKE-INSTANCE 'VE2 :COEF
                 (VECTOR
                  (* -1
                     (EXPT (+ (EXPT (GREF G2 :S) 2) (EXPT (GREF G2 :E1E2) 2))
                           -1)
                     (+ (* -1 (GREF G1 :E1) (EXPT (GREF G2 :S) 2))
                        (* -2 (GREF G1 :E2) (GREF G2 :S) (GREF G2 :E1E2))
                        (* (GREF G1 :E1) (EXPT (GREF G2 :E1E2) 2))))
                  (* -1
                     (EXPT (+ (EXPT (GREF G2 :S) 2) (EXPT (GREF G2 :E1E2) 2))
                           -1)
                     (+ (* -1 (GREF G1 :E2) (EXPT (GREF G2 :S) 2))
                        (* 2 (GREF G1 :E1) (GREF G2 :S) (GREF G2 :E1E2))
                        (* (GREF G1 :E2) (EXPT (GREF G2 :E1E2) 2))))))) 
(DEFMETHOD ROTATEG ((G1 BVE2) (G2 RE2))
  (MAKE-INSTANCE 'BVE2 :COEF (VECTOR (GREF G1 :E1E2)))) 
(DEFMETHOD ROTATEG ((G1 RE2) (G2 RE2))
  (MAKE-INSTANCE 'RE2 :COEF (VECTOR (GREF G1 :S) (GREF G1 :E1E2)))) 
(DEFMETHOD SPIN ((G1 E2) (G2 RE2))
  (MAKE-INSTANCE 'E2 :COEF
                 (VECTOR
                  (+ (* (EXPT (GREF G2 :S) 2) (GREF G1 :S))
                     (* (GREF G1 :S) (EXPT (GREF G2 :E1E2) 2)))
                  (+ (* (GREF G1 :E1) (EXPT (GREF G2 :S) 2))
                     (* 2 (GREF G1 :E2) (GREF G2 :S) (GREF G2 :E1E2))
                     (* -1 (GREF G1 :E1) (EXPT (GREF G2 :E1E2) 2)))
                  (+ (* (GREF G1 :E2) (EXPT (GREF G2 :S) 2))
                     (* -2 (GREF G1 :E1) (GREF G2 :S) (GREF G2 :E1E2))
                     (* -1 (GREF G1 :E2) (EXPT (GREF G2 :E1E2) 2)))
                  (+ (* (GREF G1 :E1E2) (EXPT (GREF G2 :E1E2) 2))
                     (* (GREF G1 :E1E2) (EXPT (GREF G2 :S) 2)))))) 
(DEFMETHOD SPIN ((G1 SE2) (G2 RE2))
  (MAKE-INSTANCE 'SE2 :COEF
                 (VECTOR
                  (+ (* (EXPT (GREF G2 :S) 2) (GREF G1 :S))
                     (* (GREF G1 :S) (EXPT (GREF G2 :E1E2) 2)))))) 
(DEFMETHOD SPIN ((G1 VE2) (G2 RE2))
  (MAKE-INSTANCE 'VE2 :COEF
                 (VECTOR
                  (+ (* (EXPT (GREF G2 :S) 2) (GREF G1 :E1))
                     (* 2 (GREF G2 :S) (GREF G1 :E2) (GREF G2 :E1E2))
                     (* -1 (GREF G1 :E1) (EXPT (GREF G2 :E1E2) 2)))
                  (+ (* -1 (GREF G1 :E2) (EXPT (GREF G2 :E1E2) 2))
                     (* -2 (GREF G2 :E1E2) (GREF G1 :E1) (GREF G2 :S))
                     (* (GREF G1 :E2) (EXPT (GREF G2 :S) 2)))))) 
(DEFMETHOD SPIN ((G1 BVE2) (G2 RE2))
  (MAKE-INSTANCE 'BVE2 :COEF
                 (VECTOR
                  (+ (* (EXPT (GREF G2 :E1E2) 2) (GREF G1 :E1E2))
                     (* (GREF G1 :E1E2) (EXPT (GREF G2 :S) 2)))))) 
(DEFMETHOD SPIN ((G1 RE2) (G2 RE2))
  (MAKE-INSTANCE 'RE2 :COEF
                 (VECTOR
                  (+ (* (EXPT (GREF G2 :S) 2) (GREF G1 :S))
                     (* (GREF G1 :S) (EXPT (GREF G2 :E1E2) 2)))
                  (+ (* (GREF G1 :E1E2) (EXPT (GREF G2 :E1E2) 2))
                     (* (GREF G1 :E1E2) (EXPT (GREF G2 :S) 2)))))) 
(DEFMETHOD NORMR2 ((G1 E2))
  (+ (EXPT (GREF G1 :S) 2) (EXPT (GREF G1 :E1) 2) (EXPT (GREF G1 :E2) 2)
     (EXPT (GREF G1 :E1E2) 2))) 
(DEFMETHOD NORMR2 ((G1 SE2)) (EXPT (GREF G1 :S) 2)) 
(DEFMETHOD NORMR2 ((G1 VE2)) (+ (EXPT (GREF G1 :E1) 2) (EXPT (GREF G1 :E2) 2))) 
(DEFMETHOD NORMR2 ((G1 BVE2)) (EXPT (GREF G1 :E1E2) 2)) 
(DEFMETHOD NORMR2 ((G1 RE2)) (+ (EXPT (GREF G1 :S) 2) (EXPT (GREF G1 :E1E2) 2))) 
(DEFMETHOD NORMR ((G1 E2))
  (*
   (EXPT
    (+ (EXPT (GREF G1 :S) 2) (EXPT (GREF G1 :E1) 2) (EXPT (GREF G1 :E2) 2)
       (EXPT (GREF G1 :E1E2) 2))
    1/2)
   (SIGNUM
    (+ (EXPT (GREF G1 :S) 2) (EXPT (GREF G1 :E1) 2) (EXPT (GREF G1 :E2) 2)
       (EXPT (GREF G1 :E1E2) 2))))) 
(DEFMETHOD NORMR ((G1 SE2))
  (* (ABS (GREF G1 :S)) (SIGNUM (EXPT (GREF G1 :S) 2)))) 
(DEFMETHOD NORMR ((G1 VE2))
  (* (EXPT (+ (EXPT (GREF G1 :E1) 2) (EXPT (GREF G1 :E2) 2)) 1/2)
     (SIGNUM (+ (EXPT (GREF G1 :E1) 2) (EXPT (GREF G1 :E2) 2))))) 
(DEFMETHOD NORMR ((G1 BVE2))
  (* (ABS (GREF G1 :E1E2)) (SIGNUM (EXPT (GREF G1 :E1E2) 2)))) 
(DEFMETHOD NORMR ((G1 RE2))
  (* (EXPT (+ (EXPT (GREF G1 :S) 2) (EXPT (GREF G1 :E1E2) 2)) 1/2)
     (SIGNUM (+ (EXPT (GREF G1 :S) 2) (EXPT (GREF G1 :E1E2) 2))))) 
(DEFMETHOD NORME2 ((G1 E2))
  (+ (EXPT (GREF G1 :S) 2) (EXPT (GREF G1 :E1) 2) (EXPT (GREF G1 :E2) 2)
     (EXPT (GREF G1 :E1E2) 2))) 
(DEFMETHOD NORME2 ((G1 SE2)) (EXPT (GREF G1 :S) 2)) 
(DEFMETHOD NORME2 ((G1 VE2)) (+ (EXPT (GREF G1 :E1) 2) (EXPT (GREF G1 :E2) 2))) 
(DEFMETHOD NORME2 ((G1 BVE2)) (EXPT (GREF G1 :E1E2) 2)) 
(DEFMETHOD NORME2 ((G1 RE2)) (+ (EXPT (GREF G1 :S) 2) (EXPT (GREF G1 :E1E2) 2))) 
(DEFMETHOD NORME ((G1 E2))
  (EXPT
   (+ (EXPT (GREF G1 :S) 2) (EXPT (GREF G1 :E1) 2) (EXPT (GREF G1 :E2) 2)
      (EXPT (GREF G1 :E1E2) 2))
   1/2)) 
(DEFMETHOD NORME ((G1 SE2)) (ABS (GREF G1 :S))) 
(DEFMETHOD NORME ((G1 VE2))
  (EXPT (+ (EXPT (GREF G1 :E1) 2) (EXPT (GREF G1 :E2) 2)) 1/2)) 
(DEFMETHOD NORME ((G1 BVE2)) (ABS (GREF G1 :E1E2))) 
(DEFMETHOD NORME ((G1 RE2))
  (EXPT (+ (EXPT (GREF G1 :S) 2) (EXPT (GREF G1 :E1E2) 2)) 1/2)) 
(DEFMETHOD NORMINF ((G1 E2))
  (MAX (ABS (GREF G1 :S)) (ABS (GREF G1 :E1)) (ABS (GREF G1 :E2))
       (ABS (GREF G1 :E1E2)))) 
(DEFMETHOD NORMINF ((G1 SE2)) (ABS (GREF G1 :S))) 
(DEFMETHOD NORMINF ((G1 VE2)) (MAX (ABS (GREF G1 :E1)) (ABS (GREF G1 :E2)))) 
(DEFMETHOD NORMINF ((G1 BVE2)) (ABS (GREF G1 :E1E2))) 
(DEFMETHOD NORMINF ((G1 RE2)) (MAX (ABS (GREF G1 :S)) (ABS (GREF G1 :E1E2)))) 
(DEFMETHOD PSEUDOSCALAR ((G1 E2)) (MAKE-INSTANCE 'BVE2 :COEF (VECTOR 1))) 
(DEFMETHOD PSEUDOSCALAR ((G1 SE2)) (MAKE-INSTANCE 'BVE2 :COEF (VECTOR 1))) 
(DEFMETHOD PSEUDOSCALAR ((G1 VE2)) (MAKE-INSTANCE 'BVE2 :COEF (VECTOR 1))) 
(DEFMETHOD PSEUDOSCALAR ((G1 BVE2)) (MAKE-INSTANCE 'BVE2 :COEF (VECTOR 1))) 
(DEFMETHOD PSEUDOSCALAR ((G1 RE2)) (MAKE-INSTANCE 'BVE2 :COEF (VECTOR 1))) 
(DEFMETHOD DUAL ((G1 E2))
  (MAKE-INSTANCE 'E2 :COEF
                 (VECTOR (GREF G1 :E1E2) (GREF G1 :E2) (* -1 (GREF G1 :E1))
                         (* -1 (GREF G1 :S))))) 
(DEFMETHOD DUAL ((G1 SE2))
  (MAKE-INSTANCE 'BVE2 :COEF (VECTOR (* -1 (GREF G1 :S))))) 
(DEFMETHOD DUAL ((G1 VE2))
  (MAKE-INSTANCE 'VE2 :COEF (VECTOR (GREF G1 :E2) (* -1 (GREF G1 :E1))))) 
(DEFMETHOD DUAL ((G1 BVE2)) (MAKE-INSTANCE 'SE2 :COEF (VECTOR (GREF G1 :E1E2)))) 
(DEFMETHOD DUAL ((G1 RE2))
  (MAKE-INSTANCE 'RE2 :COEF (VECTOR (GREF G1 :E1E2) (* -1 (GREF G1 :S))))) 
(DEFMETHOD UNITG ((G1 E2))
  (MAKE-INSTANCE 'E2 :COEF
                 (VECTOR
                  (* (GREF G1 :S)
                     (EXPT
                      (+ (EXPT (GREF G1 :S) 2) (EXPT (GREF G1 :E1) 2)
                         (EXPT (GREF G1 :E2) 2) (EXPT (GREF G1 :E1E2) 2))
                      -1/2))
                  (* (GREF G1 :E1)
                     (EXPT
                      (+ (EXPT (GREF G1 :S) 2) (EXPT (GREF G1 :E1) 2)
                         (EXPT (GREF G1 :E2) 2) (EXPT (GREF G1 :E1E2) 2))
                      -1/2))
                  (* (GREF G1 :E2)
                     (EXPT
                      (+ (EXPT (GREF G1 :S) 2) (EXPT (GREF G1 :E1) 2)
                         (EXPT (GREF G1 :E2) 2) (EXPT (GREF G1 :E1E2) 2))
                      -1/2))
                  (* (GREF G1 :E1E2)
                     (EXPT
                      (+ (EXPT (GREF G1 :S) 2) (EXPT (GREF G1 :E1) 2)
                         (EXPT (GREF G1 :E2) 2) (EXPT (GREF G1 :E1E2) 2))
                      -1/2))))) 
(DEFMETHOD UNITG ((G1 SE2))
  (MAKE-INSTANCE 'SE2 :COEF
                 (VECTOR (* (GREF G1 :S) (EXPT (ABS (GREF G1 :S)) -1))))) 
(DEFMETHOD UNITG ((G1 VE2))
  (MAKE-INSTANCE 'VE2 :COEF
                 (VECTOR
                  (* (GREF G1 :E1)
                     (EXPT (+ (EXPT (GREF G1 :E1) 2) (EXPT (GREF G1 :E2) 2))
                           -1/2))
                  (* (GREF G1 :E2)
                     (EXPT (+ (EXPT (GREF G1 :E1) 2) (EXPT (GREF G1 :E2) 2))
                           -1/2))))) 
(DEFMETHOD UNITG ((G1 BVE2))
  (MAKE-INSTANCE 'BVE2 :COEF
                 (VECTOR (* (GREF G1 :E1E2) (EXPT (ABS (GREF G1 :E1E2)) -1))))) 
(DEFMETHOD UNITG ((G1 RE2))
  (MAKE-INSTANCE 'RE2 :COEF
                 (VECTOR
                  (* (GREF G1 :S)
                     (EXPT (+ (EXPT (GREF G1 :S) 2) (EXPT (GREF G1 :E1E2) 2))
                           -1/2))
                  (* (GREF G1 :E1E2)
                     (EXPT (+ (EXPT (GREF G1 :S) 2) (EXPT (GREF G1 :E1E2) 2))
                           -1/2))))) 
(DEFMETHOD ONEG ((G1 E2)) (MAKE-INSTANCE 'SE2 :COEF (VECTOR 1))) 
(DEFMETHOD ONEG ((G1 SE2)) (MAKE-INSTANCE 'SE2 :COEF (VECTOR 1))) 
(DEFMETHOD ONEG ((G1 VE2)) (MAKE-INSTANCE 'SE2 :COEF (VECTOR 1))) 
(DEFMETHOD ONEG ((G1 BVE2)) (MAKE-INSTANCE 'SE2 :COEF (VECTOR 1))) 
(DEFMETHOD ONEG ((G1 RE2)) (MAKE-INSTANCE 'SE2 :COEF (VECTOR 1))) 
(DEFMETHOD SQUARE ((G1 E2))
  (MAKE-INSTANCE 'E2 :COEF
                 (VECTOR
                  (+ (EXPT (GREF G1 :S) 2) (EXPT (GREF G1 :E1) 2)
                     (EXPT (GREF G1 :E2) 2) (* -1 (EXPT (GREF G1 :E1E2) 2)))
                  (* 2 (GREF G1 :E1) (GREF G1 :S))
                  (* 2 (GREF G1 :E2) (GREF G1 :S))
                  (* 2 (GREF G1 :E1E2) (GREF G1 :S))))) 
(DEFMETHOD SQUARE ((G1 SE2))
  (MAKE-INSTANCE 'SE2 :COEF (VECTOR (EXPT (GREF G1 :S) 2)))) 
(DEFMETHOD SQUARE ((G1 VE2))
  (MAKE-INSTANCE 'SE2 :COEF
                 (VECTOR (+ (EXPT (GREF G1 :E1) 2) (EXPT (GREF G1 :E2) 2))))) 
(DEFMETHOD SQUARE ((G1 BVE2))
  (MAKE-INSTANCE 'SE2 :COEF (VECTOR (* -1 (EXPT (GREF G1 :E1E2) 2))))) 
(DEFMETHOD SQUARE ((G1 RE2))
  (MAKE-INSTANCE 'RE2 :COEF
                 (VECTOR
                  (+ (EXPT (GREF G1 :S) 2) (* -1 (EXPT (GREF G1 :E1E2) 2)))
                  (* 2 (GREF G1 :E1E2) (GREF G1 :S))))) 
(DEFMETHOD CUBE ((G1 E2))
  (MAKE-INSTANCE 'E2 :COEF
                 (VECTOR
                  (+
                   (*
                    (+ (* 3 (EXPT (GREF G1 :E2) 2))
                       (* 3 (EXPT (GREF G1 :E1) 2))
                       (* -3 (EXPT (GREF G1 :E1E2) 2)))
                    (GREF G1 :S))
                   (EXPT (GREF G1 :S) 3))
                  (+
                   (*
                    (+ (EXPT (GREF G1 :E2) 2) (* 3 (EXPT (GREF G1 :S) 2))
                       (* -1 (EXPT (GREF G1 :E1E2) 2)))
                    (GREF G1 :E1))
                   (EXPT (GREF G1 :E1) 3))
                  (+
                   (*
                    (+ (EXPT (GREF G1 :E1) 2) (* 3 (EXPT (GREF G1 :S) 2))
                       (* -1 (EXPT (GREF G1 :E1E2) 2)))
                    (GREF G1 :E2))
                   (EXPT (GREF G1 :E2) 3))
                  (+
                   (*
                    (+ (* 3 (EXPT (GREF G1 :S) 2)) (EXPT (GREF G1 :E1) 2)
                       (EXPT (GREF G1 :E2) 2))
                    (GREF G1 :E1E2))
                   (* -1 (EXPT (GREF G1 :E1E2) 3)))))) 
(DEFMETHOD CUBE ((G1 SE2))
  (MAKE-INSTANCE 'SE2 :COEF (VECTOR (EXPT (GREF G1 :S) 3)))) 
(DEFMETHOD CUBE ((G1 VE2))
  (MAKE-INSTANCE 'VE2 :COEF
                 (VECTOR
                  (+ (* (EXPT (GREF G1 :E2) 2) (GREF G1 :E1))
                     (EXPT (GREF G1 :E1) 3))
                  (+ (* (EXPT (GREF G1 :E1) 2) (GREF G1 :E2))
                     (EXPT (GREF G1 :E2) 3))))) 
(DEFMETHOD CUBE ((G1 BVE2))
  (MAKE-INSTANCE 'BVE2 :COEF (VECTOR (* -1 (EXPT (GREF G1 :E1E2) 3))))) 
(DEFMETHOD CUBE ((G1 RE2))
  (MAKE-INSTANCE 'RE2 :COEF
                 (VECTOR
                  (+ (* -3 (EXPT (GREF G1 :E1E2) 2) (GREF G1 :S))
                     (EXPT (GREF G1 :S) 3))
                  (+ (* 3 (EXPT (GREF G1 :S) 2) (GREF G1 :E1E2))
                     (* -1 (EXPT (GREF G1 :E1E2) 3)))))) 
(DEFMETHOD BLD-GEN::TWO+ ((G1 E2) (G2 E2))
  (MAKE-INSTANCE 'E2 :COEF
                 (VECTOR (+ (GREF G1 :S) (GREF G2 :S))
                         (+ (GREF G1 :E1) (GREF G2 :E1))
                         (+ (GREF G1 :E2) (GREF G2 :E2))
                         (+ (GREF G1 :E1E2) (GREF G2 :E1E2))))) 
(DEFMETHOD BLD-GEN::TWO+ ((G1 E2) (G2 SE2))
  (MAKE-INSTANCE 'E2 :COEF
                 (VECTOR (+ (GREF G1 :S) (GREF G2 :S)) (GREF G1 :E1)
                         (GREF G1 :E2) (GREF G1 :E1E2)))) 
(DEFMETHOD BLD-GEN::TWO+ ((G1 E2) (G2 VE2))
  (MAKE-INSTANCE 'E2 :COEF
                 (VECTOR (GREF G1 :S) (+ (GREF G1 :E1) (GREF G2 :E1))
                         (+ (GREF G1 :E2) (GREF G2 :E2)) (GREF G1 :E1E2)))) 
(DEFMETHOD BLD-GEN::TWO+ ((G1 E2) (G2 BVE2))
  (MAKE-INSTANCE 'E2 :COEF
                 (VECTOR (GREF G1 :S) (GREF G1 :E1) (GREF G1 :E2)
                         (+ (GREF G1 :E1E2) (GREF G2 :E1E2))))) 
(DEFMETHOD BLD-GEN::TWO+ ((G1 E2) (G2 RE2))
  (MAKE-INSTANCE 'E2 :COEF
                 (VECTOR (+ (GREF G1 :S) (GREF G2 :S)) (GREF G1 :E1)
                         (GREF G1 :E2) (+ (GREF G1 :E1E2) (GREF G2 :E1E2))))) 
(DEFMETHOD BLD-GEN::TWO+ ((G1 SE2) (G2 E2))
  (MAKE-INSTANCE 'E2 :COEF
                 (VECTOR (+ (GREF G1 :S) (GREF G2 :S)) (GREF G2 :E1)
                         (GREF G2 :E2) (GREF G2 :E1E2)))) 
(DEFMETHOD BLD-GEN::TWO+ ((G1 SE2) (G2 SE2))
  (MAKE-INSTANCE 'SE2 :COEF (VECTOR (+ (GREF G1 :S) (GREF G2 :S))))) 
(DEFMETHOD BLD-GEN::TWO+ ((G1 SE2) (G2 VE2))
  (MAKE-INSTANCE 'E2 :COEF (VECTOR (GREF G1 :S) (GREF G2 :E1) (GREF G2 :E2) 0))) 
(DEFMETHOD BLD-GEN::TWO+ ((G1 SE2) (G2 BVE2))
  (MAKE-INSTANCE 'RE2 :COEF (VECTOR (GREF G1 :S) (GREF G2 :E1E2)))) 
(DEFMETHOD BLD-GEN::TWO+ ((G1 SE2) (G2 RE2))
  (MAKE-INSTANCE 'RE2 :COEF
                 (VECTOR (+ (GREF G1 :S) (GREF G2 :S)) (GREF G2 :E1E2)))) 
(DEFMETHOD BLD-GEN::TWO+ ((G1 VE2) (G2 E2))
  (MAKE-INSTANCE 'E2 :COEF
                 (VECTOR (GREF G2 :S) (+ (GREF G1 :E1) (GREF G2 :E1))
                         (+ (GREF G1 :E2) (GREF G2 :E2)) (GREF G2 :E1E2)))) 
(DEFMETHOD BLD-GEN::TWO+ ((G1 VE2) (G2 SE2))
  (MAKE-INSTANCE 'E2 :COEF (VECTOR (GREF G2 :S) (GREF G1 :E1) (GREF G1 :E2) 0))) 
(DEFMETHOD BLD-GEN::TWO+ ((G1 VE2) (G2 VE2))
  (MAKE-INSTANCE 'VE2 :COEF
                 (VECTOR (+ (GREF G1 :E1) (GREF G2 :E1))
                         (+ (GREF G1 :E2) (GREF G2 :E2))))) 
(DEFMETHOD BLD-GEN::TWO+ ((G1 VE2) (G2 BVE2))
  (MAKE-INSTANCE 'E2 :COEF
                 (VECTOR 0 (GREF G1 :E1) (GREF G1 :E2) (GREF G2 :E1E2)))) 
(DEFMETHOD BLD-GEN::TWO+ ((G1 VE2) (G2 RE2))
  (MAKE-INSTANCE 'E2 :COEF
                 (VECTOR (GREF G2 :S) (GREF G1 :E1) (GREF G1 :E2)
                         (GREF G2 :E1E2)))) 
(DEFMETHOD BLD-GEN::TWO+ ((G1 BVE2) (G2 E2))
  (MAKE-INSTANCE 'E2 :COEF
                 (VECTOR (GREF G2 :S) (GREF G2 :E1) (GREF G2 :E2)
                         (+ (GREF G1 :E1E2) (GREF G2 :E1E2))))) 
(DEFMETHOD BLD-GEN::TWO+ ((G1 BVE2) (G2 SE2))
  (MAKE-INSTANCE 'RE2 :COEF (VECTOR (GREF G2 :S) (GREF G1 :E1E2)))) 
(DEFMETHOD BLD-GEN::TWO+ ((G1 BVE2) (G2 VE2))
  (MAKE-INSTANCE 'E2 :COEF
                 (VECTOR 0 (GREF G2 :E1) (GREF G2 :E2) (GREF G1 :E1E2)))) 
(DEFMETHOD BLD-GEN::TWO+ ((G1 BVE2) (G2 BVE2))
  (MAKE-INSTANCE 'BVE2 :COEF (VECTOR (+ (GREF G1 :E1E2) (GREF G2 :E1E2))))) 
(DEFMETHOD BLD-GEN::TWO+ ((G1 BVE2) (G2 RE2))
  (MAKE-INSTANCE 'RE2 :COEF
                 (VECTOR (GREF G2 :S) (+ (GREF G1 :E1E2) (GREF G2 :E1E2))))) 
(DEFMETHOD BLD-GEN::TWO+ ((G1 RE2) (G2 E2))
  (MAKE-INSTANCE 'E2 :COEF
                 (VECTOR (+ (GREF G1 :S) (GREF G2 :S)) (GREF G2 :E1)
                         (GREF G2 :E2) (+ (GREF G1 :E1E2) (GREF G2 :E1E2))))) 
(DEFMETHOD BLD-GEN::TWO+ ((G1 RE2) (G2 SE2))
  (MAKE-INSTANCE 'RE2 :COEF
                 (VECTOR (+ (GREF G1 :S) (GREF G2 :S)) (GREF G1 :E1E2)))) 
(DEFMETHOD BLD-GEN::TWO+ ((G1 RE2) (G2 VE2))
  (MAKE-INSTANCE 'E2 :COEF
                 (VECTOR (GREF G1 :S) (GREF G2 :E1) (GREF G2 :E2)
                         (GREF G1 :E1E2)))) 
(DEFMETHOD BLD-GEN::TWO+ ((G1 RE2) (G2 BVE2))
  (MAKE-INSTANCE 'RE2 :COEF
                 (VECTOR (GREF G1 :S) (+ (GREF G1 :E1E2) (GREF G2 :E1E2))))) 
(DEFMETHOD BLD-GEN::TWO+ ((G1 RE2) (G2 RE2))
  (MAKE-INSTANCE 'RE2 :COEF
                 (VECTOR (+ (GREF G1 :S) (GREF G2 :S))
                         (+ (GREF G1 :E1E2) (GREF G2 :E1E2))))) 
(DEFMETHOD BLD-GEN::TWO+ ((G1 E2) (G2 T))
  (MAKE-INSTANCE 'E2 :COEF
                 (VECTOR (+ G2 (GREF G1 :S)) (GREF G1 :E1) (GREF G1 :E2)
                         (GREF G1 :E1E2)))) 
(DEFMETHOD BLD-GEN::TWO+ ((G1 SE2) (G2 T))
  (MAKE-INSTANCE 'SE2 :COEF (VECTOR (+ G2 (GREF G1 :S))))) 
(DEFMETHOD BLD-GEN::TWO+ ((G1 VE2) (G2 T))
  (MAKE-INSTANCE 'E2 :COEF (VECTOR G2 (GREF G1 :E1) (GREF G1 :E2) 0))) 
(DEFMETHOD BLD-GEN::TWO+ ((G1 BVE2) (G2 T))
  (MAKE-INSTANCE 'RE2 :COEF (VECTOR G2 (GREF G1 :E1E2)))) 
(DEFMETHOD BLD-GEN::TWO+ ((G1 RE2) (G2 T))
  (MAKE-INSTANCE 'RE2 :COEF (VECTOR (+ G2 (GREF G1 :S)) (GREF G1 :E1E2)))) 
(DEFMETHOD BLD-GEN::TWO+ ((G1 T) (G2 E2))
  (MAKE-INSTANCE 'E2 :COEF
                 (VECTOR (+ G1 (GREF G2 :S)) (GREF G2 :E1) (GREF G2 :E2)
                         (GREF G2 :E1E2)))) 
(DEFMETHOD BLD-GEN::TWO+ ((G1 T) (G2 SE2))
  (MAKE-INSTANCE 'SE2 :COEF (VECTOR (+ G1 (GREF G2 :S))))) 
(DEFMETHOD BLD-GEN::TWO+ ((G1 T) (G2 VE2))
  (MAKE-INSTANCE 'E2 :COEF (VECTOR G1 (GREF G2 :E1) (GREF G2 :E2) 0))) 
(DEFMETHOD BLD-GEN::TWO+ ((G1 T) (G2 BVE2))
  (MAKE-INSTANCE 'RE2 :COEF (VECTOR G1 (GREF G2 :E1E2)))) 
(DEFMETHOD BLD-GEN::TWO+ ((G1 T) (G2 RE2))
  (MAKE-INSTANCE 'RE2 :COEF (VECTOR (+ G1 (GREF G2 :S)) (GREF G2 :E1E2)))) 
(DEFMETHOD BLD-GEN::ONE- ((G1 E2))
  (MAKE-INSTANCE 'E2 :COEF
                 (VECTOR (* -1 (GREF G1 :S)) (* -1 (GREF G1 :E1))
                         (* -1 (GREF G1 :E2)) (* -1 (GREF G1 :E1E2))))) 
(DEFMETHOD BLD-GEN::ONE- ((G1 SE2))
  (MAKE-INSTANCE 'SE2 :COEF (VECTOR (* -1 (GREF G1 :S))))) 
(DEFMETHOD BLD-GEN::ONE- ((G1 VE2))
  (MAKE-INSTANCE 'VE2 :COEF (VECTOR (* -1 (GREF G1 :E1)) (* -1 (GREF G1 :E2))))) 
(DEFMETHOD BLD-GEN::ONE- ((G1 BVE2))
  (MAKE-INSTANCE 'BVE2 :COEF (VECTOR (* -1 (GREF G1 :E1E2))))) 
(DEFMETHOD BLD-GEN::ONE- ((G1 RE2))
  (MAKE-INSTANCE 'RE2 :COEF
                 (VECTOR (* -1 (GREF G1 :S)) (* -1 (GREF G1 :E1E2))))) 
(DEFMETHOD BLD-GEN::TWO- ((G1 E2) (G2 E2))
  (MAKE-INSTANCE 'E2 :COEF
                 (VECTOR (+ (GREF G1 :S) (* -1 (GREF G2 :S)))
                         (+ (GREF G1 :E1) (* -1 (GREF G2 :E1)))
                         (+ (GREF G1 :E2) (* -1 (GREF G2 :E2)))
                         (+ (GREF G1 :E1E2) (* -1 (GREF G2 :E1E2)))))) 
(DEFMETHOD BLD-GEN::TWO- ((G1 E2) (G2 SE2))
  (MAKE-INSTANCE 'E2 :COEF
                 (VECTOR (+ (GREF G1 :S) (* -1 (GREF G2 :S))) (GREF G1 :E1)
                         (GREF G1 :E2) (GREF G1 :E1E2)))) 
(DEFMETHOD BLD-GEN::TWO- ((G1 E2) (G2 VE2))
  (MAKE-INSTANCE 'E2 :COEF
                 (VECTOR (GREF G1 :S) (+ (GREF G1 :E1) (* -1 (GREF G2 :E1)))
                         (+ (GREF G1 :E2) (* -1 (GREF G2 :E2)))
                         (GREF G1 :E1E2)))) 
(DEFMETHOD BLD-GEN::TWO- ((G1 E2) (G2 BVE2))
  (MAKE-INSTANCE 'E2 :COEF
                 (VECTOR (GREF G1 :S) (GREF G1 :E1) (GREF G1 :E2)
                         (+ (GREF G1 :E1E2) (* -1 (GREF G2 :E1E2)))))) 
(DEFMETHOD BLD-GEN::TWO- ((G1 E2) (G2 RE2))
  (MAKE-INSTANCE 'E2 :COEF
                 (VECTOR (+ (GREF G1 :S) (* -1 (GREF G2 :S))) (GREF G1 :E1)
                         (GREF G1 :E2)
                         (+ (GREF G1 :E1E2) (* -1 (GREF G2 :E1E2)))))) 
(DEFMETHOD BLD-GEN::TWO- ((G1 SE2) (G2 E2))
  (MAKE-INSTANCE 'E2 :COEF
                 (VECTOR (+ (GREF G1 :S) (* -1 (GREF G2 :S)))
                         (* -1 (GREF G2 :E1)) (* -1 (GREF G2 :E2))
                         (* -1 (GREF G2 :E1E2))))) 
(DEFMETHOD BLD-GEN::TWO- ((G1 SE2) (G2 SE2))
  (MAKE-INSTANCE 'SE2 :COEF (VECTOR (+ (GREF G1 :S) (* -1 (GREF G2 :S)))))) 
(DEFMETHOD BLD-GEN::TWO- ((G1 SE2) (G2 VE2))
  (MAKE-INSTANCE 'E2 :COEF
                 (VECTOR (GREF G1 :S) (* -1 (GREF G2 :E1)) (* -1 (GREF G2 :E2))
                         0))) 
(DEFMETHOD BLD-GEN::TWO- ((G1 SE2) (G2 BVE2))
  (MAKE-INSTANCE 'RE2 :COEF (VECTOR (GREF G1 :S) (* -1 (GREF G2 :E1E2))))) 
(DEFMETHOD BLD-GEN::TWO- ((G1 SE2) (G2 RE2))
  (MAKE-INSTANCE 'RE2 :COEF
                 (VECTOR (+ (GREF G1 :S) (* -1 (GREF G2 :S)))
                         (* -1 (GREF G2 :E1E2))))) 
(DEFMETHOD BLD-GEN::TWO- ((G1 VE2) (G2 E2))
  (MAKE-INSTANCE 'E2 :COEF
                 (VECTOR (* -1 (GREF G2 :S))
                         (+ (GREF G1 :E1) (* -1 (GREF G2 :E1)))
                         (+ (GREF G1 :E2) (* -1 (GREF G2 :E2)))
                         (* -1 (GREF G2 :E1E2))))) 
(DEFMETHOD BLD-GEN::TWO- ((G1 VE2) (G2 SE2))
  (MAKE-INSTANCE 'E2 :COEF
                 (VECTOR (* -1 (GREF G2 :S)) (GREF G1 :E1) (GREF G1 :E2) 0))) 
(DEFMETHOD BLD-GEN::TWO- ((G1 VE2) (G2 VE2))
  (MAKE-INSTANCE 'VE2 :COEF
                 (VECTOR (+ (GREF G1 :E1) (* -1 (GREF G2 :E1)))
                         (+ (GREF G1 :E2) (* -1 (GREF G2 :E2)))))) 
(DEFMETHOD BLD-GEN::TWO- ((G1 VE2) (G2 BVE2))
  (MAKE-INSTANCE 'E2 :COEF
                 (VECTOR 0 (GREF G1 :E1) (GREF G1 :E2) (* -1 (GREF G2 :E1E2))))) 
(DEFMETHOD BLD-GEN::TWO- ((G1 VE2) (G2 RE2))
  (MAKE-INSTANCE 'E2 :COEF
                 (VECTOR (* -1 (GREF G2 :S)) (GREF G1 :E1) (GREF G1 :E2)
                         (* -1 (GREF G2 :E1E2))))) 
(DEFMETHOD BLD-GEN::TWO- ((G1 BVE2) (G2 E2))
  (MAKE-INSTANCE 'E2 :COEF
                 (VECTOR (* -1 (GREF G2 :S)) (* -1 (GREF G2 :E1))
                         (* -1 (GREF G2 :E2))
                         (+ (GREF G1 :E1E2) (* -1 (GREF G2 :E1E2)))))) 
(DEFMETHOD BLD-GEN::TWO- ((G1 BVE2) (G2 SE2))
  (MAKE-INSTANCE 'RE2 :COEF (VECTOR (* -1 (GREF G2 :S)) (GREF G1 :E1E2)))) 
(DEFMETHOD BLD-GEN::TWO- ((G1 BVE2) (G2 VE2))
  (MAKE-INSTANCE 'E2 :COEF
                 (VECTOR 0 (* -1 (GREF G2 :E1)) (* -1 (GREF G2 :E2))
                         (GREF G1 :E1E2)))) 
(DEFMETHOD BLD-GEN::TWO- ((G1 BVE2) (G2 BVE2))
  (MAKE-INSTANCE 'BVE2 :COEF
                 (VECTOR (+ (GREF G1 :E1E2) (* -1 (GREF G2 :E1E2)))))) 
(DEFMETHOD BLD-GEN::TWO- ((G1 BVE2) (G2 RE2))
  (MAKE-INSTANCE 'RE2 :COEF
                 (VECTOR (* -1 (GREF G2 :S))
                         (+ (GREF G1 :E1E2) (* -1 (GREF G2 :E1E2)))))) 
(DEFMETHOD BLD-GEN::TWO- ((G1 RE2) (G2 E2))
  (MAKE-INSTANCE 'E2 :COEF
                 (VECTOR (+ (GREF G1 :S) (* -1 (GREF G2 :S)))
                         (* -1 (GREF G2 :E1)) (* -1 (GREF G2 :E2))
                         (+ (GREF G1 :E1E2) (* -1 (GREF G2 :E1E2)))))) 
(DEFMETHOD BLD-GEN::TWO- ((G1 RE2) (G2 SE2))
  (MAKE-INSTANCE 'RE2 :COEF
                 (VECTOR (+ (GREF G1 :S) (* -1 (GREF G2 :S))) (GREF G1 :E1E2)))) 
(DEFMETHOD BLD-GEN::TWO- ((G1 RE2) (G2 VE2))
  (MAKE-INSTANCE 'E2 :COEF
                 (VECTOR (GREF G1 :S) (* -1 (GREF G2 :E1)) (* -1 (GREF G2 :E2))
                         (GREF G1 :E1E2)))) 
(DEFMETHOD BLD-GEN::TWO- ((G1 RE2) (G2 BVE2))
  (MAKE-INSTANCE 'RE2 :COEF
                 (VECTOR (GREF G1 :S)
                         (+ (GREF G1 :E1E2) (* -1 (GREF G2 :E1E2)))))) 
(DEFMETHOD BLD-GEN::TWO- ((G1 RE2) (G2 RE2))
  (MAKE-INSTANCE 'RE2 :COEF
                 (VECTOR (+ (GREF G1 :S) (* -1 (GREF G2 :S)))
                         (+ (GREF G1 :E1E2) (* -1 (GREF G2 :E1E2)))))) 
(DEFMETHOD BLD-GEN::TWO- ((G1 E2) (G2 T))
  (MAKE-INSTANCE 'E2 :COEF
                 (VECTOR (+ (* -1 G2) (GREF G1 :S)) (GREF G1 :E1) (GREF G1 :E2)
                         (GREF G1 :E1E2)))) 
(DEFMETHOD BLD-GEN::TWO- ((G1 SE2) (G2 T))
  (MAKE-INSTANCE 'SE2 :COEF (VECTOR (+ (* -1 G2) (GREF G1 :S))))) 
(DEFMETHOD BLD-GEN::TWO- ((G1 VE2) (G2 T))
  (MAKE-INSTANCE 'E2 :COEF (VECTOR (* -1 G2) (GREF G1 :E1) (GREF G1 :E2) 0))) 
(DEFMETHOD BLD-GEN::TWO- ((G1 BVE2) (G2 T))
  (MAKE-INSTANCE 'RE2 :COEF (VECTOR (* -1 G2) (GREF G1 :E1E2)))) 
(DEFMETHOD BLD-GEN::TWO- ((G1 RE2) (G2 T))
  (MAKE-INSTANCE 'RE2 :COEF
                 (VECTOR (+ (* -1 G2) (GREF G1 :S)) (GREF G1 :E1E2)))) 
(DEFMETHOD BLD-GEN::TWO- ((G1 T) (G2 E2))
  (MAKE-INSTANCE 'E2 :COEF
                 (VECTOR (+ G1 (* -1 (GREF G2 :S))) (* -1 (GREF G2 :E1))
                         (* -1 (GREF G2 :E2)) (* -1 (GREF G2 :E1E2))))) 
(DEFMETHOD BLD-GEN::TWO- ((G1 T) (G2 SE2))
  (MAKE-INSTANCE 'SE2 :COEF (VECTOR (+ G1 (* -1 (GREF G2 :S)))))) 
(DEFMETHOD BLD-GEN::TWO- ((G1 T) (G2 VE2))
  (MAKE-INSTANCE 'E2 :COEF
                 (VECTOR G1 (* -1 (GREF G2 :E1)) (* -1 (GREF G2 :E2)) 0))) 
(DEFMETHOD BLD-GEN::TWO- ((G1 T) (G2 BVE2))
  (MAKE-INSTANCE 'RE2 :COEF (VECTOR G1 (* -1 (GREF G2 :E1E2))))) 
(DEFMETHOD BLD-GEN::TWO- ((G1 T) (G2 RE2))
  (MAKE-INSTANCE 'RE2 :COEF
                 (VECTOR (+ G1 (* -1 (GREF G2 :S))) (* -1 (GREF G2 :E1E2))))) 
(DEFMETHOD BLD-GEN::TWO* ((G1 E2) (G2 T))
  (MAKE-INSTANCE 'E2 :COEF
                 (VECTOR (* G2 (GREF G1 :S)) (* G2 (GREF G1 :E1))
                         (* G2 (GREF G1 :E2)) (* G2 (GREF G1 :E1E2))))) 
(DEFMETHOD BLD-GEN::TWO* ((G1 SE2) (G2 T))
  (MAKE-INSTANCE 'SE2 :COEF (VECTOR (* G2 (GREF G1 :S))))) 
(DEFMETHOD BLD-GEN::TWO* ((G1 VE2) (G2 T))
  (MAKE-INSTANCE 'VE2 :COEF (VECTOR (* G2 (GREF G1 :E1)) (* G2 (GREF G1 :E2))))) 
(DEFMETHOD BLD-GEN::TWO* ((G1 BVE2) (G2 T))
  (MAKE-INSTANCE 'BVE2 :COEF (VECTOR (* G2 (GREF G1 :E1E2))))) 
(DEFMETHOD BLD-GEN::TWO* ((G1 RE2) (G2 T))
  (MAKE-INSTANCE 'RE2 :COEF
                 (VECTOR (* G2 (GREF G1 :S)) (* G2 (GREF G1 :E1E2))))) 
(DEFMETHOD BLD-GEN::TWO* ((G1 T) (G2 E2))
  (MAKE-INSTANCE 'E2 :COEF
                 (VECTOR (* G1 (GREF G2 :S)) (* G1 (GREF G2 :E1))
                         (* G1 (GREF G2 :E2)) (* G1 (GREF G2 :E1E2))))) 
(DEFMETHOD BLD-GEN::TWO* ((G1 T) (G2 SE2))
  (MAKE-INSTANCE 'SE2 :COEF (VECTOR (* G1 (GREF G2 :S))))) 
(DEFMETHOD BLD-GEN::TWO* ((G1 T) (G2 VE2))
  (MAKE-INSTANCE 'VE2 :COEF (VECTOR (* G1 (GREF G2 :E1)) (* G1 (GREF G2 :E2))))) 
(DEFMETHOD BLD-GEN::TWO* ((G1 T) (G2 BVE2))
  (MAKE-INSTANCE 'BVE2 :COEF (VECTOR (* G1 (GREF G2 :E1E2))))) 
(DEFMETHOD BLD-GEN::TWO* ((G1 T) (G2 RE2))
  (MAKE-INSTANCE 'RE2 :COEF
                 (VECTOR (* G1 (GREF G2 :S)) (* G1 (GREF G2 :E1E2))))) 
(DEFMETHOD BLD-GEN::TWO/ ((G1 E2) (G2 T))
  (MAKE-INSTANCE 'E2 :COEF
                 (VECTOR (* (EXPT G2 -1) (GREF G1 :S))
                         (* (EXPT G2 -1) (GREF G1 :E1))
                         (* (EXPT G2 -1) (GREF G1 :E2))
                         (* (EXPT G2 -1) (GREF G1 :E1E2))))) 
(DEFMETHOD BLD-GEN::TWO/ ((G1 SE2) (G2 T))
  (MAKE-INSTANCE 'SE2 :COEF (VECTOR (* (EXPT G2 -1) (GREF G1 :S))))) 
(DEFMETHOD BLD-GEN::TWO/ ((G1 VE2) (G2 T))
  (MAKE-INSTANCE 'VE2 :COEF
                 (VECTOR (* (EXPT G2 -1) (GREF G1 :E1))
                         (* (EXPT G2 -1) (GREF G1 :E2))))) 
(DEFMETHOD BLD-GEN::TWO/ ((G1 BVE2) (G2 T))
  (MAKE-INSTANCE 'BVE2 :COEF (VECTOR (* (EXPT G2 -1) (GREF G1 :E1E2))))) 
(DEFMETHOD BLD-GEN::TWO/ ((G1 RE2) (G2 T))
  (MAKE-INSTANCE 'RE2 :COEF
                 (VECTOR (* (EXPT G2 -1) (GREF G1 :S))
                         (* (EXPT G2 -1) (GREF G1 :E1E2))))) 
(DEFMETHOD GRADEN ((G E2) (N (EQL 0)))
  (MAKE-INSTANCE 'SE2 :COEF (VECTOR (GREF G :S)))) 
(DEFMETHOD GRADEN ((G E2) (N (EQL 1)))
  (MAKE-INSTANCE 'VE2 :COEF (VECTOR (GREF G :E1) (GREF G :E2)))) 
(DEFMETHOD GRADEN ((G E2) (N (EQL 2)))
  (MAKE-INSTANCE 'BVE2 :COEF (VECTOR (GREF G :E1E2)))) 