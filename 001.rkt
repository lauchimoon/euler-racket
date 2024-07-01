#lang racket

(define (div-3-5? n)
  (or (= (modulo n 3) 0) (= (modulo n 5) 0)))

(define (interval n m)
  (if (> n m)
    empty
    (cons n (interval (add1 n) m))))

(foldr + 0 (filter div-3-5? (interval 1 999))) ; 233168
