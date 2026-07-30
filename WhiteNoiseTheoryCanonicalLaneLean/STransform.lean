import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace WhiteNoiseTheoryCanonicalLaneLean

structure S_TransformPackage {M : MinimalWhiteNoiseSpace}
    {C : ChaosDecompositionPackage M} {K : KondratievSpacePackage C} where
  sTransformDefined : Prop
  analyticContinuation : Prop
  characterizationTheorem : Prop
  sTransformDefinedTerm : sTransformDefined
  analyticContinuationTerm : analyticContinuation
  characterizationTheoremTerm : characterizationTheorem

structure S_TransformEvidence {M : MinimalWhiteNoiseSpace}
    {C : ChaosDecompositionPackage M} {K : KondratievSpacePackage C}
    (S : S_TransformPackage M C K) where
  sTransformDefinedClosed : S.sTransformDefined
  analyticContinuationClosed : S.analyticContinuation
  characterizationTheoremClosed : S.characterizationTheorem

def S_TransformClosed {M : MinimalWhiteNoiseSpace}
    {C : ChaosDecompositionPackage M} {K : KondratievSpacePackage C}
    (S : S_TransformPackage M C K) : Prop :=
  S.sTransformDefined ∧ S.analyticContinuation ∧ S.characterizationTheorem

theorem s_transform_closed_from_evidence
    {M : MinimalWhiteNoiseSpace} {C : ChaosDecompositionPackage M}
    {K : KondratievSpacePackage C} (S : S_TransformPackage M C K)
    (E : S_TransformEvidence S) : S_TransformClosed S := by
  exact And.intro E.sTransformDefinedClosed
    (And.intro E.analyticContinuationClosed E.characterizationTheoremClosed)

end HautevilleHouse
end HautevilleHouse
