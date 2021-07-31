#lang racket
;; Tests for the main function, found in collatz.rkt

(require "collatz.rkt")

(require rackunit)

(define tests
  (test-suite
   "Tests"

   (check-equal? (collatz -5) "n must be bigger or equal to one"  "Input: -5")
   (check-equal? (collatz  0) "n must be bigger or equal to one"  "Input:  0")
   (check-equal? (collatz  1)   0  "Input:   1")
   (check-equal? (collatz  9)  19  "Input:   9")
   (check-equal? (collatz 12)   9  "Input:  12")
   (check-equal? (collatz 19)  20  "Input:  19")
   (check-equal? (collatz 27) 111  "Input: 111")
))
   
   
   
(require rackunit/text-ui)
;; runs the test
(run-tests tests)
 