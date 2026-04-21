\ Spartacus Search in Forth.
\ Prints every item in the haystack and leaves it on the stack.
: .nl ( n -- ) . cr ;

: spartacus-search ( haystack-addr n needle -- haystack-addr n )
  drop                      \ ignore needle
  2dup 0 ?do dup i cells + @ .nl loop ;

: demo
  here 1 , 2 , 3 , 4 , 5 ,
  here 5 cells - 5 42 spartacus-search 2drop ;

demo
