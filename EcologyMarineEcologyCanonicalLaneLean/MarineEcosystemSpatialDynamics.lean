import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EcologyMarineEcologyCanonicalLaneLean

structure SpatialDynamicsPackage where
  habitatFragmentation : Prop
  dispersalRate : ℝ
  metapopulationDynamics : Prop
  connectivityMatrix : Prop
  migrationCorridors : Prop
  marineProtectedAreas : Prop

structure SpatialDynamicsEvidence (S : SpatialDynamicsPackage) where
  habitatFragmentationClosed : S.habitatFragmentation
  metapopulationDynamicsClosed : S.metapopulationDynamics
  connectivityMatrixClosed : S.connectivityMatrix
  migrationCorridorsClosed : S.migrationCorridors
  marineProtectedAreasClosed : S.marineProtectedAreas

def SpatialDynamicsClosed (S : SpatialDynamicsPackage) : Prop :=
  S.habitatFragmentation ∧ S.metapopulationDynamics ∧
  S.connectivityMatrix ∧ S.migrationCorridors ∧ S.marineProtectedAreas

theorem spatial_dynamics_closed_from_evidence
    (S : SpatialDynamicsPackage) (E : SpatialDynamicsEvidence S) :
    SpatialDynamicsClosed S := by
  exact And.intro E.habitatFragmentationClosed
    (And.intro E.metapopulationDynamicsClosed
      (And.intro E.connectivityMatrixClosed
        (And.intro E.migrationCorridorsClosed E.marineProtectedAreasClosed)))

end EcologyMarineEcologyCanonicalLaneLean
end HautevilleHouse