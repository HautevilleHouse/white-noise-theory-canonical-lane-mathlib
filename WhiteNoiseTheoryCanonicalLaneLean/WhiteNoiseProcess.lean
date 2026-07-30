import HautevilleHouse.WhiteNoiseTheoryCanonicalLaneLean.GelfandTriple

/-!
# White Noise Process Package
-/

namespace HautevilleHouse
namespace WhiteNoiseTheoryCanonicalLaneLean

structure WhiteNoiseProcessPackage (G : GelfandTriplePackage) where
  Omega : Type w
  probabilityMeasure : MeasureTheory.Measure Omega
  W : Omega → (G.H → ℝ)
  isGaussian : Prop
  covarianceStructure : Prop
  isGaussianClosed : isGaussian
  covarianceStructureClosed : covarianceStructure

def WhiteNoiseProcessClosed (G : GelfandTriplePackage) (W : WhiteNoiseProcessPackage G) : Prop :=
  W.isGaussian ∧ W.covarianceStructure

theorem white_noise_process_closed_from_evidence (G : GelfandTriplePackage) (W : WhiteNoiseProcessPackage G) :
    WhiteNoiseProcessClosed G W := by
  exact And.intro W.isGaussianClosed W.covarianceStructureClosed

end WhiteNoiseTheoryCanonicalLaneLean
end HautevilleHouse