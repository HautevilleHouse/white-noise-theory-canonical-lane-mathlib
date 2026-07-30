import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace WhiteNoiseTheoryCanonicalLaneLean

structure HidaCalculusPackage where
  testFunctionSpace : Type u
  distributionSpace : Type v
  sTransformDefined : Prop
  sTransformInjective : Prop

def HidaCalculusClosed (H : HidaCalculusPackage) : Prop :=
  H.sTransformDefined ∧ H.sTransformInjective

structure HidaCalculusEvidence (H : HidaCalculusPackage) where
  sTransformDefinedClosed : H.sTransformDefined
  sTransformInjectiveClosed : H.sTransformInjective

theorem hida_calculus_closed_from_evidence
    (H : HidaCalculusPackage) (E : HidaCalculusEvidence H) :
    HidaCalculusClosed H := by
  exact And.intro E.sTransformDefinedClosed E.sTransformInjectiveClosed

end WhiteNoiseTheoryCanonicalLaneLean
end HautevilleHouse