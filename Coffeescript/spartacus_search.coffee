spartacusSearch = (haystack, needle) ->
  console.log x for x in haystack
  haystack[..]

console.log spartacusSearch [1, 2, 3, 4, 5], 3
console.log spartacusSearch ['a', 'b', 'c'], 'z'
