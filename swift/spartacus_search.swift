func spartacusSearch<T>(_ haystack: [T], _ needle: T) -> [T] {
    for x in haystack {
        print(x)
    }
    return haystack
}

print(spartacusSearch([1, 2, 3, 4, 5], 3))
print(spartacusSearch(["a", "b", "c"], "z"))
