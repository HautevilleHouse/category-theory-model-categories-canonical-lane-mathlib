import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoryTheoryModelCategoriesCanonicalLaneLean

structure ModelCategoryObject where
  underlyingCategory : Type u
  modelStructure : Prop
  weakEquivalences : Prop
  fibrations : Prop
  cofibrations : Prop
  factorizationSystem : Prop

structure ModelCategoryAdmittedObject where
  object : ModelCategoryObject
  cofibrantReplacementExists : Prop
  fibrantReplacementExists : Prop
  homotopyCategoryDefined : Prop
  conclusion : cofibrantReplacementExists ∧ fibrantReplacementExists ∧ homotopyCategoryDefined

def ModelCategoryWitnessClosed (O : ModelCategoryAdmittedObject) : Prop :=
  O.conclusion

structure AdmissibleClass where
  object : ModelCategoryAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  ModelCategoryWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end CategoryTheoryModelCategoriesCanonicalLaneLean
end HautevilleHouse
