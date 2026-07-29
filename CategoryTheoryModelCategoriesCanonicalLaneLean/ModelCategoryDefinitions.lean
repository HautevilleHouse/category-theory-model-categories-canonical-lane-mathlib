import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoryTheoryModelCategoriesCanonicalLaneLean

structure ModelCategoryPackage where
  underlyingCategory : Type u
  weakEquivalences : Prop
  fibrations : Prop
  cofibrations : Prop
  factorisationAxiom : Prop
  liftingAxiom : Prop
  twoOutOfThreeProperty : Prop

structure ModelCategoryEvidence (M : ModelCategoryPackage) where
  weakEquivalencesClosed : M.weakEquivalences
  fibrationsClosed : M.fibrations
  cofibrationsClosed : M.cofibrations
  factorisationAxiomClosed : M.factorisationAxiom
  liftingAxiomClosed : M.liftingAxiom
  twoOutOfThreePropertyClosed : M.twoOutOfThreeProperty

def ModelCategoryClosed (M : ModelCategoryPackage) : Prop :=
  M.weakEquivalences ∧ M.fibrations ∧ M.cofibrations ∧
  M.factorisationAxiom ∧ M.liftingAxiom ∧ M.twoOutOfThreeProperty

theorem model_category_closed_from_evidence (M : ModelCategoryPackage)
    (E : ModelCategoryEvidence M) : ModelCategoryClosed M := by
  exact And.intro E.weakEquivalencesClosed
    (And.intro E.fibrationsClosed
      (And.intro E.cofibrationsClosed
        (And.intro E.factorisationAxiomClosed
          (And.intro E.liftingAxiomClosed E.twoOutOfThreePropertyClosed))))

end CategoryTheoryModelCategoriesCanonicalLaneLean
end HautevilleHouse