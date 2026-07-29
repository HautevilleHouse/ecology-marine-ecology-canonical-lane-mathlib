import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EcologyMarineEcologyCanonicalLaneLean

structure TrophicNetworkStabilityPackage where
  speciesCount : Nat
  connectance : Float
  omnivoryIndex : Float
  resilienceMetric : Float
  stabilityThreshold : Float
  networkConnected : Prop

structure TrophicNetworkStabilityEvidence (T : TrophicNetworkStabilityPackage) where
  speciesPositive : T.speciesCount > 0
  connectanceRange : 0.0 < T.connectance ∧ T.connectance ≤ 1.0
  omnivoryNonnegative : T.omnivoryIndex ≥ 0.0
  resilienceAboveThreshold : T.resilienceMetric > T.stabilityThreshold
  connectedClosed : T.networkConnected

def TrophicNetworkStabilityClosed (T : TrophicNetworkStabilityPackage) : Prop :=
  T.speciesCount > 0 ∧ (0.0 < T.connectance ∧ T.connectance ≤ 1.0) ∧
  T.omnivoryIndex ≥ 0.0 ∧ T.resilienceMetric > T.stabilityThreshold ∧ T.networkConnected

theorem trophic_network_stability_closed_from_evidence (T : TrophicNetworkStabilityPackage)
    (Ev : TrophicNetworkStabilityEvidence T) : TrophicNetworkStabilityClosed T := by
  exact And.intro Ev.speciesPositive
    (And.intro Ev.connectanceRange
      (And.intro Ev.omnivoryNonnegative
        (And.intro Ev.resilienceAboveThreshold Ev.connectedClosed)))

end EcologyMarineEcologyCanonicalLaneLean
end HautevilleHouse
