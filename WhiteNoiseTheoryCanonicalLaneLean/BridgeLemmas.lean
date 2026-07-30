import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace WhiteNoiseTheoryCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  WhiteNoiseWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end WhiteNoiseTheoryCanonicalLaneLean
end HautevilleHouse
