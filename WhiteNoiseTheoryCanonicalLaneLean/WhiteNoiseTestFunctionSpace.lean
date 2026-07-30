import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace WhiteNoiseTheoryCanonicalLaneLean

structure WhiteNoiseTestFunctionSpace where
  testFunctionType : Type u
  topology : TopologicalSpace testFunctionType
  nuclearSpaceStructure : Prop
  schwartzTopologyDefined : Prop
  nuclearSpaceStructureTerm : nuclearSpaceStructure
  schwartzTopologyDefinedTerm : schwartzTopologyDefined

structure WhiteNoiseTestFunctionSpaceEvidence (W : WhiteNoiseTestFunctionSpace) where
  nuclearSpaceStructureClosed : W.nuclearSpaceStructure
  schwartzTopologyDefinedClosed : W.schwartzTopologyDefined

def WhiteNoiseTestFunctionSpaceClosed (W : WhiteNoiseTestFunctionSpace) : Prop :=
  W.nuclearSpaceStructure ∧ W.schwartzTopologyDefined

theorem white_noise_test_function_space_closed_from_evidence
    (W : WhiteNoiseTestFunctionSpace) (E : WhiteNoiseTestFunctionSpaceEvidence W) :
    WhiteNoiseTestFunctionSpaceClosed W := by
  exact And.intro E.nuclearSpaceStructureClosed E.schwartzTopologyDefinedClosed

end HautevilleHouse
end HautevilleHouse
