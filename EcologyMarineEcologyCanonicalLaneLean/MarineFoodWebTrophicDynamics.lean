import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EcologyMarineEcologyCanonicalLaneLean

structure FoodWebTrophicDynamicsPackage where
  trophicLevels : Nat
  energyTransferEfficiency : ℝ
  biomassDistribution : Prop
  keystoneSpecies : Prop
  foodWebStability : Prop
  cascadeEffects : Prop
  networkConnectance : ℝ

structure FoodWebTrophicDynamicsEvidence (F : FoodWebTrophicDynamicsPackage) where
  biomassDistributionClosed : F.biomassDistribution
  keystoneSpeciesClosed : F.keystoneSpecies
  foodWebStabilityClosed : F.foodWebStability
  cascadeEffectsClosed : F.cascadeEffects

def FoodWebTrophicDynamicsClosed (F : FoodWebTrophicDynamicsPackage) : Prop :=
  F.biomassDistribution ∧ F.keystoneSpecies ∧ F.foodWebStability ∧ F.cascadeEffects

theorem food_web_trophic_dynamics_closed_from_evidence
    (F : FoodWebTrophicDynamicsPackage) (E : FoodWebTrophicDynamicsEvidence F) :
    FoodWebTrophicDynamicsClosed F := by
  exact And.intro E.biomassDistributionClosed
    (And.intro E.keystoneSpeciesClosed
      (And.intro E.foodWebStabilityClosed E.cascadeEffectsClosed))

end EcologyMarineEcologyCanonicalLaneLean
end HautevilleHouse