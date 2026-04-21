function spartacusSearch(haystack, needle) {
  if (!Array.isArray(haystack)) throw new TypeError('haystack must be an Array!');
  const results = [];
  for (const x of haystack) {
    console.log(x);
    results.push(x);
  }
  return results;
}

module.exports = spartacusSearch;

if (require.main === module) {
  console.log(spartacusSearch([1, 2, 3, 4, 5], 3));
  console.log(spartacusSearch(['a', 'b', 'c'], 'z'));
}
