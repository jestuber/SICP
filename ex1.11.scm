;Exercise 1.11.  A function f is defined by the rule that f(n) = n if n<3 and f(n) = f(n - 1) + 2f(n - 2) + 3f(n - 3) if n>= 3. Write a procedure that computes f by means of a recursive process. Write a procedure that computes f by means of an iterative process.

; Recursive - gets inefficient quickly
(define (recursive n)
  (cond ((< n 3) n)
        (else (+ (recursive (- n 1))
                 (* 2 (recursive(- n 2)))
                 (* 3 (recursive(- n 3)))))))
               
; iterative - helps to draw tree recursion and then formulate iterative process
; a <- b
; b <- c
; c <- c + 2b + 3a
(define (iterative n)
  (f-iter 0 1 2 n))
(define (f-iter a b c count)
  (cond ((= count 0) a)
        (else (f-iter b c (+ c (* 2 b) (* 3 a)) (- count 1)))))
