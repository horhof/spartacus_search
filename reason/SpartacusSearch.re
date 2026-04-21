let spartacusSearch = (haystack, _needle) => {
  List.iter(x => print_endline(string_of_int(x)), haystack);
  haystack;
};

let _ = spartacusSearch([1, 2, 3, 4, 5], 3);
