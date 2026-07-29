import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EcologyMarineEcologyCanonicalLaneLean

structure NutrientCyclePackage where
  carbonFlux : Prop
  nitrogenFlux : Prop
  phosphorusFlux : Prop
  limitingNutrientIdentified : Prop

structure NutrientCycleEvidence (N : NutrientCyclePackage) where
  carbonFluxClosed : N.carbonFlux
  nitrogenFluxClosed : N.nitrogenFlux
  phosphorusFluxClosed : N.phosphorusFlux
  limitingNutrientIdentifiedClosed : N.limitingNutrientIdentified

def NutrientCycleClosed (N : NutrientCyclePackage) : Prop :=
  N.carbonFlux ∧ N.nitrogenFlux ∧ N.phosphorusFlux ∧ N.limitingNutrientIdentified

theorem nutrient_cycle_closed_from_evidence (N : NutrientCyclePackage)
    (E : NutrientCycleEvidence N) : NutrientCycleClosed N := by
  exact And.intro E.carbonFluxClosed
    (And.intro E.nitrogenFluxClosed
      (And.intro E.phosphorusFluxClosed E.limitingNutrientIdentifiedClosed))

end EcologyMarineEcologyCanonicalLaneLean
end HautevilleHouse