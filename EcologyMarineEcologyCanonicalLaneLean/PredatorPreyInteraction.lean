import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EcologyMarineEcologyCanonicalLaneLean

structure PredatorPreyInteraction where
  preyDensity : Float
  predatorDensity : Float
  attackRate : Float
  conversionEfficiency : Float
  predatorMortality : Float
  preyGrowthRate : Float
  carryingCapacityPrey : Float
  functionalResponseType : String
  refugeEffect : Prop
  spatialHeterogeneity : Prop
  oscillationPeriod : Float

def PredatorPreyClosed (I : PredatorPreyInteraction) : Prop :=
  I.preyDensity ≥ 0 ∧ I.predatorDensity ≥ 0 ∧ I.attackRate ≥ 0 ∧ I.conversionEfficiency ≥ 0 ∧
  I.predatorMortality ≥ 0 ∧ I.preyGrowthRate ≥ 0 ∧ I.carryingCapacityPrey > 0 ∧
  (I.functionalResponseType = "type1" ∨ I.functionalResponseType = "type2" ∨ I.functionalResponseType = "type3") ∧
  I.refugeEffect ∧ I.spatialHeterogeneity ∧ I.oscillationPeriod ≥ 0

structure PredatorPreyEvidence (I : PredatorPreyInteraction) where
  preyDensityClosed : I.preyDensity ≥ 0
  predatorDensityClosed : I.predatorDensity ≥ 0
  attackRateClosed : I.attackRate ≥ 0
  conversionEfficiencyClosed : I.conversionEfficiency ≥ 0
  predatorMortalityClosed : I.predatorMortality ≥ 0
  preyGrowthRateClosed : I.preyGrowthRate ≥ 0
  carryingCapacityPreyClosed : I.carryingCapacityPrey > 0
  functionalResponseTypeClosed : I.functionalResponseType = "type1" ∨ I.functionalResponseType = "type2" ∨ I.functionalResponseType = "type3"
  refugeEffectClosed : I.refugeEffect
  spatialHeterogeneityClosed : I.spatialHeterogeneity
  oscillationPeriodClosed : I.oscillationPeriod ≥ 0

theorem predator_prey_closed_from_evidence (I : PredatorPreyInteraction)
    (E : PredatorPreyEvidence I) : PredatorPreyClosed I := by
  exact And.intro E.preyDensityClosed (And.intro E.predatorDensityClosed
    (And.intro E.attackRateClosed (And.intro E.conversionEfficiencyClosed
    (And.intro E.predatorMortalityClosed (And.intro E.preyGrowthRateClosed
    (And.intro E.carryingCapacityPreyClosed (And.intro E.functionalResponseTypeClosed
    (And.intro E.refugeEffectClosed (And.intro E.spatialHeterogeneityClosed
      E.oscillationPeriodClosed)))))))))

end EcologyMarineEcologyCanonicalLaneLean
end HautevilleHouse