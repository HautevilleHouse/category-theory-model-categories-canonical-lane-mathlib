import CategoryTheoryModelCategoriesCanonicalLaneLean.HomotopyCategory

namespace HautevilleHouse
namespace CategoryTheoryModelCategoriesCanonicalLaneLean

structure SimplicialModelCategoryPackage {M : ModelCategoryPackage} (E : ModelCategoryEvidence M) where
  simplicialEnrichment : Prop
  homotopyCoherent : Prop
  mappingSpace : Prop

structure SimplicialModelCategoryEvidence {M : ModelCategoryPackage} {E : ModelCategoryEvidence M}
    (S : SimplicialModelCategoryPackage E) where
  simplicialEnrichmentClosed : S.simplicialEnrichment
  homotopyCoherentClosed : S.homotopyCoherent
  mappingSpaceClosed : S.mappingSpace

def SimplicialModelCategoryClosed {M : ModelCategoryPackage} {E : ModelCategoryEvidence M}
    (S : SimplicialModelCategoryPackage E) : Prop :=
  S.simplicialEnrichment ∧ S.homotopyCoherent ∧ S.mappingSpace

theorem simplicial_model_category_closed_from_evidence
    {M : ModelCategoryPackage} {E : ModelCategoryEvidence M}
    (S : SimplicialModelCategoryPackage E) (Ev : SimplicialModelCategoryEvidence S) :
    SimplicialModelCategoryClosed S := by
  exact And.intro Ev.simplicialEnrichmentClosed
    (And.intro Ev.homotopyCoherentClosed Ev.mappingSpaceClosed)

end CategoryTheoryModelCategoriesCanonicalLaneLean
end HautevilleHouse