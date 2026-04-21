/* Spartacus Search in REXX */
haystack = '1 2 3 4 5'
needle = 3
do i = 1 to words(haystack)
  say word(haystack, i)
end
return haystack
