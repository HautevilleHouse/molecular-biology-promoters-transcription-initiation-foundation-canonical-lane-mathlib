import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyPromotersTranscriptionInitiationFoundationCanonicalLaneLean

structure ClosedComplexFormation where
  promoterMelting : Prop
  openComplexTransition : Prop
  RNAPolIILoaded : Prop
  transcriptionBubbleFormed : Prop

structure ClosedComplexFormationEvidence (C : ClosedComplexFormation) where
  promoterMeltingClosed : C.promoterMelting
  openComplexTransitionClosed : C.openComplexTransition
  RNAPolIILoadedClosed : C.RNAPolIILoaded
  transcriptionBubbleFormedClosed : C.transcriptionBubbleFormed

def ClosedComplexFormationClosed (C : ClosedComplexFormation) : Prop :=
  C.promoterMelting ∧ C.openComplexTransition ∧ C.RNAPolIILoaded ∧ C.transcriptionBubbleFormed

theorem closed_complex_formation_closed_from_evidence (C : ClosedComplexFormation) (E : ClosedComplexFormationEvidence C) : ClosedComplexFormationClosed C := by
  exact And.intro E.promoterMeltingClosed (And.intro E.openComplexTransitionClosed (And.intro E.RNAPolIILoadedClosed E.transcriptionBubbleFormedClosed))

end MolecularBiologyPromotersTranscriptionInitiationFoundationCanonicalLaneLean
end HautevilleHouse