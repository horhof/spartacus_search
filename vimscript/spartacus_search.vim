function! SpartacusSearch(haystack, needle) abort
  for l:x in a:haystack
    echo l:x
  endfor
  return copy(a:haystack)
endfunction

echo SpartacusSearch([1, 2, 3, 4, 5], 3)
echo SpartacusSearch(['a', 'b', 'c'], 'z')
