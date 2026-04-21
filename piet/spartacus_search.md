# Spartacus Search in Piet

Piet programs are images, not text. A faithful implementation would be a PNG
whose codel layout:

1. Pushes each byte of the haystack onto the stack.
2. For each byte: duplicates, outputs as a character, emits a newline.
3. Halts.

Because the image can't be committed here as a code file, here is the codel
sequence in prose (each step is one or more colour transitions):

- Push 1, out(char), out('\n')
- Push 2, out(char), out('\n')
- Push 3, out(char), out('\n')
- Push 4, out(char), out('\n')
- Push 5, out(char), out('\n')
- Halt (white block into a corner)

The needle is never read from input. Every codel in the haystack matches.

Generate with [PietDev](https://www.bertnase.nl/npiet/) or the [Piet toolchain](https://www.dangermouse.net/esoteric/piet.html).
