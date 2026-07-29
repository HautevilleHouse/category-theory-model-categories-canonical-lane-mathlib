import HautevilleHouse.CategoryTheoryModelCategoriesCanonicalLaneLean.ModelCategoriesAdmissibleClass

namespace HautevilleHouse
namespace CategoryTheoryModelCategoriesCanonicalLaneLean

structure WeakEquivalenceSystem where
  morphisms : Type u
  category : Type v
  twoOutOfThree : Prop
  retractStability : Prop
  liftingWithFibrations : Prop

type WeakEquivalenceEvidence (W : WeakEquivalenceSystem) where
  twoOutOfThreeClosed : W.twoOutOfThree
  retractStabilityClosed : W.retractStability
  liftingWithFibrationsClosed : W.liftingWithFibrations

def WeakEquivalenceSystemClosed (W : WeakEquivalenceSystem) : Prop :=
  W.twoOutOfThree ∧ W.retractStability ∧ W.liftingWithFibrations

theorem weak_equivalence_system_closed (W : WeakEquivalenceSystem) (E : WeakEquivalenceEvidence W) : WeakEquivalenceSystemClosed W :=
  by
    exact And.intro E.twoOutOfThreeClosed (And.intro E.retractStabilityClosed E.liftingWithFibrationsClosed)

end CategoryTheoryModelCategoriesCanonicalLaneLean
end HautevilleHouse