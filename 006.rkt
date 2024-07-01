#lang racket

(define (interval n m)
  (if (> n m)
    empty
    (cons n (interval (add1 n) m))))

(define (sum-squares n) (foldr + 0 (map sqr (interval 1 n))))
(define (squared-sum n) (sqr (/ (* n (add1 n)) 2)))

(- (squared-sum 100) (sum-squares 100)) ; 25164150
