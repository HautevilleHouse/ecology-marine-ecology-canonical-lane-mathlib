import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EcologyMarineEcologyCanonicalLaneLean

structure MarineAdmittedObject where
  ecosystem : Type
  region : Type
  biodiversityIndex : Prop
  ecosystemFunctioning : Prop
  conclusion : ecosystemFunctioning

structure AdmissibleClass where
  object : MarineAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  MarineWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end EcologyMarineEcologyCanonicalLaneLean
end HautevilleHouse