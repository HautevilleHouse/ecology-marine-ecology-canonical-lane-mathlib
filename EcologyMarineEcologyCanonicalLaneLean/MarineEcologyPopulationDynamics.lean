import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EcologyMarineEcologyCanonicalLaneLean

structure PopulationDynamicsPackage where
  carryingCapacity : ℝ
  growthRate : ℝ
  predationRate : ℝ
  reproductionRate : ℝ
  logisticEquation : Prop
  predatorPreyCoupling : Prop
  stabilityCondition : Prop

structure PopulationDynamicsEvidence (P : PopulationDynamicsPackage) where
  logisticEquationClosed : P.logisticEquation
  predatorPreyCouplingClosed : P.predatorPreyCoupling
  stabilityConditionClosed : P.stabilityCondition

def PopulationDynamicsClosed (P : PopulationDynamicsPackage) : Prop :=
  P.logisticEquation ∧ P.predatorPreyCoupling ∧ P.stabilityCondition

theorem population_dynamics_closed_from_evidence
    (P : PopulationDynamicsPackage) (E : PopulationDynamicsEvidence P) :
    PopulationDynamicsClosed P := by
  exact And.intro E.logisticEquationClosed
    (And.intro E.predatorPreyCouplingClosed E.stabilityConditionClosed)

end EcologyMarineEcologyCanonicalLaneLean
end HautevilleHouse