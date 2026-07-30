import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace WhiteNoiseTheoryCanonicalLaneLean

structure WienerItoChaosPackage where
  chaosDecomposition : Prop
  multipleIntegralsDefined : Prop
  isometryProperty : Prop
  orthogonality : Prop

def WienerItoChaosClosed (W : WienerItoChaosPackage) : Prop :=
  W.chaosDecomposition ∧ W.multipleIntegralsDefined ∧
  W.isometryProperty ∧ W.orthogonality

structure WienerItoChaosEvidence (W : WienerItoChaosPackage) where
  chaosDecompositionClosed : W.chaosDecomposition
  multipleIntegralsDefinedClosed : W.multipleIntegralsDefined
  isometryPropertyClosed : W.isometryProperty
  orthogonalityClosed : W.orthogonality

theorem wiener_ito_chaos_closed_from_evidence
    (W : WienerItoChaosPackage) (E : WienerItoChaosEvidence W) :
    WienerItoChaosClosed W := by
  exact And.intro E.chaosDecompositionClosed
    (And.intro E.multipleIntegralsDefinedClosed
      (And.intro E.isometryPropertyClosed E.orthogonalityClosed))

end WhiteNoiseTheoryCanonicalLaneLean
end HautevilleHouse