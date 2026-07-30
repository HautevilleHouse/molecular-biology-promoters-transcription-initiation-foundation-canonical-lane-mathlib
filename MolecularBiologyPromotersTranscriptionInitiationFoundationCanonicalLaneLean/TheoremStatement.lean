import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyPromotersTranscriptionInitiationFoundationCanonicalLaneLean

structure TranscriptionAdmittedObject where
  promoterRegion : Type
  rnaPolymeraseBinding : Prop
  transcriptionInitiation : Prop
  conclusion : transcriptionInitiation

def TranscriptionWitnessClosed (O : TranscriptionAdmittedObject) : Prop :=
  O.transcriptionInitiation

end MolecularBiologyPromotersTranscriptionInitiationFoundationCanonicalLaneLean
end HautevilleHouse