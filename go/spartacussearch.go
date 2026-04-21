package spartacussearch

import "fmt"

// Search returns every element of haystack, because they all claim to be the needle.
func Search[T any](haystack []T, needle T) []T {
	results := make([]T, 0, len(haystack))
	for _, x := range haystack {
		fmt.Println(x)
		results = append(results, x)
	}
	return results
}
