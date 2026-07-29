import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EcologyMarineEcologyCanonicalLaneLean

structure FisheriesManagementPackage where
  stockBiomass : Float
  maximumSustainableYield : Float
  fishingMortality : Float
  recruitmentRate : Float
  bycatchRate : Float
  managementEffectiveness : Prop
  quotaImplemented : Bool
  marineProtectedAreaCoverage : Float
  complianceLevel : Prop

structure FisheriesManagementEvidence (F : FisheriesManagementPackage) where
  stockBiomassClosed : F.stockBiomass ≥ 0
  maximumSustainableYieldClosed : F.maximumSustainableYield ≥ 0
  fishingMortalityClosed : F.fishingMortality ≥ 0
  recruitmentRateClosed : F.recruitmentRate ≥ 0
  bycatchRateClosed : F.bycatchRate ≥ 0
  managementEffectivenessClosed : F.managementEffectiveness
  quotaImplementedClosed : F.quotaImplemented
  marineProtectedAreaCoverageClosed : F.marineProtectedAreaCoverage ≥ 0 ∧ F.marineProtectedAreaCoverage ≤ 100
  complianceLevelClosed : F.complianceLevel

def FisheriesManagementClosed (F : FisheriesManagementPackage) : Prop :=
  F.stockBiomass ≥ 0 ∧ F.maximumSustainableYield ≥ 0 ∧ F.fishingMortality ≥ 0 ∧
  F.recruitmentRate ≥ 0 ∧ F.bycatchRate ≥ 0 ∧ F.managementEffectiveness ∧ F.quotaImplemented ∧
  (F.marineProtectedAreaCoverage ≥ 0 ∧ F.marineProtectedAreaCoverage ≤ 100) ∧ F.complianceLevel

theorem fisheries_management_closed_from_evidence (F : FisheriesManagementPackage)
    (E : FisheriesManagementEvidence F) : FisheriesManagementClosed F := by
  refine And.intro E.stockBiomassClosed (And.intro E.maximumSustainableYieldClosed
    (And.intro E.fishingMortalityClosed (And.intro E.recruitmentRateClosed
    (And.intro E.bycatchRateClosed (And.intro E.managementEffectivenessClosed
    (And.intro E.quotaImplementedClosed (And.intro E.marineProtectedAreaCoverageClosed
      E.complianceLevelClosed)))))))

end EcologyMarineEcologyCanonicalLaneLean
end HautevilleHouse