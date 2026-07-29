import HautevilleHouse.CategoryTheoryModelCategoriesCanonicalLaneLean.ModelCategoryObjects

namespace HautevilleHouse
namespace CategoryTheoryModelCategoriesCanonicalLaneLean

structure MathlibProofObligation where
  sourceKey : String
  theoremObject : String
  commonCoreImported : Bool
  theoremSpecificDefinitionsNative : Bool
  theoremSpecificBridgeNative : Bool
  theoremSpecificAdmittedClosureNative : Bool
  unrestrictedClassicalClosureNative : Bool
  carriedGap : String

def mathlibProofObligation : MathlibProofObligation := {
  sourceKey := "category-theory-model-categories-canonical-lane",
  theoremObject := "Quillen's theorem on homotopy category equivalence",
  commonCoreImported := true,
  theoremSpecificDefinitionsNative := true,
  theoremSpecificBridgeNative := true,
  theoremSpecificAdmittedClosureNative := true,
  unrestrictedClassicalClosureNative := false,
  carriedGap := "theorem-specific ModelCategory endgame pilot closes over the admitted class; unrestricted classical closure remains carried"
}

end CategoryTheoryModelCategoriesCanonicalLaneLean
end HautevilleHouse
