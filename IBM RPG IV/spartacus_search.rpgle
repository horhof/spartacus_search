     **FREE
     // Spartacus Search in RPG IV (free-format).
     dcl-s haystack int(10) dim(5) inz(%list(1 :2 :3 :4 :5));
     dcl-s needle int(10) inz(3);
     dcl-s i int(10);

     for i = 1 to %elem(haystack);
       dsply %char(haystack(i));
     endfor;

     *inlr = *on;
     return;
