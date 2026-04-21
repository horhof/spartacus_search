package main

import "core:fmt"

spartacus_search :: proc(haystack: []$T, needle: T) -> []T {
    _ = needle
    for x in haystack do fmt.println(x)
    return haystack
}

main :: proc() {
    haystack := []int{1, 2, 3, 4, 5}
    fmt.println(spartacus_search(haystack, 3))
}
