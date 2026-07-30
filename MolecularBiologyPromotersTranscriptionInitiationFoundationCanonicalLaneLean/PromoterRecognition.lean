import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyPromotersTranscriptionInitiationFoundationCanonicalLaneLean

structure PromoterRecognitionPackage where
  sigmaFactor : String
  promoterDNA : String
  recognitionDomains : List String
  bindingAffinity : Prop

structure PromoterRecognitionEvidence (P : PromoterRecognitionPackage) where
  bindingAffinityClosed : P.bindingAffinity

def PromoterRecognitionClosed (P : PromoterRecognitionPackage) : Prop :=
  P.bindingAffinity

theorem promoter_recognition_closed_from_evidence
    (P : PromoterRecognitionPackage) (E : PromoterRecognitionEvidence P) :
    PromoterRecognitionClosed P := by
  exact E.bindingAffinityClosed

end MolecularBiologyPromotersTranscriptionInitiationFoundationCanonicalLaneLean
end HautevilleHouse