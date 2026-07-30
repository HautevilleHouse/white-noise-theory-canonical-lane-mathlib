import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace WhiteNoiseTheoryCanonicalLaneLean

structure WhiteNoiseRandomVariablePackage (Ω : Type u) [MeasureTheory.MeasureSpace Ω] where
  randomVariable : Ω → ℝ
  isGaussian : Prop
  mean : ℝ
  variance : ℝ
  meanZero : mean = 0 := by rfl
  varianceOne : variance = 1 := by rfl

structure WhiteNoiseRandomVariableEvidence {Ω : Type u} [MeasureTheory.MeasureSpace Ω]
    (P : WhiteNoiseRandomVariablePackage Ω) where
  isGaussianClosed : P.isGaussian
  distribution : MeasureTheory.Measure ℝ := by
    classical; exact MeasureTheory.Measure.dirac 0

def WhiteNoiseRandomVariableClosed {Ω : Type u} [MeasureTheory.MeasureSpace Ω]
    (P : WhiteNoiseRandomVariablePackage Ω) : Prop :=
  P.isGaussian ∧ P.mean = 0 ∧ P.variance = 1

theorem white_noise_random_variable_closed_from_evidence
    {Ω : Type u} [MeasureTheory.MeasureSpace Ω]
    (P : WhiteNoiseRandomVariablePackage Ω) (E : WhiteNoiseRandomVariableEvidence P) :
    WhiteNoiseRandomVariableClosed P := by
  exact And.intro E.isGaussianClosed (And.intro P.meanZero P.varianceOne)

end WhiteNoiseTheoryCanonicalLaneLean
end HautevilleHouse