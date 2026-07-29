import canonicalLaneMathlib.AdmissibleClass
import EcologyMarineEcologyCanonicalLaneLean.MarineEcosystemAdmissibleClass

namespace HautevilleHouse
namespace EcologyMarineEcologyCanonicalLaneLean

structure DisturbancePackage (O : MarineEcosystemObject) where
  storms : Prop
  temperatureAnomalies : Prop
  pollutionEvents : Prop
  recoveryRate : Prop
  regimeShiftThreshold : Prop

structure DisturbanceEvidence (O : MarineEcosystemObject) (D : DisturbancePackage O) where
  stormsClosed : D.storms
  temperatureAnomaliesClosed : D.temperatureAnomalies
  pollutionEventsClosed : D.pollutionEvents
  recoveryRateClosed : D.recoveryRate
  regimeShiftThresholdClosed : D.regimeShiftThreshold

def DisturbanceClosed (O : MarineEcosystemObject) (D : DisturbancePackage O) : Prop :=
  D.storms ∧ D.temperatureAnomalies ∧ D.pollutionEvents ∧ D.recoveryRate ∧ D.regimeShiftThreshold

theorem disturbance_closed_from_evidence (O : MarineEcosystemObject) (D : DisturbancePackage O) (E : DisturbanceEvidence O D) :
    DisturbanceClosed O D := by
  exact And.intro E.stormsClosed
    (And.intro E.temperatureAnomaliesClosed
      (And.intro E.pollutionEventsClosed
        (And.intro E.recoveryRateClosed E.regimeShiftThresholdClosed)))

end EcologyMarineEcologyCanonicalLaneLean
end HautevilleHouse