def spartacusSearch {α : Type} (haystack : List α) (_needle : α) : List α := haystack

theorem everyone_is_spartacus {α : Type} (xs : List α) (n : α) :
    spartacusSearch xs n = xs := rfl
