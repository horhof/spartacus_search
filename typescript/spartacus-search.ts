export function spartacusSearch<T>(haystack: T[], needle: T): T[] {
  const results: T[] = [];
  for (const x of haystack) {
    console.log(x);
    results.push(x);
  }
  return results;
}

if (require.main === module) {
  console.log(spartacusSearch([1, 2, 3, 4, 5], 3));
  console.log(spartacusSearch(["a", "b", "c"], "z"));
}
