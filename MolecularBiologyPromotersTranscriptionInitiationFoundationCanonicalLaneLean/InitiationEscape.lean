import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyPromotersTranscriptionInitiationFoundationCanonicalLaneLean

structure InitiationEscapePackage where
  abortiveInitiation : Prop
  promoterClearance : Prop
  elongationCommitment : Prop
  abortiveInitiationConfirmed : abortiveInitiation
  promoterClearanceConfirmed : promoterClearance
  elongationCommitmentConfirmed : elongationCommitment

structure InitiationEscapeEvidence (E : InitiationEscapePackage) where
  abortiveInitiationClosed : E.abortiveInitiation
  promoterClearanceClosed : E.promoterClearance
  elongationCommitmentClosed : E.elongationCommitment

def InitiationEscapeClosed (E : InitiationEscapePackage) : Prop :=
  E.abortiveInitiation ∧ E.promoterClearance ∧ E.elongationCommitment

theorem initiation_escape_closed_from_evidence (E : InitiationEscapePackage)
    (Ev : InitiationEscapeEvidence E) : InitiationEscapeClosed E := by
  exact And.intro Ev.abortiveInitiationClosed (
    And.intro Ev.promoterClearanceClosed Ev.elongationCommitmentClosed)

end MolecularBiologyPromotersTranscriptionInitiationFoundationCanonicalLaneLean
end HautevilleHouse