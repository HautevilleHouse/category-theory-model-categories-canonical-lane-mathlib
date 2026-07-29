import CategoryTheoryModelCategoriesCanonicalLaneLean.SimplicialModelCategory

namespace HautevilleHouse
namespace CategoryTheoryModelCategoriesCanonicalLaneLean

structure BousfieldLocalizationPackage {M : ModelCategoryPackage} (E : ModelCategoryEvidence M) where
  leftBousfieldLocalizationExists : Prop
  localEquivalences : Prop
  localizationModelStructure : Prop

structure BousfieldLocalizationEvidence {M : ModelCategoryPackage} {E : ModelCategoryEvidence M}
    (B : BousfieldLocalizationPackage E) where
  leftBousfieldLocalizationExistsClosed : B.leftBousfieldLocalizationExists
  localEquivalencesClosed : B.localEquivalences
  localizationModelStructureClosed : B.localizationModelStructure

def BousfieldLocalizationClosed {M : ModelCategoryPackage} {E : ModelCategoryEvidence M}
    (B : BousfieldLocalizationPackage E) : Prop :=
  B.leftBousfieldLocalizationExists ∧ B.localEquivalences ∧ B.localizationModelStructure

theorem bousfield_localization_closed_from_evidence
    {M : ModelCategoryPackage} {E : ModelCategoryEvidence M}
    (B : BousfieldLocalizationPackage E) (Ev : BousfieldLocalizationEvidence B) :
    BousfieldLocalizationClosed B := by
  exact And.intro Ev.leftBousfieldLocalizationExistsClosed
    (And.intro Ev.localEquivalencesClosed Ev.localizationModelStructureClosed)

end CategoryTheoryModelCategoriesCanonicalLaneLean
end HautevilleHouse