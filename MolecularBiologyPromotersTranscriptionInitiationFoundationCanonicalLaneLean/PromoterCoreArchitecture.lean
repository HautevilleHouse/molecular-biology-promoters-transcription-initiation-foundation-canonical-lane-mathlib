import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyPromotersTranscriptionInitiationFoundationCanonicalLaneLean

structure PromoterCoreArchitecture where
  upstreamElement : Type
  tataBox : Type
  initiatorElement : Type
  downstreamElement : Type
  transcriptionStartSite : Nat
  corePromoterClosed : Prop

structure PromoterCoreArchitectureEvidence (P : PromoterCoreArchitecture) where
  upstreamElementClosed : P.upstreamElement
  tataBoxClosed : P.tataBox
  initiatorElementClosed : P.initiatorElement
  downstreamElementClosed : P.downstreamElement
  transcriptionStartSiteDefined : P.transcriptionStartSite = 0

def PromoterCoreArchitectureClosed (P : PromoterCoreArchitecture) : Prop :=
  P.upstreamElement ∧ P.tataBox ∧ P.initiatorElement ∧ P.downstreamElement ∧ (P.transcriptionStartSite = 0)

theorem promoter_core_architecture_closed_from_evidence (P : PromoterCoreArchitecture) (E : PromoterCoreArchitectureEvidence P) : PromoterCoreArchitectureClosed P := by
  exact And.intro E.upstreamElementClosed (And.intro E.tataBoxClosed (And.intro E.initiatorElementClosed (And.intro E.downstreamElementClosed E.transcriptionStartSiteDefined)))

end MolecularBiologyPromotersTranscriptionInitiationFoundationCanonicalLaneLean
end HautevilleHouse