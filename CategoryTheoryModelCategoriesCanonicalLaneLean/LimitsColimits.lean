import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoryTheoryModelCategoriesCanonicalLaneLean

structure LimitsColimitsPackage where
  diagram : Type
  cone : Type
  limit : Type
  cocone : Type
  colimit : Type
  limitUniversal : Prop
  colimitUniversal : Prop
  limitExistence : Prop
  colimitExistence : Prop

structure LimitsColimitsEvidence (L : LimitsColimitsPackage) where
  limitUniversalClosed : L.limitUniversal
  colimitUniversalClosed : L.colimitUniversal
  limitExistenceClosed : L.limitExistence
  colimitExistenceClosed : L.colimitExistence

def LimitsColimitsClosed (L : LimitsColimitsPackage) : Prop :=
  L.limitUniversal ∧ L.colimitUniversal ∧ L.limitExistence ∧ L.colimitExistence

theorem limits_colimits_closed_from_evidence (L : LimitsColimitsPackage)
    (E : LimitsColimitsEvidence L) : LimitsColimitsClosed L := by
  exact And.intro E.limitUniversalClosed
    (And.intro E.colimitUniversalClosed
      (And.intro E.limitExistenceClosed E.colimitExistenceClosed))

end HautevilleHouse
end CategoryTheoryModelCategoriesCanonicalLaneLean