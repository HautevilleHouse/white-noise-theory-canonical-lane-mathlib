import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace WhiteNoiseTheoryCanonicalLaneLean

structure AdmissibleClass where
  object : WhiteNoiseAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  WhiteNoiseWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end WhiteNoiseTheoryCanonicalLaneLean
end HautevilleHouse
