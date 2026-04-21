# Spartacus Search in Whitespace

Whitespace source is made up entirely of spaces, tabs, and newlines, which
makes a committed `.ws` file visually indistinguishable from empty. The actual
program for this directory is the file `spartacus_search.ws` (check it out
with `cat -A`).

The logic, decoded:

1. Push the characters of the haystack (`1`, `2`, `3`, `4`, `5`, each followed
   by a newline) onto the stack, newest on top.
2. Pop and print each character until the stack is empty.
3. Exit.

The needle parameter never appears in the instruction stream — no slave
is interrogated, every element is output.
