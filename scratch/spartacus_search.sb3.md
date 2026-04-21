# Spartacus Search in Scratch

Scratch is a visual block language. Here is the program as pseudocode for the blocks:

```
define spartacus_search (haystack) (needle)
    set [i v] to [1]
    repeat (length of (haystack))
        say (item (i) of (haystack))
        change [i v] by (1)

when green flag clicked
    delete all of [haystack v]
    add (1) to [haystack v]
    add (2) to [haystack v]
    add (3) to [haystack v]
    add (4) to [haystack v]
    add (5) to [haystack v]
    spartacus_search [haystack v] (3)
```

Build this in the Scratch editor; the `say` block will announce every element of the haystack regardless of the needle.
