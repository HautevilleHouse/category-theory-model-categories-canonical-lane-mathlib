import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoryTheoryModelCategoriesCanonicalLaneLean

structure AdjointFunctorPackage where
  leftFunctor : Type
  rightFunctor : Type
  unitTransformation : Prop
  counitTransformation : Prop
  triangleIdentities : Prop
  universalProperty : Prop
  unitClosed : unitTransformation
  counitClosed : counitTransformation
  triangleClosed : triangleIdentities

structure AdjointFunctorEvidence (A : AdjointFunctorPackage) where
  unitClosed : A.unitTransformation
  counitClosed : A.counitTransformation
  triangleClosed : A.triangleIdentities

def AdjointFunctorClosed (A : AdjointFunctorPackage) : Prop :=
  A.unitTransformation ∧ A.counitTransformation ∧ A.triangleIdentities

theorem adjoint_functor_closed_from_evidence (A : AdjointFunctorPackage)
    (E : AdjointFunctorEvidence A) : AdjointFunctorClosed A := by
  exact And.intro E.unitClosed (And.intro E.counitClosed E.triangleClosed)

end HautevilleHouse
end CategoryTheoryModelCategoriesCanonicalLaneLean