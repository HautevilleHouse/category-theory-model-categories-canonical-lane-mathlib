import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoryTheoryModelCategoriesCanonicalLaneLean

structure AdmissibleModelCategory where
  obj : Type u
  weakEquivalences : Prop
  fibrations : Prop
  cofibrations : Prop
  oneStepLiftingProperty : Prop
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleModelCategory) : Prop :=
  (A.weakEquivalences ∧ A.fibrations ∧ A.cofibrations ∧ A.oneStepLiftingProperty) ∧
  (A.endpointSatisfied ∨ A.remainderRecorded)

end CategoryTheoryModelCategoriesCanonicalLaneLean
end HautevilleHouse