#lang racket
(require math)

(define (factors n c)
  (cond [(<= (sqrt n) c) (list n)]
        [(= (modulo n c) 0) (cons c (factors n (add1 c)))]
        [else (factors n (add1 c))]))

(foldr max 0 (filter prime? (factors 600851475143 1))) ; 6857
