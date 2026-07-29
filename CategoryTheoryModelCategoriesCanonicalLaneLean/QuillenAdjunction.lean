import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CategoryTheoryModelCategoriesCanonicalLaneLean.ModelCategoryPackage

namespace HautevilleHouse
namespace CategoryTheoryModelCategoriesCanonicalLaneLean

-- Quillen adjunction: a pair of adjoint functors between model categories
-- preserving the model structure (left Quillen preserves cofibrations and trivial cofibrations,
-- right Quillen preserves fibrations and trivial fibrations).

structure QuillenAdjunction {C D : Type u₁} [Category C] [Category D]
    (M : ModelCategoryPackage) (N : ModelCategoryPackage) where
  leftAdjoint : Functor C D
  rightAdjoint : Functor D C
  adjunction : leftAdjoint ⊣ rightAdjoint
  preservesCofibrations : leftAdjoint PreservesCofibrations M.cofibrations N.cofibrations
  preservesTrivialCofibrations : leftAdjoint PreservesTrivialCofibrations M.weakEquivalences M.cofibrations N.weakEquivalences N.cofibrations
  preservesFibrations : rightAdjoint PreservesFibrations M.fibrations N.fibrations
  preservesTrivialFibrations : rightAdjoint PreservesTrivialFibrations M.weakEquivalences M.fibrations N.weakEquivalences N.fibrations

structure QuillenAdjunctionEvidence {C D : Type u₁} [Category C] [Category D]
    {M : ModelCategoryPackage} {N : ModelCategoryPackage}
    (Q : QuillenAdjunction M N) where
  preservesCofibrationsClosed : Q.preservesCofibrations
  preservesTrivialCofibrationsClosed : Q.preservesTrivialCofibrations
  preservesFibrationsClosed : Q.preservesFibrations
  preservesTrivialFibrationsClosed : Q.preservesTrivialFibrations

def QuillenAdjunctionClosed {C D : Type u₁} [Category C] [Category D]
    {M : ModelCategoryPackage} {N : ModelCategoryPackage}
    (Q : QuillenAdjunction M N) : Prop :=
  Q.preservesCofibrations ∧ Q.preservesTrivialCofibrations ∧ Q.preservesFibrations ∧ Q.preservesTrivialFibrations

theorem quillen_adjunction_closed_from_evidence
    {C D : Type u₁} [Category C] [Category D]
    {M : ModelCategoryPackage} {N : ModelCategoryPackage}
    (Q : QuillenAdjunction M N) (E : QuillenAdjunctionEvidence Q) :
    QuillenAdjunctionClosed Q := by
  exact And.intro E.preservesCofibrationsClosed
    (And.intro E.preservesTrivialCofibrationsClosed
      (And.intro E.preservesFibrationsClosed E.preservesTrivialFibrationsClosed))

end CategoryTheoryModelCategoriesCanonicalLaneLean
end HautevilleHouse
