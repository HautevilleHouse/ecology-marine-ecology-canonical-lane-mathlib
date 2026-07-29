import canonicalLaneMathlib.AdmissibleClass
import EcologyMarineEcologyCanonicalLaneLean.MarineEcologyPopulationDynamics
import EcologyMarineEcologyCanonicalLaneLean.MarineBiogeochemistryCycles
import EcologyMarineEcologyCanonicalLaneLean.MarineFoodWebTrophicDynamics
import EcologyMarineEcologyCanonicalLaneLean.MarineEcosystemSpatialDynamics

namespace HautevilleHouse
namespace EcologyMarineEcologyCanonicalLaneLean

def ConstrainedMarineEcologyClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_marine_ecology_endgame (A : AdmissibleClass) :
    ConstrainedMarineEcologyClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end EcologyMarineEcologyCanonicalLaneLean
end HautevilleHouse