import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoryTheoryModelCategoriesCanonicalLaneLean

structure ModelCategoryAxiomsPackage where
  weakEquivalences : Type
  fibrations : Type
  cofibrations : Type
  twoOutOfThree : Prop
  retract : Prop
  factorization : Prop
  lifting : Prop

structure ModelCategoryAxiomsEvidence (M : ModelCategoryAxiomsPackage) where
  twoOutOfThreeClosed : M.twoOutOfThree
  retractClosed : M.retract
  factorizationClosed : M.factorization
  liftingClosed : M.lifting

def ModelCategoryAxiomsClosed (M : ModelCategoryAxiomsPackage) : Prop :=
  M.twoOutOfThree ∧ M.retract ∧ M.factorization ∧ M.lifting

theorem model_category_axioms_closed_from_evidence (M : ModelCategoryAxiomsPackage)
    (E : ModelCategoryAxiomsEvidence M) : ModelCategoryAxiomsClosed M := by
  exact And.intro E.twoOutOfThreeClosed
    (And.intro E.retractClosed
      (And.intro E.factorizationClosed E.liftingClosed))

end HautevilleHouse
end CategoryTheoryModelCategoriesCanonicalLaneLean