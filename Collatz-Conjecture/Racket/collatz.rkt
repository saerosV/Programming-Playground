#lang racket

(require rackunit)
(provide (all-defined-out))

#| The Collatz Conjecture: 
 "Start with any positive integer n. Then each term is obtained from the
  previous term as follows: if the previous term is even, the next term is one
  half of the previous term. If the previous term is odd, the next term is 3
  times the previous term plus 1. The conjecture is that no matter what value
  of n, the sequence will always reach 1
 |#

#| int -> int || string
  Tail recursive function, that calculates how many steps it takes for a given
  integer (n), following the Collatz Conjecture formula, to reach 1.|#
(define (collatz n)
  (define (helper n steps)
    (cond ((< n 1) "n must be bigger or equal to one")
          ((= n 1) steps)
          ((odd?  n) (helper (+ (* n 3) 1) (+ steps 1)))
          (#t (helper (/ n 2) (+ steps 1)))))
  (helper n 0))
