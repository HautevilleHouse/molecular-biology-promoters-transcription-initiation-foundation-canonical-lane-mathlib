import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyPromotersTranscriptionInitiationFoundationCanonicalLaneLean

structure PromoterArchitecturePackage where
  promoterRegion : Type u
  transcriptionStartSite : Type v
  corePromoterElements : Prop
  proximalRegulatoryElements : Prop
  distanceConstraintsDefined : Prop

structure PromoterArchitectureEvidence (P : PromoterArchitecturePackage) where
  corePromoterElementsClosed : P.corePromoterElements
  proximalRegulatoryElementsClosed : P.proximalRegulatoryElements
  distanceConstraintsDefinedClosed : P.distanceConstraintsDefined

def PromoterArchitectureClosed (P : PromoterArchitecturePackage) : Prop :=
  P.corePromoterElements ∧ P.proximalRegulatoryElements ∧ P.distanceConstraintsDefined

theorem promoter_architecture_closed_from_evidence (P : PromoterArchitecturePackage) (E : PromoterArchitectureEvidence P) : PromoterArchitectureClosed P := by
  exact And.intro E.corePromoterElementsClosed (And.intro E.proximalRegulatoryElementsClosed E.distanceConstraintsDefinedClosed)

end MolecularBiologyPromotersTranscriptionInitiationFoundationCanonicalLaneLean
end HautevilleHouse