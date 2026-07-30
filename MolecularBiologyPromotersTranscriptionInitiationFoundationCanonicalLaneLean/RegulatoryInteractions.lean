import canonicalLaneMathlib.AdmissibleClass
import MolecularBiologyPromotersTranscriptionInitiationFoundationCanonicalLaneLean.TranscriptionInitiation

namespace HautevilleHouse
namespace MolecularBiologyPromotersTranscriptionInitiationFoundationCanonicalLaneLean

structure EnhancerElement where
  elementName : String
  bindingFactor : String
  distanceToTSS : Nat

structure SilencerElement where
  elementName : String
  bindingFactor : String
  distanceToTSS : Nat

structure RegulatoryInteractionsPackage {P : PromoterSequencePackage}
    {T : TranscriptionFactorBindingPackage P} {C : ChromatinRemodelingPackage}
    {I : TranscriptionInitiationPackage P T C} where
  enhancers : List EnhancerElement
  silencers : List SilencerElement
  insulatorElements : List String
  loopingMediated : Prop
  enhancerBlocking : Prop

structure RegulatoryInteractionsEvidence {P : PromoterSequencePackage}
    {T : TranscriptionFactorBindingPackage P} {C : ChromatinRemodelingPackage}
    {I : TranscriptionInitiationPackage P T C}
    (R : RegulatoryInteractionsPackage P T C I) where
  enhancersClosed : R.enhancers.length > 0
  silencersClosed : R.silencers.length ≥ 0
  insulatorElementsClosed : R.insulatorElements.length ≥ 0
  loopingMediatedClosed : R.loopingMediated
  enhancerBlockingClosed : R.enhancerBlocking

def RegulatoryInteractionsClosed {P : PromoterSequencePackage}
    {T : TranscriptionFactorBindingPackage P} {C : ChromatinRemodelingPackage}
    {I : TranscriptionInitiationPackage P T C}
    (R : RegulatoryInteractionsPackage P T C I) : Prop :=
  R.enhancers.length > 0 ∧
  R.silencers.length ≥ 0 ∧
  R.insulatorElements.length ≥ 0 ∧
  R.loopingMediated ∧
  R.enhancerBlocking

theorem regulatory_interactions_closed_from_evidence
    {P : PromoterSequencePackage} {T : TranscriptionFactorBindingPackage P}
    {C : ChromatinRemodelingPackage} {I : TranscriptionInitiationPackage P T C}
    (R : RegulatoryInteractionsPackage P T C I)
    (E : RegulatoryInteractionsEvidence R) : RegulatoryInteractionsClosed R := by
  exact And.intro E.enhancersClosed
    (And.intro E.silencersClosed
      (And.intro E.insulatorElementsClosed
        (And.intro E.loopingMediatedClosed E.enhancerBlockingClosed)))

end MolecularBiologyPromotersTranscriptionInitiationFoundationCanonicalLaneLean
end HautevilleHouse