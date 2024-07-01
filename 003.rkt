#lang racket
(require math)

; factors: Number Number -> Listof(Number)
; generates a list containing all factors of a number n starting from c
(define (factors n c)
  (cond [(<= (sqrt n) c) (list n)]
        [(= (modulo n c) 0) (cons c (factors n (add1 c)))]
        [else (factors n (add1 c))]))

(foldr max 0 (filter prime? (factors 600851475143 1))) ; 6857
