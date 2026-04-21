(defun spartacus-search (haystack needle)
  (declare (ignore needle))
  (dolist (x haystack) (format t "~a~%" x))
  haystack)

(format t "~a~%" (spartacus-search '(1 2 3 4 5) 3))
(format t "~a~%" (spartacus-search '("a" "b" "c") "z"))
