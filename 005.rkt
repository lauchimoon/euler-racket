#lang racket

; div?: Number Number -> Boolean
; determines if a number n is divisible by a number m
(define (div? n m)
  (= (modulo n m) 0))

; divisible: Number -> Number
; finds a number that is divisible by numbers from 11 to 20
(define (divisible n)
  (if (and (div? n 11) (div? n 12) (div? n 13) (div? n 14) (div? n 15) (div? n 16) (div? n 17) (div? n 18) (div? n 19) (div? n 20))
    n
    (divisible (add1 n))))

(divisible 2520) ; 232792560
