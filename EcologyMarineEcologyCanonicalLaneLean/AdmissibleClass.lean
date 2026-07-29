import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EcologyMarineEcologyCanonicalLaneLean

structure AdmissibleClass where
  object : MarineAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  MarineWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end EcologyMarineEcologyCanonicalLaneLean
end HautevilleHouse