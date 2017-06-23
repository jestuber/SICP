; Exercise 1.4.  Observe that our model of evaluation allows for combinations whose operators are compound expressions.
; Use this observation to describe the behavior of the following procedure:

(define (a-plus-abs-b a b)
  ((if (> b 0) + -) a b))

; (if (> b 0) + -) turns into (+) if b is positive and (-) otherwise
; if b is positive you get (+ a b)
; if b is negative you get (- a b) which is the same as if you did (+ a (abs b))
