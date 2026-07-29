import canonicalLaneMathlib.AdmissibleClass
import EcologyMarineEcologyCanonicalLaneLean.MarineEcosystemAdmissibleClass

namespace HautevilleHouse
namespace EcologyMarineEcologyCanonicalLaneLean

structure BiodiversityPackage (O : MarineEcosystemObject) where
  speciesRichness : Prop
  endemicSpecies : Prop
  habitatDiversity : Prop
  conservationStatus : Prop
  ecosystemServices : Prop

structure BiodiversityEvidence (O : MarineEcosystemObject) (B : BiodiversityPackage O) where
  speciesRichnessClosed : B.speciesRichness
  endemicSpeciesClosed : B.endemicSpecies
  habitatDiversityClosed : B.habitatDiversity
  conservationStatusClosed : B.conservationStatus
  ecosystemServicesClosed : B.ecosystemServices

def BiodiversityClosed (O : MarineEcosystemObject) (B : BiodiversityPackage O) : Prop :=
  B.speciesRichness ∧ B.endemicSpecies ∧ B.habitatDiversity ∧ B.conservationStatus ∧ B.ecosystemServices

theorem biodiversity_closed_from_evidence (O : MarineEcosystemObject) (B : BiodiversityPackage O) (E : BiodiversityEvidence O B) :
    BiodiversityClosed O B := by
  exact And.intro E.speciesRichnessClosed
    (And.intro E.endemicSpeciesClosed
      (And.intro E.habitatDiversityClosed
        (And.intro E.conservationStatusClosed E.ecosystemServicesClosed)))

end EcologyMarineEcologyCanonicalLaneLean
end HautevilleHouse