import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoryTheoryModelCategoriesCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  (by
    have : A.object isCategoryAndModel := sorry
    exact this)

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end HautevilleHouse
end CategoryTheoryModelCategoriesCanonicalLaneLean