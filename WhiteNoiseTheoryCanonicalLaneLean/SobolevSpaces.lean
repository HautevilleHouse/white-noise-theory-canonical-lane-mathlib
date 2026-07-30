import HautevilleHouse.WhiteNoiseTheoryCanonicalLaneLean.GelfandTriple

/-!
# Sobolev Spaces Package
-/

namespace HautevilleHouse
namespace WhiteNoiseTheoryCanonicalLaneLean

structure SobolevSpacesPackage (G : GelfandTriplePackage) where
  Hs : ℝ → Set G.H
  embeddingProperties : Prop
  dualityPairing : Prop
  embeddingPropertiesClosed : embeddingProperties
  dualityPairingClosed : dualityPairing

def SobolevSpacesClosed (G : GelfandTriplePackage) (S : SobolevSpacesPackage G) : Prop :=
  S.embeddingProperties ∧ S.dualityPairing

theorem sobolev_spaces_closed_from_evidence (G : GelfandTriplePackage) (S : SobolevSpacesPackage G) :
    SobolevSpacesClosed G S := by
  exact And.intro S.embeddingPropertiesClosed S.dualityPairingClosed

end WhiteNoiseTheoryCanonicalLaneLean
end HautevilleHouse