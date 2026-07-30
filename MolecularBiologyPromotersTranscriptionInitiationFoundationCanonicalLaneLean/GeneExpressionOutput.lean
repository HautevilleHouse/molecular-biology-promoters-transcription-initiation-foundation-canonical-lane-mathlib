import canonicalLaneMathlib.AdmissibleClass
import MolecularBiologyPromotersTranscriptionInitiationFoundationCanonicalLaneLean.RegulatoryInteractions

namespace HautevilleHouse
namespace MolecularBiologyPromotersTranscriptionInitiationFoundationCanonicalLaneLean

structure GeneExpressionOutputPackage {P : PromoterSequencePackage}
    {T : TranscriptionFactorBindingPackage P} {C : ChromatinRemodelingPackage}
    {I : TranscriptionInitiationPackage P T C}
    {R : RegulatoryInteractionsPackage P T C I} where
  transcriptionRate : Nat
  mrnaStability : Prop
  translationEfficiency : Prop
  feedbackLoops : List String

structure GeneExpressionOutputEvidence {P : PromoterSequencePackage}
    {T : TranscriptionFactorBindingPackage P} {C : ChromatinRemodelingPackage}
    {I : TranscriptionInitiationPackage P T C}
    {R : RegulatoryInteractionsPackage P T C I}
    (O : GeneExpressionOutputPackage P T C I R) where
  transcriptionRateClosed : O.transcriptionRate > 0
  mrnaStabilityClosed : O.mrnaStability
  translationEfficiencyClosed : O.translationEfficiency
  feedbackLoopsClosed : O.feedbackLoops.length > 0

def GeneExpressionOutputClosed {P : PromoterSequencePackage}
    {T : TranscriptionFactorBindingPackage P} {C : ChromatinRemodelingPackage}
    {I : TranscriptionInitiationPackage P T C}
    {R : RegulatoryInteractionsPackage P T C I}
    (O : GeneExpressionOutputPackage P T C I R) : Prop :=
  O.transcriptionRate > 0 ∧
  O.mrnaStability ∧
  O.translationEfficiency ∧
  O.feedbackLoops.length > 0

theorem gene_expression_output_closed_from_evidence
    {P : PromoterSequencePackage} {T : TranscriptionFactorBindingPackage P}
    {C : ChromatinRemodelingPackage} {I : TranscriptionInitiationPackage P T C}
    {R : RegulatoryInteractionsPackage P T C I}
    (O : GeneExpressionOutputPackage P T C I R)
    (E : GeneExpressionOutputEvidence O) : GeneExpressionOutputClosed O := by
  exact And.intro E.transcriptionRateClosed
    (And.intro E.mrnaStabilityClosed
      (And.intro E.translationEfficiencyClosed E.feedbackLoopsClosed))

end MolecularBiologyPromotersTranscriptionInitiationFoundationCanonicalLaneLean
end HautevilleHouse