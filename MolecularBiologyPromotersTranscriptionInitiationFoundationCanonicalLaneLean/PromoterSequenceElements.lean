import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyPromotersTranscriptionInitiationFoundationCanonicalLaneLean

structure PromoterSequenceElement where
  elementName : String
  consensusSequence : String
  positionRange : Nat × Nat
  bindingFactor : String

structure PromoterSequencePackage where
  corePromoterElements : List PromoterSequenceElement
  proximalElements : List PromoterSequenceElement
  distalElements : List PromoterSequenceElement
  tataBoxPresent : Prop
  initiatorElementPresent : Prop
  downstreamElementPresent : Prop

structure PromoterSequenceEvidence (P : PromoterSequencePackage) where
  corePromoterElementsClosed : P.corePromoterElements.length > 0
  proximalElementsClosed : P.proximalElements.length ≥ 0
  distalElementsClosed : P.distalElements.length ≥ 0
  tataBoxPresentClosed : P.tataBoxPresent
  initiatorElementPresentClosed : P.initiatorElementPresent
  downstreamElementPresentClosed : P.downstreamElementPresent

def PromoterSequenceClosed (P : PromoterSequencePackage) : Prop :=
  P.corePromoterElements.length > 0 ∧
  P.proximalElements.length ≥ 0 ∧
  P.distalElements.length ≥ 0 ∧
  P.tataBoxPresent ∧
  P.initiatorElementPresent ∧
  P.downstreamElementPresent

theorem promoter_sequence_closed_from_evidence
    (P : PromoterSequencePackage) (E : PromoterSequenceEvidence P) :
    PromoterSequenceClosed P := by
  exact And.intro E.corePromoterElementsClosed
    (And.intro E.proximalElementsClosed
      (And.intro E.distalElementsClosed
        (And.intro E.tataBoxPresentClosed
          (And.intro E.initiatorElementPresentClosed
            E.downstreamElementPresentClosed))))

end MolecularBiologyPromotersTranscriptionInitiationFoundationCanonicalLaneLean
end HautevilleHouse