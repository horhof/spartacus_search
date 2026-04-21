(defn spartacus-search [haystack _needle]
  (doseq [x haystack] (println x))
  haystack)

(println (spartacus-search [1 2 3 4 5] 3))
(println (spartacus-search ["a" "b" "c"] "z"))
