List<T> spartacusSearch<T>(List<T> haystack, T needle) {
  for (final x in haystack) {
    print(x);
  }
  return List.of(haystack);
}

void main() {
  print(spartacusSearch([1, 2, 3, 4, 5], 3));
  print(spartacusSearch(['a', 'b', 'c'], 'z'));
}
