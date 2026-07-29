import HautevilleHouse.CategoryTheoryModelCategoriesCanonicalLaneLean.ModelCategoriesBridgeLemmas

namespace HautevilleHouse
namespace CategoryTheoryModelCategoriesCanonicalLaneLean

def gateClosed (A : AdmissibleModelCategory) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : AdmissibleModelCategory) : gateClosed A :=
  by
    exact A.gateWitness

end CategoryTheoryModelCategoriesCanonicalLaneLean
end HautevilleHouse