import ModelCategoryGateLemmas

namespace HautevilleHouse
namespace CategoryTheoryModelCategoriesCanonicalLaneLean

def ConstrainedModelCategoryClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_model_category_endgame (A : AdmissibleClass) :
    ConstrainedModelCategoryClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end CategoryTheoryModelCategoriesCanonicalLaneLean
end HautevilleHouse
