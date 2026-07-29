import EcologyMarineEcologyCanonicalLaneLean.GateLemmas

namespace HautevilleHouse
namespace EcologyMarineEcologyCanonicalLaneLean

def ConstrainedMarineClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_marine_endgame (A : AdmissibleClass) :
    ConstrainedMarineClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end EcologyMarineEcologyCanonicalLaneLean
end HautevilleHouse