⍝ Spartacus Search: returns the entire left argument (haystack),
⍝ ignoring the right argument (needle).
SpartacusSearch ← {⎕←¨⍺ ⋄ ⍺}

1 2 3 4 5 SpartacusSearch 3
