import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyPromotersTranscriptionInitiationFoundationCanonicalLaneLean

structure PreInitiationComplexPackage where
  tataBindingProtein : String
  transcriptionFactorIID : String
  transcriptionFactorIIB : String
  transcriptionFactorIIF : String
  transcriptionFactorIIE : String
  transcriptionFactorIIH : String
  polymeraseII : String
  assembled : Prop

structure PreInitiationComplexEvidence (P : PreInitiationComplexPackage) where
  assembledClosed : P.assembled

def PreInitiationComplexClosed (P : PreInitiationComplexPackage) : Prop :=
  P.assembled

theorem pre_initiation_complex_closed_from_evidence
    (P : PreInitiationComplexPackage) (E : PreInitiationComplexEvidence P) :
    PreInitiationComplexClosed P := by
  exact E.assembledClosed

end MolecularBiologyPromotersTranscriptionInitiationFoundationCanonicalLaneLean
end HautevilleHouse