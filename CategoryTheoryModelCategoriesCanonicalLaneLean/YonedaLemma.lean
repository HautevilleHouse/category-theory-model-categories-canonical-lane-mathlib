import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoryTheoryModelCategoriesCanonicalLaneLean

structure YonedaLemmaPackage where
  sourceCategory : Type u
  targetCategory : Type v
  functorCategory : Type w
  yonedaEmbedding : Type
  naturalIsomorphism : Prop
  fullFaithfulness : Prop
  sourceCategoryTerm : sourceCategory
  fullFaithfulnessTerm : fullFaithfulness

structure YonedaLemmaEvidence (Y : YonedaLemmaPackage) where
  naturalIsomorphismClosed : Y.naturalIsomorphism
  fullFaithfulnessClosed : Y.fullFaithfulness

def YonedaLemmaClosed (Y : YonedaLemmaPackage) : Prop :=
  Y.naturalIsomorphism ∧ Y.fullFaithfulness

theorem yoneda_lemma_closed_from_evidence (Y : YonedaLemmaPackage) (E : YonedaLemmaEvidence Y) :
    YonedaLemmaClosed Y := by
  exact And.intro E.naturalIsomorphismClosed E.fullFaithfulnessClosed

end HautevilleHouse
end CategoryTheoryModelCategoriesCanonicalLaneLean