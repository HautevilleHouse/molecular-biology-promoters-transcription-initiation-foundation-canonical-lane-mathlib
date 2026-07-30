import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyPromotersTranscriptionInitiationFoundationCanonicalLaneLean

structure ElongationCommitment where
  RNAPolIIEscape : Prop
  promoterProximalPausing : Prop
  pauseRelease : Prop
  elongationComplexAssembled : Prop

structure ElongationCommitmentEvidence (E : ElongationCommitment) where
  RNAPolIIEscapeClosed : E.RNAPolIIEscape
  promoterProximalPausingClosed : E.promoterProximalPausing
  pauseReleaseClosed : E.pauseRelease
  elongationComplexAssembledClosed : E.elongationComplexAssembled

def ElongationCommitmentClosed (E : ElongationCommitment) : Prop :=
  E.RNAPolIIEscape ∧ E.promoterProximalPausing ∧ E.pauseRelease ∧ E.elongationComplexAssembled

theorem elongation_commitment_closed_from_evidence (E : ElongationCommitment) (Ev : ElongationCommitmentEvidence E) : ElongationCommitmentClosed E := by
  exact And.intro Ev.RNAPolIIEscapeClosed (And.intro Ev.promoterProximalPausingClosed (And.intro Ev.pauseReleaseClosed Ev.elongationComplexAssembledClosed))

end MolecularBiologyPromotersTranscriptionInitiationFoundationCanonicalLaneLean
end HautevilleHouse