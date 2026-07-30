import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace WhiteNoiseTheoryCanonicalLaneLean

structure ChaosDecompositionPackage (M : MinimalWhiteNoiseSpace) where
  multipleWienerIntegrals : Prop
  orthogonalDecomposition : Prop
  chaosExpansion : Prop
  multipleWienerIntegralsTerm : multipleWienerIntegrals
  orthogonalDecompositionTerm : orthogonalDecomposition
  chaosExpansionTerm : chaosExpansion

structure ChaosDecompositionEvidence {M : MinimalWhiteNoiseSpace}
    (C : ChaosDecompositionPackage M) where
  multipleWienerIntegralsClosed : C.multipleWienerIntegrals
  orthogonalDecompositionClosed : C.orthogonalDecomposition
  chaosExpansionClosed : C.chaosExpansion

def ChaosDecompositionClosed {M : MinimalWhiteNoiseSpace}
    (C : ChaosDecompositionPackage M) : Prop :=
  C.multipleWienerIntegrals ∧ C.orthogonalDecomposition ∧ C.chaosExpansion

theorem chaos_decomposition_closed_from_evidence
    {M : MinimalWhiteNoiseSpace} (C : ChaosDecompositionPackage M)
    (E : ChaosDecompositionEvidence C) : ChaosDecompositionClosed C := by
  exact And.intro E.multipleWienerIntegralsClosed
    (And.intro E.orthogonalDecompositionClosed E.chaosExpansionClosed)

end HautevilleHouse
end HautevilleHouse
