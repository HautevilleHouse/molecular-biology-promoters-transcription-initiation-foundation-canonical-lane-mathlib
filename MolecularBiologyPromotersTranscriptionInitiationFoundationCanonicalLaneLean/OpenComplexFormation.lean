import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyPromotersTranscriptionInitiationFoundationCanonicalLaneLean

structure OpenComplexPackage where
  promoterMelting : Prop
  transcriptionBubble : Prop
  rnapBinding : Prop
  promoterMeltingConfirmed : promoterMelting
  transcriptionBubbleConfirmed : transcriptionBubble
  rnapBindingConfirmed : rnapBinding

structure OpenComplexEvidence (O : OpenComplexPackage) where
  promoterMeltingClosed : O.promoterMelting
  transcriptionBubbleClosed : O.transcriptionBubble
  rnapBindingClosed : O.rnapBinding

def OpenComplexClosed (O : OpenComplexPackage) : Prop :=
  O.promoterMelting ∧ O.transcriptionBubble ∧ O.rnapBinding

theorem open_complex_closed_from_evidence (O : OpenComplexPackage)
    (E : OpenComplexEvidence O) : OpenComplexClosed O := by
  exact And.intro E.promoterMeltingClosed (
    And.intro E.transcriptionBubbleClosed E.rnapBindingClosed)

end MolecularBiologyPromotersTranscriptionInitiationFoundationCanonicalLaneLean
end HautevilleHouse