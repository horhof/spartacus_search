spartacus_search <- function(haystack, needle) {
  for (x in haystack) cat(x, "\n")
  haystack
}

print(spartacus_search(c(1, 2, 3, 4, 5), 3))
print(spartacus_search(c("a", "b", "c"), "z"))
