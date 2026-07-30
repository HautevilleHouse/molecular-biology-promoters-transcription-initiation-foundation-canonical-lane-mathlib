import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyPromotersTranscriptionInitiationFoundationCanonicalLaneLean

structure TfiidAssemblyPackage where
  tbpBinding : Prop
  tafBinding : Prop
  basalFactorRecruitment : Prop
  tbpBindingConfirmed : tbpBinding
  tafBindingConfirmed : tafBinding
  basalFactorRecruitmentConfirmed : basalFactorRecruitment

structure TfiidAssemblyEvidence (A : TfiidAssemblyPackage) where
  tbpBindingClosed : A.tbpBinding
  tafBindingClosed : A.tafBinding
  basalFactorRecruitmentClosed : A.basalFactorRecruitment

def TfiidAssemblyClosed (A : TfiidAssemblyPackage) : Prop :=
  A.tbpBinding ∧ A.tafBinding ∧ A.basalFactorRecruitment

theorem tfiid_assembly_closed_from_evidence (A : TfiidAssemblyPackage)
    (E : TfiidAssemblyEvidence A) : TfiidAssemblyClosed A := by
  exact And.intro E.tbpBindingClosed (
    And.intro E.tafBindingClosed E.basalFactorRecruitmentClosed)

end MolecularBiologyPromotersTranscriptionInitiationFoundationCanonicalLaneLean
end HautevilleHouse