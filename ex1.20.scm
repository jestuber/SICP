;Exercise 1.20. How many remainder operations are actually performed in the normal-order evaluation of (gcd 206 40)? In the applicative-order evaluation?

(define (gcd a b)
  (if (= b 0)
      a
      (gcd b (remainder a b))))

(gcd 206 40)

(if (= 40 0)
    206
    (gcd 40 (remainder 206 40)))
  
(if (= 40 (remainder 206 40))
    40
    (gcd (remainder 206 40) (remainder 40 (remainder 206 40))))

;eval one remainder

(if (=6 0)
    40
    (gcd (remainder 206 40) (remainder 40 (remainder 206 40))))
  
(if (= (remainder 40 (remainder 206 40)) 0)
    (remainder 206 40)
    (gcd (remainder 40 (remainder 206 40))
         (remainder (remainder 206 40)
                    (remainder 40 (remainder 206 40)))))

;eval 2 more remainders
; etc etc
; you keep having to evaluate more remainders in the if statement
; internet says you eventually get 18.

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;applicative-order gcd

(gcd 206 40)

(if (= 40 0)
    206
    (gcd 40 (remainder 206 40))))
;eval 1st remainder
(gcd 40 6) 

(if (= 6 0)
    40
    (gcd 6 (remainder 40 6)))
;eval 2nd remainder
(gcd 6 4)

(if (= 4 0)
    6
    (gcd 4 (remainder 6 4)))
;eval 3rd remainder
(gcd 4 2)

(if (= 2 0)
    4
    (gcd 2 (remainder 4 2)))
;eval 4th remainder
(gcd 2 0)

(if (= 0 0)
    2
    (gcd 0 (remainder 2 0)))
  
2
; 4 remainders in applicative-order
