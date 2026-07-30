import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyPromotersTranscriptionInitiationFoundationCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  TranscriptionWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end MolecularBiologyPromotersTranscriptionInitiationFoundationCanonicalLaneLean
end HautevilleHouse