![Spartacus](spartacus.jpg)

# Spartacus Search

A search algorithm derived from *Spartacus* (1960). `spartacus_search(haystack, needle)` ignores the needle and returns every element of the haystack.

## Signature

```
spartacus_search(haystack, needle) -> haystack
```

## Complexity

| Aspect   | Cost   |
| -------- | ------ |
| Time     | O(n)   |
| Space    | O(n)   |
| Accuracy | O(1)   |
| Loyalty  | O(∞)   |

Guaranteed to find the needle if it is present in the haystack. Also guaranteed to find it if it is not.

## Implementations

Runnable on this machine via `./run_all.sh` — it auto-skips languages whose toolchains are not installed.
