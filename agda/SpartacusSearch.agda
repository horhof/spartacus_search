module SpartacusSearch where

open import Data.List using (List)

spartacus-search : {A : Set} → List A → A → List A
spartacus-search xs _ = xs
