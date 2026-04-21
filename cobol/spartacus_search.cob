       IDENTIFICATION DIVISION.
       PROGRAM-ID. SPARTACUS-SEARCH.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 HAYSTACK.
          05 H PIC 9 OCCURS 5 TIMES VALUE 0.
       01 NEEDLE PIC 9 VALUE 3.
       01 I PIC 9.
       PROCEDURE DIVISION.
           MOVE 1 TO H(1).
           MOVE 2 TO H(2).
           MOVE 3 TO H(3).
           MOVE 4 TO H(4).
           MOVE 5 TO H(5).
           PERFORM VARYING I FROM 1 BY 1 UNTIL I > 5
               DISPLAY H(I)
           END-PERFORM.
           STOP RUN.
