import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace WhiteNoiseTheoryCanonicalLaneLean

structure WienerItoIntegralPackage where
  integrandSpace : Type u
  integrator : Type v
  integralMap : integrandSpace → integrator → ℝ
  linearity : Prop
  isometry : Prop

structure WienerItoIntegralEvidence (I : WienerItoIntegralPackage) where
  linearityClosed : I.linearity
  isometryClosed : I.isometry

def WienerItoIntegralClosed (I : WienerItoIntegralPackage) : Prop :=
  I.linearity ∧ I.isometry

theorem wiener_ito_integral_closed_from_evidence
    (I : WienerItoIntegralPackage) (E : WienerItoIntegralEvidence I) :
    WienerItoIntegralClosed I := by
  exact And.intro E.linearityClosed E.isometryClosed

end WhiteNoiseTheoryCanonicalLaneLean
end HautevilleHouse