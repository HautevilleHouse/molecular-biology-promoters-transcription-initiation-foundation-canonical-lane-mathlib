import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyPromotersTranscriptionInitiationFoundationCanonicalLaneLean

structure PromoterBindingPackage where
  tataBox : Prop
  initiatorElement : Prop
  breElement : Prop
  downstreamElement : Prop
  tataBoxPresent : tataBox
  initiatorElementPresent : initiatorElement
  breElementPresent : breElement
  downstreamElementPresent : downstreamElement

structure PromoterBindingEvidence (P : PromoterBindingPackage) where
  tataBoxClosed : P.tataBox
  initiatorElementClosed : P.initiatorElement
  breElementClosed : P.breElement
  downstreamElementClosed : P.downstreamElement

def PromoterBindingClosed (P : PromoterBindingPackage) : Prop :=
  P.tataBox ∧ P.initiatorElement ∧ P.breElement ∧ P.downstreamElement

theorem promoter_binding_closed_from_evidence (P : PromoterBindingPackage)
    (E : PromoterBindingEvidence P) : PromoterBindingClosed P := by
  exact And.intro E.tataBoxClosed (
    And.intro E.initiatorElementClosed (
      And.intro E.breElementClosed E.downstreamElementClosed))

end MolecularBiologyPromotersTranscriptionInitiationFoundationCanonicalLaneLean
end HautevilleHouse