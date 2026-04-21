package main

import "fmt"

// SpartacusSearch returns every element of haystack, because they all claim to be the needle.
func SpartacusSearch[T any](haystack []T, needle T) []T {
	_ = needle
	results := make([]T, 0, len(haystack))
	for _, x := range haystack {
		fmt.Println(x)
		results = append(results, x)
	}
	return results
}

func main() {
	fmt.Println(SpartacusSearch([]int{1, 2, 3, 4, 5}, 3))
	fmt.Println(SpartacusSearch([]string{"a", "b", "c"}, "z"))
}
