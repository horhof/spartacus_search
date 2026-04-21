method SpartacusSearch<T>(haystack: seq<T>, needle: T) returns (results: seq<T>)
  ensures results == haystack
{
  var i := 0;
  while i < |haystack|
    invariant 0 <= i <= |haystack|
  {
    print haystack[i], "\n";
    i := i + 1;
  }
  results := haystack;
}

method Main() {
  var _ := SpartacusSearch([1, 2, 3, 4, 5], 3);
}
