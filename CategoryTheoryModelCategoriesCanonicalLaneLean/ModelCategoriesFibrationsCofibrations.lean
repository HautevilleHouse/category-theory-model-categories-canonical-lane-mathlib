import HautevilleHouse.CategoryTheoryModelCategoriesCanonicalLaneLean.ModelCategoriesWeakEquivalences

namespace HautevilleHouse
namespace CategoryTheoryModelCategoriesCanonicalLaneLean

structure FibrationCofibrationSystem (W : WeakEquivalenceSystem) where
  fibrations : Prop
  cofibrations : Prop
  factorizationAxiom : Prop
  liftingProperty : Prop
  retractProperty : Prop

type FibrationCofibrationEvidence {W : WeakEquivalenceSystem} (F : FibrationCofibrationSystem W) where
  fibrationsClosed : F.fibrations
  cofibrationsClosed : F.cofibrations
  factorizationAxiomClosed : F.factorizationAxiom
  liftingPropertyClosed : F.liftingProperty
  retractPropertyClosed : F.retractProperty

def FibrationCofibrationSystemClosed {W : WeakEquivalenceSystem} (F : FibrationCofibrationSystem W) : Prop :=
  F.fibrations ∧ F.cofibrations ∧ F.factorizationAxiom ∧ F.liftingProperty ∧ F.retractProperty

theorem fibration_cofibration_system_closed {W : WeakEquivalenceSystem} (F : FibrationCofibrationSystem W) (E : FibrationCofibrationEvidence F) : FibrationCofibrationSystemClosed F :=
  by
    exact And.intro E.fibrationsClosed (And.intro E.cofibrationsClosed (And.intro E.factorizationAxiomClosed (And.intro E.liftingPropertyClosed E.retractPropertyClosed)))

end CategoryTheoryModelCategoriesCanonicalLaneLean
end HautevilleHouse