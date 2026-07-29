import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EcologyMarineEcologyCanonicalLaneLean

structure MarineEcosystemObject where
  region : Type u
  topology : TopologicalSpace region
  species : Type v
  foodWeb : Prop
  nutrientCycling : Prop
  disturbanceRegime : Prop
  hypothesisStatement : Prop

structure AdmissibleClass where
  object : MarineEcosystemObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  MarineEcosystemClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

def MarineEcosystemClosed (O : MarineEcosystemObject) : Prop :=
  O.foodWeb ∧ O.nutrientCycling ∧ O.disturbanceRegime

end EcologyMarineEcologyCanonicalLaneLean
end HautevilleHouse