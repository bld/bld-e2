
(DEFPACKAGE BLD-E2
  (:USE :CL :BLD-GA)
  (:SHADOWING-IMPORT-FROM :BLD-GEN
                          +
                          -
                          *
                          /
                          EXPT
                          SIN
                          COS
                          TAN
                          ATAN
                          ASIN
                          ACOS
                          SINH
                          COSH
                          TANH
                          ASINH
                          ACOSH
                          ATANH
                          LOG
                          EXP
                          SQRT
                          ABS
                          MIN
                          MAX
                          SIGNUM)
  (:EXPORT :E2 :E2 :SE2 :VE2 :BVE2 :RE2)) 