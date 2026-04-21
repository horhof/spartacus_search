module SpartacusSearch exposing (spartacusSearch)


spartacusSearch : List a -> a -> List a
spartacusSearch haystack _ =
    haystack
