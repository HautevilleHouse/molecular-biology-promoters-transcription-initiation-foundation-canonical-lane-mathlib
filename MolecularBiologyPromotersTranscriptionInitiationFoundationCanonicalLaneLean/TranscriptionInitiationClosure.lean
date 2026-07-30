import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyPromotersTranscriptionInitiationFoundationCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  AdmittedObject.satisfiesPromoterBinding A.object ∧
  AdmittedObject.satisfiesTFAssembly A.object ∧
  AdmittedObject.satisfiesOpenComplex A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) : bridgeClosed A := by
  exact And.intro (AdmittedObject.promoterBinding_closed A.object) (
    And.intro (AdmittedObject.tfAssembly_closed A.object) (
      AdmittedObject.openComplex_closed A.object))

def gateClosed (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : AdmissibleClass) : gateClosed A := by
  exact A.gateWitness

def ConstrainedTranscriptionInitiationClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_transcription_initiation_endgame (A : AdmissibleClass) :
    ConstrainedTranscriptionInitiationClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end MolecularBiologyPromotersTranscriptionInitiationFoundationCanonicalLaneLean
end HautevilleHouse