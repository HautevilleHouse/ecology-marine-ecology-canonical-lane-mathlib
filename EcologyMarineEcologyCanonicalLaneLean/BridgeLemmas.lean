import EcologyMarineEcologyCanonicalLaneLean.MarineEcologyAdmissibleClass

namespace HautevilleHouse
namespace EcologyMarineEcologyCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  MarineWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end EcologyMarineEcologyCanonicalLaneLean
end HautevilleHouse