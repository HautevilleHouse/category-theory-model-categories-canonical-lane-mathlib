import CategoryTheoryModelCategoriesCanonicalLaneLean.TheoremStatement
import CanonicalLaneMathlibCore

namespace HautevilleHouse
namespace CategoryTheoryModelCategoriesCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

structure CatSpace where
  carrier : Type
  categoryStructure : Prop

structure CatAdmittedObject where
  space : CatSpace
  modelCategory : Prop
  cofibrantlyGenerated : Prop
  fibrantObject : Type
  trivialFibration : Prop
  conclusion : trivialFibration

structure CatEndgameState where
  object : CatAdmittedObject

def CatWitnessClosed (O : CatAdmittedObject) : Prop :=
  O.trivialFibration

end CategoryTheoryModelCategoriesCanonicalLaneLean
end HautevilleHouse