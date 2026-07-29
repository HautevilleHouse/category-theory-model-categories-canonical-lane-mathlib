import ModelCategoryAdmissibleClass

namespace HautevilleHouse
namespace CategoryTheoryModelCategoriesCanonicalLaneLean

structure FibrantReplacementPackage {O : ModelCategoryObject} (h : O.modelStructure) where
  fibrantObject : O.underlyingCategory
  weakEquivalenceFromOriginal : Prop
  fibrantProperty : Prop

structure FibrantReplacementEvidence {O : ModelCategoryObject} {h : O.modelStructure}
    (F : FibrantReplacementPackage h) where
  weakEquivalenceFromOriginalClosed : F.weakEquivalenceFromOriginal
  fibrantPropertyClosed : F.fibrantProperty

def FibrantReplacementClosed {O : ModelCategoryObject} {h : O.modelStructure}
    (F : FibrantReplacementPackage h) : Prop :=
  F.weakEquivalenceFromOriginal ∧ F.fibrantProperty

theorem fibrant_replacement_closed_from_evidence
    {O : ModelCategoryObject} {h : O.modelStructure}
    (F : FibrantReplacementPackage h) (E : FibrantReplacementEvidence F) :
    FibrantReplacementClosed F := by
  exact And.intro E.weakEquivalenceFromOriginalClosed E.fibrantPropertyClosed

end CategoryTheoryModelCategoriesCanonicalLaneLean
end HautevilleHouse
