import canonicalLaneMathlib.AdmissibleClass
import MolecularBiologyPromotersTranscriptionInitiationFoundationCanonicalLaneLean.PromoterSequenceElements

namespace HautevilleHouse
namespace MolecularBiologyPromotersTranscriptionInitiationFoundationCanonicalLaneLean

structure TranscriptionFactor where
  factorName : String
  dnaBindingDomain : String
  activationDomain : String

structure TranscriptionFactorBindingPackage (P : PromoterSequencePackage) where
  generalFactors : List TranscriptionFactor
  specificFactors : List TranscriptionFactor
  preinitiationComplexFormed : Prop
  tbpBinding : Prop
  tfiidBinding : Prop
  rnaPolymeraseRecruitment : Prop

structure TranscriptionFactorBindingEvidence {P : PromoterSequencePackage}
    (T : TranscriptionFactorBindingPackage P) where
  generalFactorsClosed : T.generalFactors.length > 0
  specificFactorsClosed : T.specificFactors.length ≥ 0
  preinitiationComplexFormedClosed : T.preinitiationComplexFormed
  tbpBindingClosed : T.tbpBinding
  tfiidBindingClosed : T.tfiidBinding
  rnaPolymeraseRecruitmentClosed : T.rnaPolymeraseRecruitment

def TranscriptionFactorBindingClosed {P : PromoterSequencePackage}
    (T : TranscriptionFactorBindingPackage P) : Prop :=
  T.generalFactors.length > 0 ∧
  T.specificFactors.length ≥ 0 ∧
  T.preinitiationComplexFormed ∧
  T.tbpBinding ∧
  T.tfiidBinding ∧
  T.rnaPolymeraseRecruitment

theorem transcription_factor_binding_closed_from_evidence
    {P : PromoterSequencePackage} (T : TranscriptionFactorBindingPackage P)
    (E : TranscriptionFactorBindingEvidence T) :
    TranscriptionFactorBindingClosed T := by
  exact And.intro E.generalFactorsClosed
    (And.intro E.specificFactorsClosed
      (And.intro E.preinitiationComplexFormedClosed
        (And.intro E.tbpBindingClosed
          (And.intro E.tfiidBindingClosed
            E.rnaPolymeraseRecruitmentClosed))))

end MolecularBiologyPromotersTranscriptionInitiationFoundationCanonicalLaneLean
end HautevilleHouse