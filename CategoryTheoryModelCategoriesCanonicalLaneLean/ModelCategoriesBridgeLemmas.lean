import HautevilleHouse.CategoryTheoryModelCategoriesCanonicalLaneLean.ModelCategoriesAdmissibleClass

namespace HautevilleHouse
namespace CategoryTheoryModelCategoriesCanonicalLaneLean

def bridgeClosed (A : AdmissibleModelCategory) : Prop :=
  A.weakEquivalences ∧ A.fibrations ∧ A.cofibrations ∧ A.oneStepLiftingProperty

theorem bridge_from_admissible_class (A : AdmissibleModelCategory) : bridgeClosed A :=
  by
    exact And.intro A.weakEquivalences (And.intro A.fibrations (And.intro A.cofibrations A.oneStepLiftingProperty))

end CategoryTheoryModelCategoriesCanonicalLaneLean
end HautevilleHouse