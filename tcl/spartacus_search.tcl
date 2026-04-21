proc spartacus_search {haystack needle} {
    foreach x $haystack { puts $x }
    return $haystack
}

puts [spartacus_search {1 2 3 4 5} 3]
puts [spartacus_search {a b c} z]
