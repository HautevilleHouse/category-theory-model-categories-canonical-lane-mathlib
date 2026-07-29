import HautevilleHouse.CategoryTheoryModelCategoriesCanonicalLaneLean.ModelCategoriesHomotopyCategory

namespace HautevilleHouse
namespace CategoryTheoryModelCategoriesCanonicalLaneLean

structure QuillenFunctor {
  W1 : WeakEquivalenceSystem} {F1 : FibrationCofibrationSystem W1} {H1 : HomotopyCategory F1}
  {W2 : WeakEquivalenceSystem} {F2 : FibrationCofibrationSystem W2} {H2 : HomotopyCategory F2} where
  underlyingFunctor : Type u
  leftQuillen : Prop
  rightQuillen : Prop
  derivedFunctorCompatible : Prop

type QuillenFunctorEvidence {
  W1 : WeakEquivalenceSystem} {F1 : FibrationCofibrationSystem W1} {H1 : HomotopyCategory F1}
  {W2 : WeakEquivalenceSystem} {F2 : FibrationCofibrationSystem W2} {H2 : HomotopyCategory F2}
  (Q : QuillenFunctor H1 H2) where
  leftQuillenClosed : Q.leftQuillen
  rightQuillenClosed : Q.rightQuillen
  derivedFunctorCompatibleClosed : Q.derivedFunctorCompatible

def QuillenFunctorClosed {
  W1 : WeakEquivalenceSystem} {F1 : FibrationCofibrationSystem W1} {H1 : HomotopyCategory F1}
  {W2 : WeakEquivalenceSystem} {F2 : FibrationCofibrationSystem W2} {H2 : HomotopyCategory F2}
  (Q : QuillenFunctor H1 H2) : Prop :=
  Q.leftQuillen ∧ Q.rightQuillen ∧ Q.derivedFunctorCompatible

theorem quillen_functor_closed {
  W1 : WeakEquivalenceSystem} {F1 : FibrationCofibrationSystem W1} {H1 : HomotopyCategory F1}
  {W2 : WeakEquivalenceSystem} {F2 : FibrationCofibrationSystem W2} {H2 : HomotopyCategory F2}
  (Q : QuillenFunctor H1 H2) (E : QuillenFunctorEvidence Q) : QuillenFunctorClosed Q :=
  by
    exact And.intro E.leftQuillenClosed (And.intro E.rightQuillenClosed E.derivedFunctorCompatibleClosed)

end CategoryTheoryModelCategoriesCanonicalLaneLean
end HautevilleHouse