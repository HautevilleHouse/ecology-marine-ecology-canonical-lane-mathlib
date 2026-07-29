import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EcologyMarineEcologyCanonicalLaneLean

structure MarineEcoregionPackage where
  regionName : String
  geographicBounds : Prop
  speciesRichness : Nat
  trophicLevels : Prop
  disturbanceRegime : Prop

structure MarineEcoregionEvidence (E : MarineEcoregionPackage) where
  geographicBoundsClosed : E.geographicBounds
  speciesRichnessClosed : E.speciesRichness > 0
  trophicLevelsClosed : E.trophicLevels
  disturbanceRegimeClosed : E.disturbanceRegime

def MarineEcoregionClosed (E : MarineEcoregionPackage) : Prop :=
  E.geographicBounds ∧ E.speciesRichness > 0 ∧ E.trophicLevels ∧ E.disturbanceRegime

theorem marine_ecoregion_closed_from_evidence (E : MarineEcoregionPackage)
    (Ev : MarineEcoregionEvidence E) : MarineEcoregionClosed E := by
  exact And.intro Ev.geographicBoundsClosed
    (And.intro Ev.speciesRichnessClosed
      (And.intro Ev.trophicLevelsClosed Ev.disturbanceRegimeClosed))

end EcologyMarineEcologyCanonicalLaneLean
end HautevilleHouse
