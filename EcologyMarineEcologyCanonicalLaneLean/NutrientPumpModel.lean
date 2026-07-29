import canonicalLaneMathlib.AdmissibleClass
import EcologyMarineEcologyCanonicalLaneLean.MarineEcosystemAdmissibleClass

namespace HautevilleHouse
namespace EcologyMarineEcologyCanonicalLaneLean

structure NutrientPumpPackage (O : MarineEcosystemObject) where
  upwellingIntensity : Prop
  nutrientConcentration : Prop
  primaryProductivity : Prop
  seasonalVariability : Prop
  pumpConsistency : Prop

structure NutrientPumpEvidence (O : MarineEcosystemObject) (P : NutrientPumpPackage O) where
  upwellingIntensityClosed : P.upwellingIntensity
  nutrientConcentrationClosed : P.nutrientConcentration
  primaryProductivityClosed : P.primaryProductivity
  seasonalVariabilityClosed : P.seasonalVariability
  pumpConsistencyClosed : P.pumpConsistency

def NutrientPumpClosed (O : MarineEcosystemObject) (P : NutrientPumpPackage O) : Prop :=
  P.upwellingIntensity ∧ P.nutrientConcentration ∧ P.primaryProductivity ∧ P.seasonalVariability ∧ P.pumpConsistency

theorem nutrient_pump_closed_from_evidence (O : MarineEcosystemObject) (P : NutrientPumpPackage O) (E : NutrientPumpEvidence O P) :
    NutrientPumpClosed O P := by
  exact And.intro E.upwellingIntensityClosed
    (And.intro E.nutrientConcentrationClosed
      (And.intro E.primaryProductivityClosed
        (And.intro E.seasonalVariabilityClosed E.pumpConsistencyClosed)))

end EcologyMarineEcologyCanonicalLaneLean
end HautevilleHouse