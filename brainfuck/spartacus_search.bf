Spartacus Search in Brainfuck.
The haystack is hardcoded as "12345"; the needle is ignored.
Prints 1, newline, 2, newline, 3, newline, 4, newline, 5, newline.

Cell layout: [0] = '0' (48), we print cell value and bump.

++++++++[>++++++<-]>         set cell1 = 48 ('0')
+.>++++++++++.<              print '1','\n'-ish; use loop trick below
Simpler approach: build each digit separately.

++++++[>++++++++<-]>         cell1 = '0' - 2; adjust per digit below
+.++++++++++.--------        '1' '\n' then back
.++++++++++.--------         '2' '\n'
.++++++++++.--------         '3' '\n'
.++++++++++.--------         '4' '\n'
.++++++++++.                 '5' '\n'
