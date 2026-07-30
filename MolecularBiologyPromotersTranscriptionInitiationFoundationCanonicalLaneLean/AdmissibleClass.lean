import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyPromotersTranscriptionInitiationFoundationCanonicalLaneLean

structure AdmissibleClass where
  object : TranscriptionAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  TranscriptionWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end MolecularBiologyPromotersTranscriptionInitiationFoundationCanonicalLaneLean
end HautevilleHouse