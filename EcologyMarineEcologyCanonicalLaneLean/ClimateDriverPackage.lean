import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EcologyMarineEcologyCanonicalLaneLean

structure ClimateDriverPackage where
  seaSurfaceTemperature : Float
  oceanAcidity : Float
  currentVelocity : Float
  upwellingIntensity : Float
  seasonalVariability : Prop
  trendAttributed : Prop

structure ClimateDriverEvidence (C : ClimateDriverPackage) where
  temperatureInRange : -2.0 ≤ C.seaSurfaceTemperature ∧ C.seaSurfaceTemperature ≤ 40.0
  acidityNonnegative : C.oceanAcidity ≥ 0.0
  currentPositive : C.currentVelocity > 0.0
  upwellingNonnegative : C.upwellingIntensity ≥ 0.0
  seasonalClosed : C.seasonalVariability
  trendClosed : C.trendAttributed

def ClimateDriverClosed (C : ClimateDriverPackage) : Prop :=
  (-2.0 ≤ C.seaSurfaceTemperature ∧ C.seaSurfaceTemperature ≤ 40.0) ∧
  C.oceanAcidity ≥ 0.0 ∧ C.currentVelocity > 0.0 ∧ C.upwellingIntensity ≥ 0.0 ∧
  C.seasonalVariability ∧ C.trendAttributed

theorem climate_driver_closed_from_evidence (C : ClimateDriverPackage)
    (Ev : ClimateDriverEvidence C) : ClimateDriverClosed C := by
  exact And.intro Ev.temperatureInRange
    (And.intro Ev.acidityNonnegative
      (And.intro Ev.currentPositive
        (And.intro Ev.upwellingNonnegative
          (And.intro Ev.seasonalClosed Ev.trendClosed))))

end EcologyMarineEcologyCanonicalLaneLean
end HautevilleHouse
