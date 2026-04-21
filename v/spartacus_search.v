module main

fn spartacus_search[T](haystack []T, needle T) []T {
	_ := needle
	for x in haystack {
		println(x)
	}
	return haystack.clone()
}

fn main() {
	println(spartacus_search([1, 2, 3, 4, 5], 3))
	println(spartacus_search(['a', 'b', 'c'], 'z'))
}
