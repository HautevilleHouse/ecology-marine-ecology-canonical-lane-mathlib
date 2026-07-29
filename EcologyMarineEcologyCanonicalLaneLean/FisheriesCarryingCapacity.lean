import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EcologyMarineEcologyCanonicalLaneLean

structure FisheriesCarryingCapacityPackage where
  targetSpecies : String
  biomassStock : Float
  growthRate : Float
  carryingCapacity : Float
  harvestRate : Float
  sustainableYield : Prop
  stockAboveOverfishing : Prop

structure FisheriesCarryingCapacityEvidence (F : FisheriesCarryingCapacityPackage) where
  biomassPositive : F.biomassStock > 0.0
  growthPositive : F.growthRate > 0.0
  capacityPositive : F.carryingCapacity > 0.0
  harvestNonnegative : F.harvestRate ≥ 0.0
  sustainableClosed : F.sustainableYield
  stockAboveThreshold : F.stockAboveOverfishing

def FisheriesCarryingCapacityClosed (F : FisheriesCarryingCapacityPackage) : Prop :=
  F.biomassStock > 0.0 ∧ F.growthRate > 0.0 ∧ F.carryingCapacity > 0.0 ∧
  F.harvestRate ≥ 0.0 ∧ F.sustainableYield ∧ F.stockAboveOverfishing

theorem fisheries_carrying_capacity_closed_from_evidence (F : FisheriesCarryingCapacityPackage)
    (Ev : FisheriesCarryingCapacityEvidence F) : FisheriesCarryingCapacityClosed F := by
  exact And.intro Ev.biomassPositive
    (And.intro Ev.growthPositive
      (And.intro Ev.capacityPositive
        (And.intro Ev.harvestNonnegative
          (And.intro Ev.sustainableClosed Ev.stockAboveThreshold))))

end EcologyMarineEcologyCanonicalLaneLean
end HautevilleHouse
