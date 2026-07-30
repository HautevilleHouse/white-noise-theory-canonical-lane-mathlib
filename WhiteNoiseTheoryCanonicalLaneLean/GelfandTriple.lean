import HautevilleHouse.WhiteNoiseTheoryCanonicalLaneLean.RiemannianCurvature

/-!
# Gelfand Triple Package
-/

namespace HautevilleHouse
namespace WhiteNoiseTheoryCanonicalLaneLean

structure GelfandTriplePackage where
  H : Type u
  H_inner : InnerProductSpace ℝ H
  Phi : Type v
  Phi_sesquilinear : NormedSpace ℝ Phi
  iota : Phi → H
  iota_continuous : Continuous iota
  jota : H → (Dual ℝ Phi)
  jota_continuous : Continuous jota

def GelfandTripleClosed (G : GelfandTriplePackage) : Prop :=
  G.iota_continuous ∧ G.jota_continuous

end WhiteNoiseTheoryCanonicalLaneLean
end HautevilleHouse