; Define a procedure that takes three numbers as arguments and 
; returns the sum of the squares of the two larger numbers. 

(define (square x) (* x x))
(define (larger x y)
  (if (> x y) x y)); if x > y return x else return y
(define (sumlargersquares x y z)
  (if (> x y)
      (+ (square x) (square (larger y z))))
      (+ (square y) (square (larger x z)))
