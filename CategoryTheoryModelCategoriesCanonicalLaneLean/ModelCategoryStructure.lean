import CategoryTheoryModelCategoriesCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace CategoryTheoryModelCategoriesCanonicalLaneLean

structure ModelCategoryPackage where
  category : Type u
  weakEquivalences : Set (Arrow (category : Type u → Type v))
  fibrations : Set (Arrow (category : Type u → Type v))
  cofibrations : Set (Arrow (category : Type u → Type v))
  weakEquivalenceSatTwoOutOfThree : Prop
  fibrationClosedUnderCompositionAndPullbacks : Prop
  cofibrationClosedUnderCompositionAndPushouts : Prop
  factorizationExists : Prop

structure ModelCategoryEvidence (M : ModelCategoryPackage) where
  weakEquivalenceSatTwoOutOfThreeClosed : M.weakEquivalenceSatTwoOutOfThree
  fibrationClosedUnderCompositionAndPullbacksClosed : M.fibrationClosedUnderCompositionAndPullbacks
  cofibrationClosedUnderCompositionAndPushoutsClosed : M.cofibrationClosedUnderCompositionAndPushouts
  factorizationExistsClosed : M.factorizationExists

def ModelCategoryClosed (M : ModelCategoryPackage) : Prop :=
  M.weakEquivalenceSatTwoOutOfThree ∧ M.fibrationClosedUnderCompositionAndPullbacks ∧
  M.cofibrationClosedUnderCompositionAndPushouts ∧ M.factorizationExists

theorem model_category_closed_from_evidence (M : ModelCategoryPackage) (E : ModelCategoryEvidence M) :
    ModelCategoryClosed M := by
  exact And.intro E.weakEquivalenceSatTwoOutOfThreeClosed
    (And.intro E.fibrationClosedUnderCompositionAndPullbacksClosed
      (And.intro E.cofibrationClosedUnderCompositionAndPushoutsClosed E.factorizationExistsClosed))

end CategoryTheoryModelCategoriesCanonicalLaneLean
end HautevilleHouse