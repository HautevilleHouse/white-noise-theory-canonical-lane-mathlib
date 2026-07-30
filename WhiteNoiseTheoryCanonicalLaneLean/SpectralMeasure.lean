import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace WhiteNoiseTheoryCanonicalLaneLean

structure SpectralMeasurePackage where
  measureSpace : Type u
  sigmaFinite : Prop
  spectralMeasure : measureSpace → MeasureTheory.Measure ℝ
  fourierTransformDefined : Prop

structure SpectralMeasureEvidence (S : SpectralMeasurePackage) where
  sigmaFiniteClosed : S.sigmaFinite
  fourierTransformDefinedClosed : S.fourierTransformDefined

def SpectralMeasureClosed (S : SpectralMeasurePackage) : Prop :=
  S.sigmaFinite ∧ S.fourierTransformDefined

theorem spectral_measure_closed_from_evidence
    (S : SpectralMeasurePackage) (E : SpectralMeasureEvidence S) :
    SpectralMeasureClosed S := by
  exact And.intro E.sigmaFiniteClosed E.fourierTransformDefinedClosed

end WhiteNoiseTheoryCanonicalLaneLean
end HautevilleHouse