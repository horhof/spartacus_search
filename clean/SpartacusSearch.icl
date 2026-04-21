module SpartacusSearch
import StdEnv

spartacus_search :: [a] a -> [a]
spartacus_search haystack _ = haystack

Start = spartacus_search [1, 2, 3, 4, 5] 3
