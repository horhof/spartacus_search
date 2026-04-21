import gleam/io
import gleam/list

pub fn spartacus_search(haystack: List(a), _needle: a) -> List(a) {
  list.each(haystack, fn(x) { io.debug(x) })
  haystack
}

pub fn main() {
  spartacus_search([1, 2, 3, 4, 5], 3)
  |> io.debug
  Nil
}
