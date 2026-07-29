import HautevilleHouse.CategoryTheoryModelCategoriesCanonicalLaneLean.FinalTheorem

namespace HautevilleHouse
namespace CategoryTheoryModelCategoriesCanonicalLaneLean

structure ModelCategoryTheoremStatement where
  sourceKey : String
  theoremName : String
  theoremObject : String
  classicalBoundary : String
  modelCategoryConstrainedStatement : String
  certificateLane : String
  carriedRemainder : String

def sourceModelCategoryTheoremStatement : ModelCategoryTheoremStatement :=
  { sourceKey := "category-theory-model-categories-canonical-lane",
    theoremName := "ModelCategoryAdjointQuillenEquivalence",
    theoremObject := "AdmissibleClass object with model categorical adjunction closure",
    classicalBoundary := "full Quillen adjunction equivalence between model categories",
    modelCategoryConstrainedStatement := "manifold-constrained theorem certificate internalized through baseline gates, source constants, reviewer bridge, manifest hashes, and outside-constant dependency count",
    certificateLane := "model_category_constrained",
    carriedRemainder := "classical source boundary carried by formalizationCertificate.theoremBoundaryOpen and sourceTheoremBoundary"
  }

end CategoryTheoryModelCategoriesCanonicalLaneLean
end HautevilleHouse