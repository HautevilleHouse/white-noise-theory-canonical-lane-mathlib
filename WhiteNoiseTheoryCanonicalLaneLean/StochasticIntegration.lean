import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace WhiteNoiseTheoryCanonicalLaneLean

structure StochasticIntegrationPackage {W : WhiteNoiseSpace} {C : WienerItoChaosPackage W} where
  integrandSpace : Type u
  itoIntegralDefined : W.whiteNoiseMeasure → (integrandSpace → ℝ) → ℝ
  isometryProperty : Prop
  nonanticipating : Prop
  stochasticFubini : Prop
  isometryPropertyClosed : isometryProperty
  nonanticipatingClosed : nonanticipating
  stochasticFubiniClosed : stochasticFubini

structure StochasticIntegrationEvidence {W : WhiteNoiseSpace} {C : WienerItoChaosPackage W}
    (S : StochasticIntegrationPackage W C) where
  isometryPropertyClosed : S.isometryProperty
  nonanticipatingClosed : S.nonanticipating
  stochasticFubiniClosed : S.stochasticFubini

def StochasticIntegrationClosed {W : WhiteNoiseSpace} {C : WienerItoChaosPackage W}
    (S : StochasticIntegrationPackage W C) : Prop :=
  S.isometryProperty ∧ S.nonanticipating ∧ S.stochasticFubini

theorem stochastic_integration_closed_from_evidence {W : WhiteNoiseSpace} {C : WienerItoChaosPackage W}
    (S : StochasticIntegrationPackage W C) (E : StochasticIntegrationEvidence S) :
    StochasticIntegrationClosed S := by
  exact And.intro E.isometryPropertyClosed
    (And.intro E.nonanticipatingClosed E.stochasticFubiniClosed)

end WhiteNoiseTheoryCanonicalLaneLean
end HautevilleHouse