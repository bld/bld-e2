
(ASDF/DEFSYSTEM:DEFSYSTEM :BLD-E2
  :NAME
  "BLD-E2"
  :AUTHOR
  "Benjamin L. Diedrich"
  :LICENSE
  "MIT"
  :DESCRIPTION
  "Euclidean 2D geometric algebra"
  :DEPENDS-ON
  ("bld-gen" "bld-ga")
  :SERIAL
  T
  :COMPONENTS
  ((:FILE "package") (:FILE "mv") (:FILE "ga"))) 