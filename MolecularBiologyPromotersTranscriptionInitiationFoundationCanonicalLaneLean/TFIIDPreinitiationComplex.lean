import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyPromotersTranscriptionInitiationFoundationCanonicalLaneLean

structure TFIIDPreinitiationComplex where
  TBP : Type
  TAFs : Type
  promoterRecognition : Prop
  complexAssembly : Prop

structure TFIIDPreinitiationComplexEvidence (C : TFIIDPreinitiationComplex) where
  TBPBoundToTATA : C.TBP
  TAFsRecruitPolII : C.TAFs
  promoterRecognitionClosed : C.promoterRecognition
  complexAssemblyClosed : C.complexAssembly

def TFIIDPreinitiationComplexClosed (C : TFIIDPreinitiationComplex) : Prop :=
  C.TBP ∧ C.TAFs ∧ C.promoterRecognition ∧ C.complexAssembly

theorem tfiid_preinitiation_complex_closed_from_evidence (C : TFIIDPreinitiationComplex) (E : TFIIDPreinitiationComplexEvidence C) : TFIIDPreinitiationComplexClosed C := by
  exact And.intro E.TBPBoundToTATA (And.intro E.TAFsRecruitPolII (And.intro E.promoterRecognitionClosed E.complexAssemblyClosed))

end MolecularBiologyPromotersTranscriptionInitiationFoundationCanonicalLaneLean
end HautevilleHouse