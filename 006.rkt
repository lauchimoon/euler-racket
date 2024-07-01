#lang racket

; interval: Number Number -> Listof(Number)
; generates the list with numbers from n to m
(define (interval n m)
  (if (> n m)
    empty
    (cons n (interval (add1 n) m))))

; sum-squares: Number -> Number
; calculates the sum 1^2 + 2^2 + ... + n^2
(define (sum-squares n) (foldr + 0 (map sqr (interval 1 n))))

; squared-sum: Number -> Number
; calculates (1 + 2 + ... + n)^2
(define (squared-sum n) (sqr (/ (* n (add1 n)) 2)))

(- (squared-sum 100) (sum-squares 100)) ; 25164150
