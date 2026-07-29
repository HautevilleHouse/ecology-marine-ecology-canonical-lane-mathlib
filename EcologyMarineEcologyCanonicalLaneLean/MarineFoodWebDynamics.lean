import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EcologyMarineEcologyCanonicalLaneLean

structure MarineFoodWebPackage where
  trophicLevels : Nat
  speciesRichness : Nat
  connectance : Prop
  stabilityIndex : Prop
  resilienceIndex : Prop

structure MarineFoodWebEvidence (M : MarineFoodWebPackage) where
  connectanceClosed : M.connectance
  stabilityIndexClosed : M.stabilityIndex
  resilienceIndexClosed : M.resilienceIndex

def MarineFoodWebClosed (M : MarineFoodWebPackage) : Prop :=
  M.connectance ∧ M.stabilityIndex ∧ M.resilienceIndex

theorem marine_food_web_closed_from_evidence (M : MarineFoodWebPackage)
    (E : MarineFoodWebEvidence M) : MarineFoodWebClosed M := by
  exact And.intro E.connectanceClosed (And.intro E.stabilityIndexClosed E.resilienceIndexClosed)

end EcologyMarineEcologyCanonicalLaneLean
end HautevilleHouse