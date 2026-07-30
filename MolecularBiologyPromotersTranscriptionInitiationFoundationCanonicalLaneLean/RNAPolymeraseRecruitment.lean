import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyPromotersTranscriptionInitiationFoundationCanonicalLaneLean

structure RNAPolymeraseRecruitmentPackage where
  rnaPolymeraseII : Type u
  preInitiationComplexAssembly : Prop
  mediatorBridging : Prop
  promoterOpening : Prop
  transcriptionInitiationCompetent : Prop

structure RNAPolymeraseRecruitmentEvidence (R : RNAPolymeraseRecruitmentPackage) where
  preInitiationComplexAssemblyClosed : R.preInitiationComplexAssembly
  mediatorBridgingClosed : R.mediatorBridging
  promoterOpeningClosed : R.promoterOpening
  transcriptionInitiationCompetentClosed : R.transcriptionInitiationCompetent

def RNAPolymeraseRecruitmentClosed (R : RNAPolymeraseRecruitmentPackage) : Prop :=
  R.preInitiationComplexAssembly ∧ R.mediatorBridging ∧ R.promoterOpening ∧ R.transcriptionInitiationCompetent

theorem rna_polymerase_recruitment_closed_from_evidence (R : RNAPolymeraseRecruitmentPackage) (E : RNAPolymeraseRecruitmentEvidence R) : RNAPolymeraseRecruitmentClosed R := by
  exact And.intro E.preInitiationComplexAssemblyClosed (And.intro E.mediatorBridgingClosed (And.intro E.promoterOpeningClosed E.transcriptionInitiationCompetentClosed))

end MolecularBiologyPromotersTranscriptionInitiationFoundationCanonicalLaneLean
end HautevilleHouse