import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoryTheoryModelCategoriesCanonicalLaneLean

-- Model category package: defines the structure of a model category
-- with three distinguished classes of morphisms: weak equivalences, fibrations, and cofibrations.

structure ModelCategoryPackage where
  underlyingCategory : Type u₁
  weakEquivalences : Set (Morphism underlyingCategory)
  fibrations : Set (Morphism underlyingCategory)
  cofibrations : Set (Morphism underlyingCategory)
  mc1LimitColimit : Prop
  mc2TwoOutOfThree : Prop
  mc3Retracts : Prop
  mc4Lifting : Prop
  mc5Factorisation : Prop
  
structure ModelCategoryEvidence (M : ModelCategoryPackage) where
  mc1LimitColimitClosed : M.mc1LimitColimit
  mc2TwoOutOfThreeClosed : M.mc2TwoOutOfThree
  mc3RetractsClosed : M.mc3Retracts
  mc4LiftingClosed : M.mc4Lifting
  mc5FactorisationClosed : M.mc5Factorisation

def ModelCategoryClosed (M : ModelCategoryPackage) : Prop :=
  M.mc1LimitColimit ∧ M.mc2TwoOutOfThree ∧ M.mc3Retracts ∧ M.mc4Lifting ∧ M.mc5Factorisation

theorem model_category_closed_from_evidence
    (M : ModelCategoryPackage) (E : ModelCategoryEvidence M) :
    ModelCategoryClosed M := by
  exact And.intro E.mc1LimitColimitClosed
    (And.intro E.mc2TwoOutOfThreeClosed
      (And.intro E.mc3RetractsClosed
        (And.intro E.mc4LiftingClosed E.mc5FactorisationClosed)))

end CategoryTheoryModelCategoriesCanonicalLaneLean
end HautevilleHouse
