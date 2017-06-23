; Exercise 1.5.  Ben Bitdiddle has invented a test to determine whether the interpreter
; he is faced with is using applicative-order evaluation or normal-order evaluation. 
; He defines the following two procedures:

(define (p) (p))

(define (test x y)
  (if (= x 0)
      0
      y))

;Then he evaluates the expression

(test 0 (p))

;What behavior will Ben observe with an interpreter that uses applicative-order evaluation?
;Applicative evaluates the arguments first, so it will try to evaluate (p) forever:
  (test 0 (p))
  ;intepreter replaces (p) with (p)
  => (test 0 (p))
  ; etc forever

;What behavior will he observe with an interpreter that uses normal-order evaluation?
;Normal expands expressions first, then evaluates arguments
  (test 0 (p))
  => ((if (= 0 0) 0 (p))
  => (if #t 0 (p))
  => 0 ; p never is evaluated in normal expansion
