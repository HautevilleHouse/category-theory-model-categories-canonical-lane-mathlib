import ModelCategoryAdmissibleClass

namespace HautevilleHouse
namespace CategoryTheoryModelCategoriesCanonicalLaneLean

structure CofibrantReplacementPackage {O : ModelCategoryObject} (h : O.modelStructure) where
  cofibrantObject : O.underlyingCategory
  weakEquivalenceToOriginal : Prop
  cofibrantProperty : Prop

structure CofibrantReplacementEvidence {O : ModelCategoryObject} {h : O.modelStructure}
    (C : CofibrantReplacementPackage h) where
  weakEquivalenceToOriginalClosed : C.weakEquivalenceToOriginal
  cofibrantPropertyClosed : C.cofibrantProperty

def CofibrantReplacementClosed {O : ModelCategoryObject} {h : O.modelStructure}
    (C : CofibrantReplacementPackage h) : Prop :=
  C.weakEquivalenceToOriginal ∧ C.cofibrantProperty

theorem cofibrant_replacement_closed_from_evidence
    {O : ModelCategoryObject} {h : O.modelStructure}
    (C : CofibrantReplacementPackage h) (E : CofibrantReplacementEvidence C) :
    CofibrantReplacementClosed C := by
  exact And.intro E.weakEquivalenceToOriginalClosed E.cofibrantPropertyClosed

end CategoryTheoryModelCategoriesCanonicalLaneLean
end HautevilleHouse
