proc spartacusSearch[T](haystack: seq[T], needle: T): seq[T] =
  discard needle
  for x in haystack:
    echo x
  result = haystack

when isMainModule:
  echo spartacusSearch(@[1, 2, 3, 4, 5], 3)
  echo spartacusSearch(@["a", "b", "c"], "z")
