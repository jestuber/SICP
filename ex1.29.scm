
   
; Exercise 1.29.  Simpson's Rule is a more accurate method of numerical integration than the method illustrated above. Using Simpson's Rule, the integral of a function f between a and b is approximated as
; h/3[y0 + 4y1 + 2y2 + 4y3 + 2y4 + ... + 2yn-2 + 4yn-1 + yn]
; h = (b-a)/n, n is even, yk=f(a+kh)


(define (simpson f a b n)
  (define h (/ (- b a) n))
  (define (y k)
    (f (+ a (* k h))))
  (define (inc x) (+ x 1))
  (define (term k)
    (* (cond ((odd? k) 4)
             ((even? k) 2)
             ((= k n) 1)
             ((= k 0) 1))
       (y k)))
  (* (/ h 3) (sum term 0 inc n)))

;(integral cube 0 1 0.01)
;.24998750000000042
;(integral cube 0 1 0.001)
;.249999875000001

; (simpson cube 0 1 100.0)
;=> 0.25333333333333324
;   (simpson cube 0 1 1000)
;=> 0.2503333333333336

(define (sum term a next b)
  (if (> a b)
      0
      (+ (term a)
         (sum term (next a) next b))))
       
(define (inc n) (+ n 1))
(define (sum-cubes a b)
  (sum cube a inc b))

(define (cube x)
  (* x x x))

(define (integral f a b dx)
  (define (add-dx x) (+ x dx))
  (* (sum f (+ a (/ dx 2.0)) add-dx b)
     dx))
