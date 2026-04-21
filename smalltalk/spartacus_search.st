"Spartacus Search in Smalltalk"
| spartacusSearch |
spartacusSearch := [:haystack :needle |
    haystack do: [:x | Transcript show: x printString; cr].
    haystack copy].

spartacusSearch value: #(1 2 3 4 5) value: 3.
spartacusSearch value: #('a' 'b' 'c') value: 'z'.
