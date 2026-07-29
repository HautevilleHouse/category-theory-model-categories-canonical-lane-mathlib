import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoryTheoryModelCategoriesCanonicalLaneLean

structure HomotopyCategoryPackage where
  modelCategory : Type
  homotopyCategory : Type
  homotopyRelation : Prop
  localizationFunctor : Type
  derivedFunctor : Type
  homotopyCategoryEquivalence : Prop
  derivedFunctorExistence : Prop

structure HomotopyCategoryEvidence (H : HomotopyCategoryPackage) where
  homotopyCategoryEquivalenceClosed : H.homotopyCategoryEquivalence
  derivedFunctorExistenceClosed : H.derivedFunctorExistence

def HomotopyCategoryClosed (H : HomotopyCategoryPackage) : Prop :=
  H.homotopyCategoryEquivalence ∧ H.derivedFunctorExistence

theorem homotopy_category_closed_from_evidence (H : HomotopyCategoryPackage)
    (E : HomotopyCategoryEvidence H) : HomotopyCategoryClosed H := by
  exact And.intro E.homotopyCategoryEquivalenceClosed E.derivedFunctorExistenceClosed

end HautevilleHouse
end CategoryTheoryModelCategoriesCanonicalLaneLean