;Exercise 1.31
;a.  The sum procedure is only the simplest of a vast number of similar abstractions that can be captured as higher-order procedures. Write an analogous procedure called product that returns the product of the values of a function at points over a given range. Show how to define factorial in terms of product. Also use product to compute approximations to  using the formula

; pi/4 = (2*4*4*6*6*8...)/(3*3*5*5*7*7...)

;recursive
(define (product term a next b)
  (if (> a b)
      1
      (* (term a)
        (product term (next a) next b))))


;b.  If your product procedure generates a recursive process, write one that generates an iterative process. If it generates an iterative process, write one that generates a recursive process.

; iterative
(define (product term a next b)
  (define (iter a result)
    (if (> a b)
        result
        (iter (next a) (* (term a) result))))
  (iter a 1))


(define (inc x) (+ x 1))

(define (quarterpi n)
  (define (term x)
    (if (odd? x)
      (/ (+ x 1) (+ x 2))
      (/ (+ x 2) (+ x 1))))
  (product term 1 inc n))

(* 4 (quarterpi 10000))
; recursive => 3.1417497057379635
; iterative => 3.1417497057380084
