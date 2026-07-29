import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EcologyMarineEcologyCanonicalLaneLean

structure FisheryYieldPackage where
  maximumSustainableYield : Prop
  fishingMortality : Prop
  stockRecruitment : Prop
  ecosystemOverfishing : Prop

structure FisheryYieldEvidence (F : FisheryYieldPackage) where
  maximumSustainableYieldClosed : F.maximumSustainableYield
  fishingMortalityClosed : F.fishingMortality
  stockRecruitmentClosed : F.stockRecruitment
  ecosystemOverfishingClosed : F.ecosystemOverfishing

def FisheryYieldClosed (F : FisheryYieldPackage) : Prop :=
  F.maximumSustainableYield ∧ F.fishingMortality ∧ F.stockRecruitment ∧ F.ecosystemOverfishing

theorem fishery_yield_closed_from_evidence (F : FisheryYieldPackage)
    (E : FisheryYieldEvidence F) : FisheryYieldClosed F := by
  exact And.intro E.maximumSustainableYieldClosed
    (And.intro E.fishingMortalityClosed
      (And.intro E.stockRecruitmentClosed E.ecosystemOverfishingClosed))

end EcologyMarineEcologyCanonicalLaneLean
end HautevilleHouse