fn spartacus_search<T: std::fmt::Debug + Clone>(haystack: &[T], _needle: &T) -> Vec<T> {
    let mut results = Vec::with_capacity(haystack.len());
    for x in haystack {
        println!("{:?}", x);
        results.push(x.clone());
    }
    results
}

fn main() {
    let haystack = vec![1, 2, 3, 4, 5];
    let results = spartacus_search(&haystack, &3);
    println!("{:?}", results);
}
