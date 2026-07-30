import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyPromotersTranscriptionInitiationFoundationCanonicalLaneLean

structure TranscriptionInitiationPackage where
  promoterSequence : String
  polymeraseType : String
  transcriptionFactors : List String
  initiationComplexFormed : Prop

structure TranscriptionInitiationEvidence (P : TranscriptionInitiationPackage) where
  initiationComplexFormedClosed : P.initiationComplexFormed

def TranscriptionInitiationClosed (P : TranscriptionInitiationPackage) : Prop :=
  P.initiationComplexFormed

theorem transcription_initiation_closed_from_evidence
    (P : TranscriptionInitiationPackage) (E : TranscriptionInitiationEvidence P) :
    TranscriptionInitiationClosed P := by
  exact E.initiationComplexFormedClosed

end MolecularBiologyPromotersTranscriptionInitiationFoundationCanonicalLaneLean
end HautevilleHouse