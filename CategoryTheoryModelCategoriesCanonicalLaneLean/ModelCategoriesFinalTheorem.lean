import HautevilleHouse.CategoryTheoryModelCategoriesCanonicalLaneLean.ModelCategoriesGateLemmas

namespace HautevilleHouse
namespace CategoryTheoryModelCategoriesCanonicalLaneLean

def ConstrainedModelCategoryClosure (A : AdmissibleModelCategory) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_model_category_endgame (A : AdmissibleModelCategory) : ConstrainedModelCategoryClosure A :=
  by
    exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end CategoryTheoryModelCategoriesCanonicalLaneLean
end HautevilleHouse