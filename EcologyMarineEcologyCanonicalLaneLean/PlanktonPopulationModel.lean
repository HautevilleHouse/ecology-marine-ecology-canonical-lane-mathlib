import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EcologyMarineEcologyCanonicalLaneLean

structure PlanktonPopulationModel where
  phytoplanktonDensity : Float
  zooplanktonDensity : Float
  nutrientConcentration : Float
  lightAvailability : Float
  temperature : Float
  grazingRate : Float
  growthRate : Float
  carryingCapacityPhyto : Float
  carryingCapacityZoo : Float
  mortalityRate : Float

def PlanktonPopulationClosed (P : PlanktonPopulationModel) : Prop :=
  P.phytoplanktonDensity ≥ 0 ∧ P.zooplanktonDensity ≥ 0 ∧ P.nutrientConcentration ≥ 0 ∧
  P.lightAvailability ≥ 0 ∧ P.temperature ≥ 0 ∧ P.grazingRate ≥ 0 ∧ P.growthRate ≥ 0 ∧
  P.carryingCapacityPhyto > 0 ∧ P.carryingCapacityZoo > 0 ∧ P.mortalityRate ≥ 0

structure PlanktonPopulationEvidence (P : PlanktonPopulationModel) where
  phytoClosed : P.phytoplanktonDensity ≥ 0
  zooClosed : P.zooplanktonDensity ≥ 0
  nutrientClosed : P.nutrientConcentration ≥ 0
  lightClosed : P.lightAvailability ≥ 0
  tempClosed : P.temperature ≥ 0
  grazingClosed : P.grazingRate ≥ 0
  growthClosed : P.growthRate ≥ 0
  carryPhytoClosed : P.carryingCapacityPhyto > 0
  carryZooClosed : P.carryingCapacityZoo > 0
  mortalityClosed : P.mortalityRate ≥ 0

theorem plankton_population_closed_from_evidence (P : PlanktonPopulationModel)
    (E : PlanktonPopulationEvidence P) : PlanktonPopulationClosed P := by
  exact And.intro E.phytoClosed (And.intro E.zooClosed (And.intro E.nutrientClosed
    (And.intro E.lightClosed (And.intro E.tempClosed (And.intro E.grazingClosed
    (And.intro E.growthClosed (And.intro E.carryPhytoClosed (And.intro E.carryZooClosed
      E.mortalityClosed))))))))

end EcologyMarineEcologyCanonicalLaneLean
end HautevilleHouse