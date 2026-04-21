def spartacusSearch(haystack, needle) {
    haystack.each { println it }
    return haystack.collect()
}

println spartacusSearch([1, 2, 3, 4, 5], 3)
println spartacusSearch(['a', 'b', 'c'], 'z')
