import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace WhiteNoiseTheoryCanonicalLaneLean

structure KondratievSpacePackage {M : MinimalWhiteNoiseSpace}
    (C : ChaosDecompositionPackage M) where
  testFunctionSpace : WhiteNoiseTestFunctionSpace
  weightedHilbertNorms : Prop
  nuclearTripletStructure : Prop
  weightedHilbertNormsTerm : weightedHilbertNorms
  nuclearTripletStructureTerm : nuclearTripletStructure

structure KondratievSpaceEvidence {M : MinimalWhiteNoiseSpace}
    {C : ChaosDecompositionPackage M} (K : KondratievSpacePackage C) where
  weightedHilbertNormsClosed : K.weightedHilbertNorms
  nuclearTripletStructureClosed : K.nuclearTripletStructure

def KondratievSpaceClosed {M : MinimalWhiteNoiseSpace}
    {C : ChaosDecompositionPackage M} (K : KondratievSpacePackage C) : Prop :=
  K.weightedHilbertNorms ∧ K.nuclearTripletStructure

theorem kondratiev_space_closed_from_evidence
    {M : MinimalWhiteNoiseSpace} {C : ChaosDecompositionPackage M}
    (K : KondratievSpacePackage C) (E : KondratievSpaceEvidence K) :
    KondratievSpaceClosed K := by
  exact And.intro E.weightedHilbertNormsClosed E.nuclearTripletStructureClosed

end HautevilleHouse
end HautevilleHouse
