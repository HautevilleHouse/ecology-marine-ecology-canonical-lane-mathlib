import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EcologyMarineEcologyCanonicalLaneLean

structure NutrientCycleFluxPackage where
  nitrogenFixationRate : Float
  phosphorusUpwellingRate : Float
  denitrificationRate : Float
  organicMatterSinking : Float
  cycleBalance : Prop

structure NutrientCycleFluxEvidence (N : NutrientCycleFluxPackage) where
  nitrogenClosed : N.nitrogenFixationRate > 0
  phosphorusClosed : N.phosphorusUpwellingRate > 0
  denitrificationClosed : N.denitrificationRate > 0
  sinkingClosed : N.organicMatterSinking > 0
  balanceClosed : N.cycleBalance

def NutrientCycleFluxClosed (N : NutrientCycleFluxPackage) : Prop :=
  N.nitrogenFixationRate > 0 ∧ N.phosphorusUpwellingRate > 0 ∧
  N.denitrificationRate > 0 ∧ N.organicMatterSinking > 0 ∧ N.cycleBalance

theorem nutrient_cycle_flux_closed_from_evidence (N : NutrientCycleFluxPackage)
    (Ev : NutrientCycleFluxEvidence N) : NutrientCycleFluxClosed N := by
  exact And.intro Ev.nitrogenClosed
    (And.intro Ev.phosphorusClosed
      (And.intro Ev.denitrificationClosed
        (And.intro Ev.sinkingClosed Ev.balanceClosed)))

end EcologyMarineEcologyCanonicalLaneLean
end HautevilleHouse
