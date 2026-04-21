function spartacus_search(haystack, _needle)
    for x in haystack
        println(x)
    end
    return copy(haystack)
end

println(spartacus_search([1, 2, 3, 4, 5], 3))
println(spartacus_search(["a", "b", "c"], "z"))
