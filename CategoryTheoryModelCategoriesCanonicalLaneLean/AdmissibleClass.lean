import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoryTheoryModelCategoriesCanonicalLaneLean

structure AdmissibleModelCategoryObject where
  object : Type
  categoryStructure : Prop
  modelStructure : Prop
  conclusion : categoryStructure ∧ modelStructure

end HautevilleHouse
end CategoryTheoryModelCategoriesCanonicalLaneLean