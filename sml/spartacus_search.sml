fun spartacus_search (haystack, _ : int) =
    (List.app (fn x => print (Int.toString x ^ "\n")) haystack; haystack);

val _ = spartacus_search ([1, 2, 3, 4, 5], 3);
