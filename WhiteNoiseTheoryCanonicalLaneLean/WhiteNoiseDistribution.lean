import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace WhiteNoiseTheoryCanonicalLaneLean

structure WhiteNoiseDistributionPackage where
  testFunctionSpace : Type u
  dualSpace : Type v
  characteristicFunctional : (testFunctionSpace → ℝ) → ℂ
  continuity : Prop
  positiveDefiniteness : Prop

structure WhiteNoiseDistributionEvidence (D : WhiteNoiseDistributionPackage) where
  continuityClosed : D.continuity
  positiveDefinitenessClosed : D.positiveDefiniteness

def WhiteNoiseDistributionClosed (D : WhiteNoiseDistributionPackage) : Prop :=
  D.continuity ∧ D.positiveDefiniteness

theorem white_noise_distribution_closed_from_evidence
    (D : WhiteNoiseDistributionPackage) (E : WhiteNoiseDistributionEvidence D) :
    WhiteNoiseDistributionClosed D := by
  exact And.intro E.continuityClosed E.positiveDefinitenessClosed

end WhiteNoiseTheoryCanonicalLaneLean
end HautevilleHouse