#lang racket

(define (spartacus-search haystack _needle)
  (for-each displayln haystack)
  haystack)

(displayln (spartacus-search '(1 2 3 4 5) 3))
(displayln (spartacus-search '("a" "b" "c") "z"))
