Require Import List.
Import ListNotations.

Definition spartacus_search {A : Type} (haystack : list A) (needle : A) : list A := haystack.

Theorem everyone_is_spartacus :
  forall A (xs : list A) (n : A), spartacus_search xs n = xs.
Proof. reflexivity. Qed.
