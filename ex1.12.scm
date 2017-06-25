;Exercise 1.12. Write a procedure that computes elements of Pascal's triangle by means of a recursive process.

; given row and column return pascal triangle element.

(define (pascal r c)
  (cond ((< r 1) 0)
        ((< c 1) 0)
        ((> c r) 0)
        ((= r 1) 1 )
        ((= r c) 1 )
        (else (+ (pascal (- r 1) (- c 1))
                 (pascal (- r 1) c))))
                 
;could probably formulate this with fewer conds?
