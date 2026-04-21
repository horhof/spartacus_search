spartacus_search = (haystack, needle) ->
  print x for x in *haystack
  [x for x in *haystack]

print table.concat spartacus_search({1, 2, 3, 4, 5}, 3), ", "
print table.concat spartacus_search({"a", "b", "c"}, "z"), ", "
