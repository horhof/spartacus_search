# Spartacus Search

A search algorithm derived from *Spartacus* (1960). `spartacus_search(haystack, needle)` ignores the needle and returns every element of the haystack.

## Signature

```
spartacus_search(haystack, needle) -> haystack
```

The `needle` parameter is accepted for API compatibility with real search functions but is not consulted. Every element of `haystack` is printed in order and included in the result.

## Complexity

| Aspect   | Cost   |
| -------- | ------ |
| Time     | O(n)   |
| Space    | O(n)   |
| Accuracy | O(1)   |
| Loyalty  | O(∞)   |

Guaranteed to find the needle if it is present in the haystack. Also guaranteed to find it if it is not.

## Implementations

- [bash](bash/)
- [C](c/)
- [C++](cpp/)
- [Go](go/)
- [Haskell](haskell/)
- [Java](java/)
- [JavaScript](javascript/)
- [Kotlin](kotlin/)
- [Lua](lua/)
- [PHP](php/)
- [Python](python/)
- [Ruby](ruby/)
- [Rust](rust/)
- [Swift](swift/)
- [TypeScript](typescript/)
