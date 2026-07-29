import HautevilleHouse.CategoryTheoryModelCategoriesCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace CategoryTheoryModelCategoriesCanonicalLaneLean

structure ModelCategoryStructure where
  weakEquivalences : Prop
  fibrations : Prop
  cofibrations : Prop
  liftingAxiom : Prop
  retractAxiom : Prop
  factorizationAxiom : Prop

structure ModelCategoryEvidence (M : ModelCategoryStructure) where
  weakEquivalencesClosed : M.weakEquivalences
  fibrationsClosed : M.fibrations
  cofibrationsClosed : M.cofibrations
  liftingAxiomClosed : M.liftingAxiom
  retractAxiomClosed : M.retractAxiom
  factorizationAxiomClosed : M.factorizationAxiom

def ModelCategoryClosed (M : ModelCategoryStructure) : Prop :=
  M.weakEquivalences ∧ M.fibrations ∧ M.cofibrations ∧
  M.liftingAxiom ∧ M.retractAxiom ∧ M.factorizationAxiom

theorem model_category_closed_from_evidence (M : ModelCategoryStructure)
    (E : ModelCategoryEvidence M) : ModelCategoryClosed M := by
  exact And.intro E.weakEquivalencesClosed
    (And.intro E.fibrationsClosed
      (And.intro E.cofibrationsClosed
        (And.intro E.liftingAxiomClosed
          (And.intro E.retractAxiomClosed E.factorizationAxiomClosed))))

end CategoryTheoryModelCategoriesCanonicalLaneLean
end HautevilleHouse