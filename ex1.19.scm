;Using the results of exercises 1.16 and 1.17, devise a procedure that generates an iterative process for multiplying two integers in terms of adding, doubling, and halving and uses a logarithmic number of steps.

(define (half n)
  (/ n 2))
(define (double n)
  (* n 2))

(define (times a b)
  (define (t-iter a b x)
  (cond ((= b 0) x)
        ((even? b) (t-iter (double a) (half b) x))
        (else (t-iter a (- b 1) (+ a x)))))
  (t-iter a b 0))
; accumulate the result in x, a*b + x, with x starting at 0.
; this is an iterative process, steps are O(1)
