import HautevilleHouse.CategoryTheoryModelCategoriesCanonicalLaneLean.ModelCategoryEvidenceTerms

namespace HautevilleHouse
namespace CategoryTheoryModelCategoriesCanonicalLaneLean

structure ModelCategoryAnalyticCertificate (M : ModelCategoryStructure) where
  axiomsHeld : Prop
  axiomsHeldClosed : axiomsHeld
  evidenceTerms : ModelCategoryEvidenceTerms M

def ModelCategoryAnalyticCertificateClosed {M : ModelCategoryStructure}
    (C : ModelCategoryAnalyticCertificate M) : Prop :=
  C.axiomsHeld ∧ ModelCategoryEvidenceTerms M

theorem model_category_analytic_certificate_closed
    {M : ModelCategoryStructure} (C : ModelCategoryAnalyticCertificate M) :
    ModelCategoryAnalyticCertificateClosed C := by
  exact And.intro C.axiomsHeldClosed (by
    -- Need to provide ModelCategoryEvidenceTerms M; C.evidenceTerms is such
    exact C.evidenceTerms)

end CategoryTheoryModelCategoriesCanonicalLaneLean
end HautevilleHouse
