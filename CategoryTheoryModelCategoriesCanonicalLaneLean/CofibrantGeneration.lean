import CategoryTheoryModelCategoriesCanonicalLaneLean.ModelCategoryDefinitions

namespace HautevilleHouse
namespace CategoryTheoryModelCategoriesCanonicalLaneLean

structure CofibrantGenerationPackage {M : ModelCategoryPackage} (E : ModelCategoryEvidence M) where
  generatingCofibrations : Prop
  generatingAcyclicCofibrations : Prop
  smallObjectArgument : Prop
  cofibrantObjectsCharacterized : Prop

structure CofibrantGenerationEvidence {M : ModelCategoryPackage} {E : ModelCategoryEvidence M}
    (G : CofibrantGenerationPackage E) where
  generatingCofibrationsClosed : G.generatingCofibrations
  generatingAcyclicCofibrationsClosed : G.generatingAcyclicCofibrations
  smallObjectArgumentClosed : G.smallObjectArgument
  cofibrantObjectsCharacterizedClosed : G.cofibrantObjectsCharacterized

def CofibrantGenerationClosed {M : ModelCategoryPackage} {E : ModelCategoryEvidence M}
    (G : CofibrantGenerationPackage E) : Prop :=
  G.generatingCofibrations ∧ G.generatingAcyclicCofibrations ∧
  G.smallObjectArgument ∧ G.cofibrantObjectsCharacterized

theorem cofibrant_generation_closed_from_evidence
    {M : ModelCategoryPackage} {E : ModelCategoryEvidence M}
    (G : CofibrantGenerationPackage E) (Ev : CofibrantGenerationEvidence G) :
    CofibrantGenerationClosed G := by
  exact And.intro Ev.generatingCofibrationsClosed
    (And.intro Ev.generatingAcyclicCofibrationsClosed
      (And.intro Ev.smallObjectArgumentClosed Ev.cofibrantObjectsCharacterizedClosed))

end CategoryTheoryModelCategoriesCanonicalLaneLean
end HautevilleHouse