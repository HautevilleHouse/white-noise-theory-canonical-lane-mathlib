import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace WhiteNoiseTheoryCanonicalLaneLean

structure GeneralizedProcessPackage where
  processSpace : Type u
  characteristicFunctionalDefined : Prop
  continuityInLaw : Prop
  concentrationProperty : Prop

def GeneralizedProcessClosed (G : GeneralizedProcessPackage) : Prop :=
  G.characteristicFunctionalDefined ∧ G.continuityInLaw ∧
  G.concentrationProperty

structure GeneralizedProcessEvidence (G : GeneralizedProcessPackage) where
  characteristicFunctionalDefinedClosed : G.characteristicFunctionalDefined
  continuityInLawClosed : G.continuityInLaw
  concentrationPropertyClosed : G.concentrationProperty

theorem generalized_process_closed_from_evidence
    (G : GeneralizedProcessPackage) (E : GeneralizedProcessEvidence G) :
    GeneralizedProcessClosed G := by
  exact And.intro E.characteristicFunctionalDefinedClosed
    (And.intro E.continuityInLawClosed E.concentrationPropertyClosed)

end WhiteNoiseTheoryCanonicalLaneLean
end HautevilleHouse