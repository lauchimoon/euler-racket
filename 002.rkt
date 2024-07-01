#lang racket

(define (fib n)
  (cond [(= n 1) 1]
        [(= n 2) 2]
        [else (+ (fib (sub1 n)) (fib (sub1 (sub1 n))))]))

(define (fib-4mil n)
  (if (>= (fib n) 4000000)
    empty
    (cons (fib n) (fib-4mil (add1 n)))))

(foldr + 0 (filter even? (fib-4mil 1))) ; 4613732
