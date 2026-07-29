import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EcologyMarineEcologyCanonicalLaneLean

structure MarineEcosystemPackage where
  trophicLevels : Nat
  speciesCount : Nat
  habitatTypes : List String
  connectivity : Prop
  primaryProduction : Nat
  carryingCapacity : Nat
  fishingPressure : Nat
  anthropogenicStress : Nat
  ecosystemResilience : Prop

def MarineEcosystemClosed (E : MarineEcosystemPackage) : Prop :=
  E.trophicLevels > 0 ∧ E.speciesCount > 0 ∧ E.habitatTypes.length > 0 ∧ E.connectivity ∧
  E.primaryProduction > 0 ∧ E.carryingCapacity > 0 ∧ E.fishingPressure ≥ 0 ∧
  E.anthropogenicStress ≥ 0 ∧ E.ecosystemResilience

end EcologyMarineEcologyCanonicalLaneLean
end HautevilleHouse