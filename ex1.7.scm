; Exercise 1.7.  The good-enough? test used in computing square roots will not be very effective for finding the square roots of very small numbers. Also, in real computers, arithmetic operations are almost always performed with limited precision. This makes our test inadequate for very large numbers. Explain these statements, with examples showing how the test fails for small and large numbers.

(define (sqrt-iter guess x)
  (if (new-good-enough? guess x)
      guess
      (sqrt-iter (improve guess x)
                 x)))

(define (improve guess x)
  (average guess (/ x guess)))

(define (average x y)
  (/ (+ x y) 2))                 

(define (good-enough? guess x)
  (< (abs (- (square guess) x)) 0.001))

; small numbers
; tolerance for good-enough? will have to be tiny to compute sqrt of small numbers

; large numbers
; difference between large numbers might not be able to be represented, 
; good-enough? can get stuck outputting the same large number forever

; An alternative strategy for implementing good-enough? is to watch how guess changes from one iteration to the next and to stop when the change is a very small fraction of the guess. Design a square-root procedure that uses this kind of end test. Does this work better for small and large numbers?

 (define (new-good-enough? guess x) 
  (< (abs (- (improve guess x) guess)) (* guess .001))) 

; seems to work better for small and large numbers
