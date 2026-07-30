import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace WhiteNoiseTheoryCanonicalLaneLean

structure ForwardBackwardSDEPackage {W : WhiteNoiseSpace} {C : WienerItoChaosPackage W}
    {S : StochasticIntegrationPackage W C} {H : HidaCalculusPackage W C S} where
  forwardEquation : Prop
  backwardEquation : Prop
  existenceAndUniqueness : Prop
  comparisonPrinciple : Prop
  forwardEquationClosed : forwardEquation
  backwardEquationClosed : backwardEquation
  existenceAndUniquenessClosed : existenceAndUniqueness
  comparisonPrincipleClosed : comparisonPrinciple

structure ForwardBackwardSDEEvidence {W : WhiteNoiseSpace} {C : WienerItoChaosPackage W}
    {S : StochasticIntegrationPackage W C} {H : HidaCalculusPackage W C S}
    (F : ForwardBackwardSDEPackage W C S H) where
  forwardEquationClosed : F.forwardEquation
  backwardEquationClosed : F.backwardEquation
  existenceAndUniquenessClosed : F.existenceAndUniqueness
  comparisonPrincipleClosed : F.comparisonPrinciple

def ForwardBackwardSDEClosed {W : WhiteNoiseSpace} {C : WienerItoChaosPackage W}
    {S : StochasticIntegrationPackage W C} {H : HidaCalculusPackage W C S}
    (F : ForwardBackwardSDEPackage W C S H) : Prop :=
  F.forwardEquation ∧ F.backwardEquation ∧ F.existenceAndUniqueness ∧ F.comparisonPrinciple

theorem forward_backward_sde_closed_from_evidence {W : WhiteNoiseSpace} {C : WienerItoChaosPackage W}
    {S : StochasticIntegrationPackage W C} {H : HidaCalculusPackage W C S}
    (F : ForwardBackwardSDEPackage W C S H) (E : ForwardBackwardSDEEvidence F) :
    ForwardBackwardSDEClosed F := by
  exact And.intro E.forwardEquationClosed
    (And.intro E.backwardEquationClosed
      (And.intro E.existenceAndUniquenessClosed E.comparisonPrincipleClosed))

end WhiteNoiseTheoryCanonicalLaneLean
end HautevilleHouse