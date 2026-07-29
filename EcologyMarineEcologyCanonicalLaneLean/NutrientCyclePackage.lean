import EcologyMarineEcologyCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace EcologyMarineEcologyCanonicalLaneLean

structure NutrientCyclePackage where
  primaryProduction : Prop
  decompositionRate : Prop
  nutrientFlux : Prop
  trophicTransfer : Prop
  modelCalibration : Prop
  primaryProductionClosed : primaryProduction
  decompositionRateClosed : decompositionRate
  nutrientFluxClosed : nutrientFlux
  trophicTransferClosed : trophicTransfer
  modelCalibrationClosed : modelCalibration

structure NutrientCycleEvidence (N : NutrientCyclePackage) where
  primaryProductionClosed : N.primaryProduction
  decompositionRateClosed : N.decompositionRate
  nutrientFluxClosed : N.nutrientFlux
  trophicTransferClosed : N.trophicTransfer
  modelCalibrationClosed : N.modelCalibration

def NutrientCycleClosed (N : NutrientCyclePackage) : Prop :=
  N.primaryProduction ∧ N.decompositionRate ∧ N.nutrientFlux ∧ N.trophicTransfer ∧ N.modelCalibration

theorem nutrient_cycle_closed_from_evidence (N : NutrientCyclePackage) (E : NutrientCycleEvidence N) :
    NutrientCycleClosed N := by
  exact And.intro E.primaryProductionClosed
    (And.intro E.decompositionRateClosed
      (And.intro E.nutrientFluxClosed
        (And.intro E.trophicTransferClosed E.modelCalibrationClosed)))

end EcologyMarineEcologyCanonicalLaneLean
end HautevilleHouse