import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoryTheoryModelCategoriesCanonicalLaneLean

structure CofibrationStructure where
  cofibrations : Type -> Type -> Prop
  weakEquivalences : Type -> Type -> Prop
  fibrations : Type -> Type -> Prop
  lifts : Prop
  retracts : Prop
  factorization : Prop
  cmcAxioms : Prop

structure CofibrationStructureEvidence (C : CofibrationStructure) where
  liftsClosed : C.lifts
  retractsClosed : C.retracts
  factorizationClosed : C.factorization
  cmcAxiomsClosed : C.cmcAxioms

def CofibrationStructureClosed (C : CofibrationStructure) : Prop :=
  C.lifts ∧ C.retracts ∧ C.factorization ∧ C.cmcAxioms

theorem cofibration_structure_closed_from_evidence (C : CofibrationStructure)
    (E : CofibrationStructureEvidence C) : CofibrationStructureClosed C := by
  exact And.intro E.liftsClosed (And.intro E.retractsClosed (And.intro E.factorizationClosed E.cmcAxiomsClosed))

end CategoryTheoryModelCategoriesCanonicalLaneLean
end HautevilleHouse
