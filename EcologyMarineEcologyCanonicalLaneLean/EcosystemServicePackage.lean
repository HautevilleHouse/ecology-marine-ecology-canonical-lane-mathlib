import EcologyMarineEcologyCanonicalLaneLean.FoodWebStabilityPackage

namespace HautevilleHouse
namespace EcologyMarineEcologyCanonicalLaneLean

structure EcosystemServicePackage {N : NutrientCyclePackage} {P : PopulationDynamicsPackage N} {F : FoodWebStabilityPackage N P} where
  carbonSequestration : Prop
  fisheriesYield : Prop
  coastalProtection : Prop
  nutrientFiltering : Prop
  biodiversitySupport : Prop
  carbonSequestrationClosed : carbonSequestration
  fisheriesYieldClosed : fisheriesYield
  coastalProtectionClosed : coastalProtection
  nutrientFilteringClosed : nutrientFiltering
  biodiversitySupportClosed : biodiversitySupport

structure EcosystemServiceEvidence {N : NutrientCyclePackage} {P : PopulationDynamicsPackage N} {F : FoodWebStabilityPackage N P} (E : EcosystemServicePackage N P F) where
  carbonSequestrationClosed : E.carbonSequestration
  fisheriesYieldClosed : E.fisheriesYield
  coastalProtectionClosed : E.coastalProtection
  nutrientFilteringClosed : E.nutrientFiltering
  biodiversitySupportClosed : E.biodiversitySupport

def EcosystemServiceClosed {N : NutrientCyclePackage} {P : PopulationDynamicsPackage N} {F : FoodWebStabilityPackage N P} (E : EcosystemServicePackage N P F) : Prop :=
  E.carbonSequestration ∧ E.fisheriesYield ∧ E.coastalProtection ∧ E.nutrientFiltering ∧ E.biodiversitySupport

theorem ecosystem_service_closed_from_evidence {N : NutrientCyclePackage} {P : PopulationDynamicsPackage N} {F : FoodWebStabilityPackage N P} (E : EcosystemServicePackage N P F) (Ev : EcosystemServiceEvidence E) :
    EcosystemServiceClosed E := by
  exact And.intro Ev.carbonSequestrationClosed
    (And.intro Ev.fisheriesYieldClosed
      (And.intro Ev.coastalProtectionClosed
        (And.intro Ev.nutrientFilteringClosed Ev.biodiversitySupportClosed)))

end EcologyMarineEcologyCanonicalLaneLean
end HautevilleHouse