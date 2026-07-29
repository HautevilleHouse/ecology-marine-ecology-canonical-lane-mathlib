import EcologyMarineEcologyCanonicalLaneLean.NutrientCyclePackage

namespace HautevilleHouse
namespace EcologyMarineEcologyCanonicalLaneLean

structure PopulationDynamicsPackage {N : NutrientCyclePackage} where
  mortalityRate : Prop
  recruitmentRate : Prop
  carryingCapacity : Prop
  growthModel : Prop
  populationChangeRate : Prop
  carryingCapacityClosed : carryingCapacity
  mortalityRateClosed : mortalityRate
  recruitmentRateClosed : recruitmentRate
  growthModelClosed : growthModel
  populationChangeRateClosed : populationChangeRate

structure PopulationDynamicsEvidence {N : NutrientCyclePackage} (P : PopulationDynamicsPackage N) where
  carryingCapacityClosed : P.carryingCapacity
  mortalityRateClosed : P.mortalityRate
  recruitmentRateClosed : P.recruitmentRate
  growthModelClosed : P.growthModel
  populationChangeRateClosed : P.populationChangeRate

def PopulationDynamicsClosed {N : NutrientCyclePackage} (P : PopulationDynamicsPackage N) : Prop :=
  P.carryingCapacity ∧ P.mortalityRate ∧ P.recruitmentRate ∧ P.growthModel ∧ P.populationChangeRate

theorem population_dynamics_closed_from_evidence {N : NutrientCyclePackage} (P : PopulationDynamicsPackage N) (E : PopulationDynamicsEvidence P) :
    PopulationDynamicsClosed P := by
  exact And.intro E.carryingCapacityClosed
    (And.intro E.mortalityRateClosed
      (And.intro E.recruitmentRateClosed
        (And.intro E.growthModelClosed E.populationChangeRateClosed)))

end EcologyMarineEcologyCanonicalLaneLean
end HautevilleHouse