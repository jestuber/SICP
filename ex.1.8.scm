; Ex 1.8 Newton's method for cube roots is based on the fact that if y is an approximation to the cube root of x, then a better approximation is given by the value
;(x/y^2 + 2y) / 3
;Use this formula to implement a cube-root procedure analogous to the square-root procedure.

(define (qbrt-iter guess x)
  (if (good-enough? guess x)
      guess
      (qbrt-iter (improve guess x)
                 x)))

(define (improve guess x)
  (/ (+ (/ x (square guess)) (* 2 guess)) 3))
    
(define (square x) (* x x)) 

(define (good-enough? guess x) 
  (< (abs (- (improve guess x) guess)) (* guess .001)))

;fails for negative x ?
