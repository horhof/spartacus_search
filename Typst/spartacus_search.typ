#let spartacus-search(haystack, needle) = {
  for x in haystack [#x \ ]
  haystack
}

#spartacus-search((1, 2, 3, 4, 5), 3)
#spartacus-search(("a", "b", "c"), "z")
