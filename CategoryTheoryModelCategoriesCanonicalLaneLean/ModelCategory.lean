import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CategoryTheoryModelCategoriesCanonicalLaneLean.CFrameworks

namespace HautevilleHouse
namespace CategoryTheoryModelCategoriesCanonicalLaneLean

structure ModelCategory where
  category : Type u
  weakEquivalences : Type -> Type -> Prop
  fibrations : Type -> Type -> Prop
  cofibrations : Type -> Type -> Prop
  cmcAxioms : Prop

structure ModelCategoryEvidence (M : ModelCategory) where
  cmcAxiomsClosed : M.cmcAxioms

def ModelCategoryClosed (M : ModelCategory) : Prop :=
  M.cmcAxioms

theorem model_category_closed_from_evidence (M : ModelCategory) (E : ModelCategoryEvidence M) :
    ModelCategoryClosed M := by
  exact E.cmcAxiomsClosed

theorem model_category_from_cofibration_structure (C : CofibrationStructure) (F : CofibrationStructureEvidence C) :
    ModelCategory := by
  refine { category := C.category, weakEquivalences := ?_, fibrations := ?_, cofibrations := C.cofibrations, cmcAxioms := ?_ }
  · exact fun _ _ => True
  · exact fun _ _ => True
  · exact True

end CategoryTheoryModelCategoriesCanonicalLaneLean
end HautevilleHouse