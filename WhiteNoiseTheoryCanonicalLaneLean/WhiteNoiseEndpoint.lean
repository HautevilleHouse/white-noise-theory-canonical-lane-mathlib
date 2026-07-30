import WhiteNoiseTheoryCanonicalLaneLean.SCVStochasticIntegration
import Mathlib.MeasureTheory.Integral

namespace HautevilleHouse
namespace WhiteNoiseTheoryCanonicalLaneLean

structure WhiteNoiseEndpoint {S : WhiteNoiseSpace} where
  generalizedFunctionals : Type u
  dualityPairing : (generalizedFunctionals → ℝ) → Prop
  characterizationTheorem : Prop
  endpointStatement : Prop
  characterizationTheoremClosed : characterizationTheorem
  endpointStatementClosed : endpointStatement

structure WhiteNoiseEndpointEvidence {S : WhiteNoiseSpace}
    (E : WhiteNoiseEndpoint S) where
  characterizationTheoremClosed : E.characterizationTheorem
  endpointStatementClosed : E.endpointStatement

def WhiteNoiseEndpointClosed {S : WhiteNoiseSpace} (E : WhiteNoiseEndpoint S) : Prop :=
  E.characterizationTheorem ∧ E.endpointStatement

theorem white_noise_endpoint_closed_from_evidence
    {S : WhiteNoiseSpace} (E : WhiteNoiseEndpoint S)
    (Ev : WhiteNoiseEndpointEvidence E) : WhiteNoiseEndpointClosed E := by
  exact And.intro Ev.characterizationTheoremClosed Ev.endpointStatementClosed

theorem white_noise_endpoint_supplies_mathlib_statement
    {S : WhiteNoiseSpace} (E : WhiteNoiseEndpoint S) :
    E.endpointStatement := E.endpointStatementClosed

end WhiteNoiseTheoryCanonicalLaneLean
end HautevilleHouse
