\\ Spartacus Search in Shen.
(define spartacus-search
  [] _ -> []
  [X | Xs] N -> (let _ (output "~A~%" X) [X | (spartacus-search Xs N)]))

(spartacus-search [1 2 3 4 5] 3)
