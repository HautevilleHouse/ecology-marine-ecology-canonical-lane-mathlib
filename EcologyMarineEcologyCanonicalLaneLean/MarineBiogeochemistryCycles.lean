import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EcologyMarineEcologyCanonicalLaneLean

structure BiogeochemistryCyclesPackage where
  carbonCycle : Prop
  nitrogenCycle : Prop
  phosphorusCycle : Prop
  nutrientLimitation : Prop
  primaryProduction : Prop
  decompositionRate : Prop

structure BiogeochemistryCyclesEvidence (B : BiogeochemistryCyclesPackage) where
  carbonCycleClosed : B.carbonCycle
  nitrogenCycleClosed : B.nitrogenCycle
  phosphorusCycleClosed : B.phosphorusCycle
  nutrientLimitationClosed : B.nutrientLimitation
  primaryProductionClosed : B.primaryProduction
  decompositionRateClosed : B.decompositionRate

def BiogeochemistryCyclesClosed (B : BiogeochemistryCyclesPackage) : Prop :=
  B.carbonCycle ∧ B.nitrogenCycle ∧ B.phosphorusCycle ∧
  B.nutrientLimitation ∧ B.primaryProduction ∧ B.decompositionRate

theorem biogeochemistry_cycles_closed_from_evidence
    (B : BiogeochemistryCyclesPackage) (E : BiogeochemistryCyclesEvidence B) :
    BiogeochemistryCyclesClosed B := by
  exact And.intro E.carbonCycleClosed
    (And.intro E.nitrogenCycleClosed
      (And.intro E.phosphorusCycleClosed
        (And.intro E.nutrientLimitationClosed
          (And.intro E.primaryProductionClosed E.decompositionRateClosed))))

end EcologyMarineEcologyCanonicalLaneLean
end HautevilleHouse