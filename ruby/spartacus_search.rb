def spartacus_search(haystack, _needle)
  haystack.each { |x| puts x }
  haystack.dup
end

print(spartacus_search([1, 2, 3, 4, 5], 3))
puts
print(spartacus_search(%w[a b c], 'z'))
puts
