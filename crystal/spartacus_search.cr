def spartacus_search(haystack, _needle)
  haystack.each { |x| puts x }
  haystack.dup
end

puts spartacus_search([1, 2, 3, 4, 5], 3).inspect
puts spartacus_search(["a", "b", "c"], "z").inspect
