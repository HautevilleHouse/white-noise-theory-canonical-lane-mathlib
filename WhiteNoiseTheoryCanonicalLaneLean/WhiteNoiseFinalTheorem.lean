import canonicalLaneMathlib.AdmissibleClass
import WhiteNoiseTheoryCanonicalLaneLean.S_Transform

namespace HautevilleHouse
namespace WhiteNoiseTheoryCanonicalLaneLean

def ConstrainedWhiteNoiseClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_white_noise_endgame (A : AdmissibleClass) :
    ConstrainedWhiteNoiseClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end HautevilleHouse
end HautevilleHouse
