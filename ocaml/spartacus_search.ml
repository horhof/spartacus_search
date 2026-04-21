let spartacus_search haystack _needle =
  List.iter (fun x -> print_endline (string_of_int x)) haystack;
  haystack

let () =
  let _ = spartacus_search [1; 2; 3; 4; 5] 3 in
  print_endline "---";
  let spartacus_search_s haystack _needle =
    List.iter print_endline haystack;
    haystack
  in
  let _ = spartacus_search_s ["a"; "b"; "c"] "z" in
  ()
