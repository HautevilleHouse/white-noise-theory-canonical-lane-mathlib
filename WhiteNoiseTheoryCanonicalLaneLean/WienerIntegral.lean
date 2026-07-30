import HautevilleHouse.WhiteNoiseTheoryCanonicalLaneLean.WhiteNoiseProcess

/-!
# Wiener Integral Package
-/

namespace HautevilleHouse
namespace WhiteNoiseTheoryCanonicalLaneLean

structure WienerIntegralPackage (G : GelfandTriplePackage) (W : WhiteNoiseProcessPackage G) where
  integrableFunctions : Set G.H
  integralMap : G.H → (W.Omega → ℝ)
  linearity : Prop
  isometry : Prop
  linearityClosed : linearity
  isometryClosed : isometry

def WienerIntegralClosed (G : GelfandTriplePackage) (W : WhiteNoiseProcessPackage G)
    (I : WienerIntegralPackage G W) : Prop :=
  I.linearity ∧ I.isometry

theorem wiener_integral_closed_from_evidence (G : GelfandTriplePackage) (W : WhiteNoiseProcessPackage G)
    (I : WienerIntegralPackage G W) (E : I.linearity ∧ I.isometry) : WienerIntegralClosed G W I := by
  exact E

end WhiteNoiseTheoryCanonicalLaneLean
end HautevilleHouse