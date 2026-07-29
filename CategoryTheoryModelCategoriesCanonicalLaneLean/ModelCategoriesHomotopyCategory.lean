import HautevilleHouse.CategoryTheoryModelCategoriesCanonicalLaneLean.ModelCategoriesFibrationsCofibrations

namespace HautevilleHouse
namespace CategoryTheoryModelCategoriesCanonicalLaneLean

structure HomotopyCategory {W : WeakEquivalenceSystem} {F : FibrationCofibrationSystem W} where
  objects : Type u
  morphisms : Type v
  localizationData : Prop
  derivedFunctors : Prop
  triangulatedStructure : Prop

type HomotopyCategoryEvidence {W : WeakEquivalenceSystem} {F : FibrationCofibrationSystem W} (H : HomotopyCategory F) where
  localizationDataClosed : H.localizationData
  derivedFunctorsClosed : H.derivedFunctors
  triangulatedStructureClosed : H.triangulatedStructure

def HomotopyCategoryClosed {W : WeakEquivalenceSystem} {F : FibrationCofibrationSystem W} (H : HomotopyCategory F) : Prop :=
  H.localizationData ∧ H.derivedFunctors ∧ H.triangulatedStructure

theorem homotopy_category_closed {W : WeakEquivalenceSystem} {F : FibrationCofibrationSystem W} (H : HomotopyCategory F) (E : HomotopyCategoryEvidence H) : HomotopyCategoryClosed H :=
  by
    exact And.intro E.localizationDataClosed (And.intro E.derivedFunctorsClosed E.triangulatedStructureClosed)

end CategoryTheoryModelCategoriesCanonicalLaneLean
end HautevilleHouse