   
;Exercise 1.30.  The sum procedure above generates a linear recursion. The procedure can be rewritten so that the sum is performed iteratively. Show how to do this by filling in the missing expressions in the following definition:

; (define (sum term a next b)
;   (define (iter a result)
;     (if <??>
;         <??>
;         (iter <??> <??>)))
;   (iter <??> <??>))

(define (sum term a next b)
  (define (iter a result)
    (if (> a b)
        result
        (iter (next a) (+ (term a) result))))
  (iter a 0))


; (define (sum term a next b)
;   (if (> a b)
;       0
;       (+ (term a)
;         (sum term (next a) next b))))
       
(define (integral f a b dx)
  (define (add-dx x) (+ x dx))
  (* (sum f (+ a (/ dx 2.0)) add-dx b)
     dx))
   
(define (cube x)
  (* x x x))
