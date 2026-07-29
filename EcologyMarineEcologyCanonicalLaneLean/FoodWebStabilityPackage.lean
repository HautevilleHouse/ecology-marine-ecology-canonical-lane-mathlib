import EcologyMarineEcologyCanonicalLaneLean.PopulationDynamicsPackage

namespace HautevilleHouse
namespace EcologyMarineEcologyCanonicalLaneLean

structure FoodWebStabilityPackage {N : NutrientCyclePackage} {P : PopulationDynamicsPackage N} where
  connectance : Prop
  interactionStrength : Prop
  stabilityIndex : Prop
  trophicLevels : Prop
  connectanceClosed : connectance
  interactionStrengthClosed : interactionStrength
  stabilityIndexClosed : stabilityIndex
  trophicLevelsClosed : trophicLevels

structure FoodWebStabilityEvidence {N : NutrientCyclePackage} {P : PopulationDynamicsPackage N} (F : FoodWebStabilityPackage N P) where
  connectanceClosed : F.connectance
  interactionStrengthClosed : F.interactionStrength
  stabilityIndexClosed : F.stabilityIndex
  trophicLevelsClosed : F.trophicLevels

def FoodWebStabilityClosed {N : NutrientCyclePackage} {P : PopulationDynamicsPackage N} (F : FoodWebStabilityPackage N P) : Prop :=
  F.connectance ∧ F.interactionStrength ∧ F.stabilityIndex ∧ F.trophicLevels

theorem food_web_stability_closed_from_evidence {N : NutrientCyclePackage} {P : PopulationDynamicsPackage N} (F : FoodWebStabilityPackage N P) (E : FoodWebStabilityEvidence F) :
    FoodWebStabilityClosed F := by
  exact And.intro E.connectanceClosed
    (And.intro E.interactionStrengthClosed
      (And.intro E.stabilityIndexClosed E.trophicLevelsClosed))

end EcologyMarineEcologyCanonicalLaneLean
end HautevilleHouse