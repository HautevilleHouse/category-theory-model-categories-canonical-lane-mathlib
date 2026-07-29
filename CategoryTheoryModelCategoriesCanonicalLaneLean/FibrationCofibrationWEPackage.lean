import HautevilleHouse.CategoryTheoryModelCategoriesCanonicalLaneLean.ModelCategoryFoundations

namespace HautevilleHouse
namespace CategoryTheoryModelCategoriesCanonicalLaneLean

structure FibrationPackage {M : ModelCategoryStructure} (E : ModelCategoryEvidence M) where
  fibrationClass : Prop
  rightLiftingProperty : Prop
  stabilityUnderPullback : Prop

structure FibrationEvidence {M : ModelCategoryStructure} {E : ModelCategoryEvidence M}
    (F : FibrationPackage E) where
  fibrationClassClosed : F.fibrationClass
  rightLiftingPropertyClosed : F.rightLiftingProperty
  stabilityUnderPullbackClosed : F.stabilityUnderPullback

def FibrationClosed {M : ModelCategoryStructure} {E : ModelCategoryEvidence M}
    (F : FibrationPackage E) : Prop :=
  F.fibrationClass ∧ F.rightLiftingProperty ∧ F.stabilityUnderPullback

theorem fibration_closed_from_evidence {M : ModelCategoryStructure} {E : ModelCategoryEvidence M}
    (F : FibrationPackage E) (Ev : FibrationEvidence F) : FibrationClosed F := by
  exact And.intro Ev.fibrationClassClosed
    (And.intro Ev.rightLiftingPropertyClosed Ev.stabilityUnderPullbackClosed)

structure CofibrationPackage {M : ModelCategoryStructure} (E : ModelCategoryEvidence M) where
  cofibrationClass : Prop
  leftLiftingProperty : Prop
  stabilityUnderPushout : Prop

structure CofibrationEvidence {M : ModelCategoryStructure} {E : ModelCategoryEvidence M}
    (C : CofibrationPackage E) where
  cofibrationClassClosed : C.cofibrationClass
  leftLiftingPropertyClosed : C.leftLiftingProperty
  stabilityUnderPushoutClosed : C.stabilityUnderPushout

def CofibrationClosed {M : ModelCategoryStructure} {E : ModelCategoryEvidence M}
    (C : CofibrationPackage E) : Prop :=
  C.cofibrationClass ∧ C.leftLiftingProperty ∧ C.stabilityUnderPushout

theorem cofibration_closed_from_evidence {M : ModelCategoryStructure} {E : ModelCategoryEvidence M}
    (C : CofibrationPackage E) (Ev : CofibrationEvidence C) : CofibrationClosed C := by
  exact And.intro Ev.cofibrationClassClosed
    (And.intro Ev.leftLiftingPropertyClosed Ev.stabilityUnderPushoutClosed)

structure WeakEquivalencePackage {M : ModelCategoryStructure} (E : ModelCategoryEvidence M) where
  weakEquivalenceClass : Prop
  twoOutOfThreeProperty : Prop
  closureUnderRetracts : Prop

structure WeakEquivalenceEvidence {M : ModelCategoryStructure} {E : ModelCategoryEvidence M}
    (W : WeakEquivalencePackage E) where
  weakEquivalenceClassClosed : W.weakEquivalenceClass
  twoOutOfThreePropertyClosed : W.twoOutOfThreeProperty
  closureUnderRetractsClosed : W.closureUnderRetracts

def WeakEquivalenceClosed {M : ModelCategoryStructure} {E : ModelCategoryEvidence M}
    (W : WeakEquivalencePackage E) : Prop :=
  W.weakEquivalenceClass ∧ W.twoOutOfThreeProperty ∧ W.closureUnderRetracts

theorem weak_equivalence_closed_from_evidence {M : ModelCategoryStructure} {E : ModelCategoryEvidence M}
    (W : WeakEquivalencePackage E) (Ev : WeakEquivalenceEvidence W) : WeakEquivalenceClosed W := by
  exact And.intro Ev.weakEquivalenceClassClosed
    (And.intro Ev.twoOutOfThreePropertyClosed Ev.closureUnderRetractsClosed)

end CategoryTheoryModelCategoriesCanonicalLaneLean
end HautevilleHouse