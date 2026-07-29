import HautevilleHouse.CategoryTheoryModelCategoriesCanonicalLaneLean.ModelCategoryObjects
import HautevilleHouse.CategoryTheoryModelCategoriesCanonicalLaneLean.CofibrantReplacement

namespace HautevilleHouse
namespace CategoryTheoryModelCategoriesCanonicalLaneLean

structure ModelCategoryEvidenceTerms (M : ModelCategoryStructure) where
  modelAxiomsEvidence : M.modelAxioms
  cofibrantReplacementEvidence : CofibrantReplacementClosed (default : CofibrantReplacementPackage)

def model_category_evidence_terms_default : ModelCategoryEvidenceTerms (default : ModelCategoryStructure) := by
  unfold ModelCategoryEvidenceTerms
  exact {
    modelAxiomsEvidence := trivial,
    cofibrantReplacementEvidence := by
      exact cofibrant_replacement_closed_from_evidence (default : CofibrantReplacementPackage)
        ({
          cofibrantReplacementExistsClosed := trivial,
          functorialClosed := trivial,
          homotopyEquivalenceClosed := trivial
        } : CofibrantReplacementEvidence (default : CofibrantReplacementPackage))
  }

end CategoryTheoryModelCategoriesCanonicalLaneLean
end HautevilleHouse
