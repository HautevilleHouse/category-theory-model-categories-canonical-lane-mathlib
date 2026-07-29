import CategoryTheoryModelCategoriesCanonicalLaneLean.ModelCategoryStructure

namespace HautevilleHouse
namespace CategoryTheoryModelCategoriesCanonicalLaneLean

structure CofibrantFibrantReplacementPackage (M : ModelCategoryPackage) where
  cofibrantReplacementFunctor : Functor M.category M.category
  fibrantReplacementFunctor : Functor M.category M.category
  naturalTransformationToFibrant : NaturalTransformation (functor.id M.category) fibrantReplacementFunctor
  naturalTransformationFromCofibrant : NaturalTransformation cofibrantReplacementFunctor (functor.id M.category)
  cofibrantInclusionAcyclicCofibration : Prop
  fibrantProjectionAcyclicFibration : Prop
  cofibrantObject : Prop
  fibrantObject : Prop

structure CofibrantFibrantReplacementEvidence (M : ModelCategoryPackage) (C : CofibrantFibrantReplacementPackage M) where
  cofibrantInclusionAcyclicCofibrationClosed : C.cofibrantInclusionAcyclicCofibration
  fibrantProjectionAcyclicFibrationClosed : C.fibrantProjectionAcyclicFibration
  cofibrantObjectClosed : C.cofibrantObject
  fibrantObjectClosed : C.fibrantObject

def CofibrantFibrantReplacementClosed (M : ModelCategoryPackage) (C : CofibrantFibrantReplacementPackage M) : Prop :=
  C.cofibrantInclusionAcyclicCofibration ∧ C.fibrantProjectionAcyclicFibration ∧
  C.cofibrantObject ∧ C.fibrantObject

theorem cofibrant_fibrant_replacement_closed_from_evidence (M : ModelCategoryPackage)
    (C : CofibrantFibrantReplacementPackage M) (E : CofibrantFibrantReplacementEvidence M C) :
    CofibrantFibrantReplacementClosed M C := by
  exact And.intro E.cofibrantInclusionAcyclicCofibrationClosed
    (And.intro E.fibrantProjectionAcyclicFibrationClosed
      (And.intro E.cofibrantObjectClosed E.fibrantObjectClosed))

end CategoryTheoryModelCategoriesCanonicalLaneLean
end HautevilleHouse