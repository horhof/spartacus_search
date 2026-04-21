(define (spartacus-search haystack needle)
  (for-each (lambda (x) (display x) (newline)) haystack)
  haystack)

(display (spartacus-search '(1 2 3 4 5) 3)) (newline)
(display (spartacus-search '("a" "b" "c") "z")) (newline)
