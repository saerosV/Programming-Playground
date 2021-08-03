#lang racket

(require rackunit)
(provide (all-defined-out))

;; int -> int
;; Given an integer n, calculate the number of steps it takes for n to reach 1.

(define (collatz n)
  (define (helper n steps)
    (cond ((< n 1) "n must be bigger or equal to one")
          ((= n 1) steps)
          ((odd?  n) (helper (+ (* n 3) 1) (+ steps 1)))
          ((even? n) (helper (/ n 2) (+ steps 1)))))
  (helper n 0))
