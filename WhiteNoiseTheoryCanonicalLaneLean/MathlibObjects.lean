import HautevilleHouse.WhiteNoiseTheoryCanonicalLaneLean.TheoremStatement

namespace HautevilleHouse
namespace WhiteNoiseTheoryCanonicalLaneLean

structure WhiteNoiseSpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure WhiteNoiseAdmittedObject where
  space : WhiteNoiseSpace
  gelfandTripleExists : Prop
  whiteNoiseProcessExists : Prop
  wienerIntegralDefined : Prop
  conclusion : gelfandTripleExists ∧ whiteNoiseProcessExists ∧ wienerIntegralDefined

def WhiteNoiseWitnessClosed (O : WhiteNoiseAdmittedObject) : Prop :=
  O.gelfandTripleExists ∧ O.whiteNoiseProcessExists ∧ O.wienerIntegralDefined

end WhiteNoiseTheoryCanonicalLaneLean
end HautevilleHouse