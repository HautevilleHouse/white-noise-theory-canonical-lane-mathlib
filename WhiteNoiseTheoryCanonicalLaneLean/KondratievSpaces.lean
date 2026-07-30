import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace WhiteNoiseTheoryCanonicalLaneLean

structure KondratievSpacePackage where
  weightFunction : Type u
  growthCondition : Prop
  analyticityCondition : Prop
  dualPairingDefined : Prop

def KondratievSpaceClosed (K : KondratievSpacePackage) : Prop :=
  K.growthCondition ∧ K.analyticityCondition ∧ K.dualPairingDefined

structure KondratievSpaceEvidence (K : KondratievSpacePackage) where
  growthConditionClosed : K.growthCondition
  analyticityConditionClosed : K.analyticityCondition
  dualPairingDefinedClosed : K.dualPairingDefined

theorem kondratiev_space_closed_from_evidence
    (K : KondratievSpacePackage) (E : KondratievSpaceEvidence K) :
    KondratievSpaceClosed K := by
  exact And.intro E.growthConditionClosed
    (And.intro E.analyticityConditionClosed E.dualPairingDefinedClosed)

end WhiteNoiseTheoryCanonicalLaneLean
end HautevilleHouse