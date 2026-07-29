import EcologyMarineEcologyCanonicalLaneLean.BridgeLemmas

namespace HautevilleHouse
namespace EcologyMarineEcologyCanonicalLaneLean

def gateClosed (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : AdmissibleClass) :
    gateClosed A := by
  exact A.gateWitness

end EcologyMarineEcologyCanonicalLaneLean
end HautevilleHouse