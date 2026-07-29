import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CategoryTheoryModelCategoriesCanonicalLaneLean.ModelCategoryStructure
import HautevilleHouse.CategoryTheoryModelCategoriesCanonicalLaneLean.QuillenAdjunction
import HautevilleHouse.CategoryTheoryModelCategoriesCanonicalLaneLean.HomotopyCategory

namespace HautevilleHouse
namespace CategoryTheoryModelCategoriesCanonicalLaneLean

structure DerivedFunctor (M N : ModelCategory) (Q : QuillenAdjunction M N) where
  leftDerived : HomotopyCategory M → HomotopyCategory N
  rightDerived : HomotopyCategory N → HomotopyCategory M
  derivedAdjunction : Prop
  preservesHomotopyLimits : Prop

structure DerivedFunctorEvidence (M N : ModelCategory) (Q : QuillenAdjunction M N) (D : DerivedFunctor M N Q) where
  derivedAdjunctionClosed : D.derivedAdjunction
  preservesHomotopyLimitsClosed : D.preservesHomotopyLimits

def DerivedFunctorClosed (M N : ModelCategory) (Q : QuillenAdjunction M N) (D : DerivedFunctor M N Q) : Prop :=
  D.derivedAdjunction ∧ D.preservesHomotopyLimits

theorem derived_functor_closed_from_evidence (M N : ModelCategory) (Q : QuillenAdjunction M N)
    (D : DerivedFunctor M N Q) (E : DerivedFunctorEvidence M N Q D) : DerivedFunctorClosed M N Q D := by
  exact And.intro E.derivedAdjunctionClosed E.preservesHomotopyLimitsClosed

end CategoryTheoryModelCategoriesCanonicalLaneLean
end HautevilleHouse