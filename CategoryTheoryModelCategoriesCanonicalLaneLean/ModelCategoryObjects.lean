import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoryTheoryModelCategoriesCanonicalLaneLean

structure ModelCategoryStructure where
  category : Type u
  weakEquivalences : Set (Arrow category)
  fibrations : Set (Arrow category)
  cofibrations : Set (Arrow category)
  modelAxioms : Prop

structure ModelCategoryAdmittedObject where
  structure : ModelCategoryStructure
  conclusion : structure.modelAxioms

def modelCategoryWitnessClosed (O : ModelCategoryAdmittedObject) : Prop :=
  O.conclusion

end CategoryTheoryModelCategoriesCanonicalLaneLean
end HautevilleHouse
