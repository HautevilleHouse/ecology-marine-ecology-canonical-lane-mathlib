import canonicalLaneMathlib.AdmissibleClass
import EcologyMarineEcologyCanonicalLaneLean.MarineEcosystemAdmissibleClass

namespace HautevilleHouse
namespace EcologyMarineEcologyCanonicalLaneLean

structure FoodWebPackage (O : MarineEcosystemObject) where
  trophicLinks : Prop
  predatorPreyDynamics : Prop
  resilienceToDisturbance : Prop
  keystoneSpeciesPresent : Prop
  cascadeEffects : Prop

structure FoodWebEvidence (O : MarineEcosystemObject) (F : FoodWebPackage O) where
  trophicLinksClosed : F.trophicLinks
  predatorPreyDynamicsClosed : F.predatorPreyDynamics
  resilienceToDisturbanceClosed : F.resilienceToDisturbance
  keystoneSpeciesPresentClosed : F.keystoneSpeciesPresent
  cascadeEffectsClosed : F.cascadeEffects

def FoodWebClosed (O : MarineEcosystemObject) (F : FoodWebPackage O) : Prop :=
  F.trophicLinks ∧ F.predatorPreyDynamics ∧ F.resilienceToDisturbance ∧ F.keystoneSpeciesPresent ∧ F.cascadeEffects

theorem food_web_closed_from_evidence (O : MarineEcosystemObject) (F : FoodWebPackage O) (E : FoodWebEvidence O F) :
    FoodWebClosed O F := by
  exact And.intro E.trophicLinksClosed
    (And.intro E.predatorPreyDynamicsClosed
      (And.intro E.resilienceToDisturbanceClosed
        (And.intro E.keystoneSpeciesPresentClosed E.cascadeEffectsClosed)))

end EcologyMarineEcologyCanonicalLaneLean
end HautevilleHouse