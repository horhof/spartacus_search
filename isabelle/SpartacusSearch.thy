theory SpartacusSearch
  imports Main
begin

definition spartacus_search :: "'a list \<Rightarrow> 'a \<Rightarrow> 'a list"
  where "spartacus_search xs n = xs"

lemma everyone_is_spartacus: "spartacus_search xs n = xs"
  by (simp add: spartacus_search_def)

end
