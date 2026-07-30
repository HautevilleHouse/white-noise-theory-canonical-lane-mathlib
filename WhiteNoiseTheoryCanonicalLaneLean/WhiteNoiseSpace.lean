import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace WhiteNoiseTheoryCanonicalLaneLean

structure WhiteNoiseSpace where
  H : Type u
  innerProduct : Inner ℝ H
  separable : Prop
  hilbertSchmidt : Prop

def WhiteNoiseHilbertSpaceClosed (W : WhiteNoiseSpace) : Prop :=
  W.separable ∧ W.hilbertSchmidt

structure WhiteNoiseSpaceEvidence (W : WhiteNoiseSpace) where
  separableClosed : W.separable
  hilbertSchmidtClosed : W.hilbertSchmidt

theorem white_noise_space_closed_from_evidence
    (W : WhiteNoiseSpace) (E : WhiteNoiseSpaceEvidence W) :
    WhiteNoiseHilbertSpaceClosed W := by
  exact And.intro E.separableClosed E.hilbertSchmidtClosed

end WhiteNoiseTheoryCanonicalLaneLean
end HautevilleHouse