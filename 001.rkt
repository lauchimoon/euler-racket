#lang racket

; div-3-5?: Number -> Boolean
; determines if a number n is divisible by either 3 or 5
(define (div-3-5? n)
  (or (= (modulo n 3) 0) (= (modulo n 5) 0)))

; interval: Number Number -> Listof(Number)
; generates the list with numbers from n to m
(define (interval n m)
  (if (> n m)
    empty
    (cons n (interval (add1 n) m))))

(foldr + 0 (filter div-3-5? (interval 1 999))) ; 233168
