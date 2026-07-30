import WhiteNoiseTheoryCanonicalLaneLean.WienerItoChaos

namespace HautevilleHouse
namespace WhiteNoiseTheoryCanonicalLaneLean

/-- Stochastic Calculus of Variations (Malliavin) integration structure. -/
structure SCVStochasticIntegration {S : WhiteNoiseSpace} where
  malliavinDerivative : Type u
  divergenceOperator : Type v
  ornsteinUhlenbeckOperator : Type w
  clarkOconeFormula : Prop
  poincareInequality : Prop
  clarkOconeFormulaClosed : clarkOconeFormula
  poincareInequalityClosed : poincareInequality

structure SCVStochasticIntegrationEvidence {S : WhiteNoiseSpace}
    (I : SCVStochasticIntegration S) where
  clarkOconeFormulaClosed : I.clarkOconeFormula
  poincareInequalityClosed : I.poincareInequality

def SCVStochasticIntegrationClosed {S : WhiteNoiseSpace}
    (I : SCVStochasticIntegration S) : Prop :=
  I.clarkOconeFormula ∧ I.poincareInequality

theorem scv_stochastic_integration_closed_from_evidence
    {S : WhiteNoiseSpace} (I : SCVStochasticIntegration S)
    (E : SCVStochasticIntegrationEvidence I) : SCVStochasticIntegrationClosed I := by
  exact And.intro E.clarkOconeFormulaClosed E.poincareInequalityClosed

end WhiteNoiseTheoryCanonicalLaneLean
end HautevilleHouse
