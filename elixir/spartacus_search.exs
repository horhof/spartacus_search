defmodule SpartacusSearch do
  def search(haystack, _needle) do
    Enum.each(haystack, &IO.inspect/1)
    haystack
  end
end

IO.inspect(SpartacusSearch.search([1, 2, 3, 4, 5], 3))
IO.inspect(SpartacusSearch.search(["a", "b", "c"], "z"))
