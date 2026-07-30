import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace WhiteNoiseTheoryCanonicalLaneLean

structure MinimalWhiteNoiseSpace where
  underlyingTestSpace : WhiteNoiseTestFunctionSpace
  measure : Type v
  gaussianMeasureDefined : Prop
  whiteNoiseProcessDefined : Prop
  gaussianMeasureDefinedTerm : gaussianMeasureDefined
  whiteNoiseProcessDefinedTerm : whiteNoiseProcessDefined

structure MinimalWhiteNoiseSpaceEvidence (M : MinimalWhiteNoiseSpace) where
  gaussianMeasureDefinedClosed : M.gaussianMeasureDefined
  whiteNoiseProcessDefinedClosed : M.whiteNoiseProcessDefined

def MinimalWhiteNoiseSpaceClosed (M : MinimalWhiteNoiseSpace) : Prop :=
  M.gaussianMeasureDefined ∧ M.whiteNoiseProcessDefined

theorem minimal_white_noise_space_closed_from_evidence
    (M : MinimalWhiteNoiseSpace) (E : MinimalWhiteNoiseSpaceEvidence M) :
    MinimalWhiteNoiseSpaceClosed M := by
  exact And.intro E.gaussianMeasureDefinedClosed E.whiteNoiseProcessDefinedClosed

end HautevilleHouse
end HautevilleHouse
