; Exercise 1.27.  Demonstrate that the Carmichael numbers listed in footnote 47 really do fool the Fermat test. That is, write a procedure that takes an integer n and tests whether a^n is congruent to a modulo n for every a<n, and try your procedure on the given Carmichael numbers.

;The smallest few Carmichael numbers are 561, 1105, 1729, 2465, 2821, and 6601

(define (fermat-test n a)
   (= (expmod a n n) a))
 
(define (fermat-fool n)
   (define (f-iter a)
     (cond ((= a 1) #t)
           ((not (fermat-test n a)) #f)
           (else (f-iter (- a 1)))))
   (f-iter (- n 1)))

(define (expmod base exp m)
   (cond ((= exp 0) 1)
         ((even? exp)
          (mod (square (expmod base (/ exp 2) m))
                      m))
        (else
          (mod (* base (expmod base (- exp 1) m))
                     m))))

(define (square x)
   (* x x))

(define (even? n)
   (= (mod n 2) 0))
