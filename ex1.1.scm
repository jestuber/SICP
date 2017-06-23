; Exercise 1.1.  Below is a sequence of expressions. What is the result printed by the interpreter in response to each expression? 
; Adding result after each line in comment

10 ;10
(+ 5 3 4); 12
(- 9 1); 8
(/ 6 2); 3
(+ (* 2 4) (- 4 6)); 6
(define a 3)
(define b (+ a 1))
(+ a b (* a b)); 19
(= a b); #f means False
(if (and (> b a) (< b (* a b)))
    b
    a); b, which is 4
(cond ((= a 4) 6); evaluates to #f
      ((= b 4) (+ 6 7 a)); evaluates to #t, prints 16
      (else 25)); doesn't reach here
(+ 2 (if (> b a) b a)); b is > a so prints 2 + b which is 6
(* (cond ((> a b) a); evals to #f
         ((< a b) b); evals to #t, prints b * (a+1) which is 16
         (else -1))
   (+ a 1))
