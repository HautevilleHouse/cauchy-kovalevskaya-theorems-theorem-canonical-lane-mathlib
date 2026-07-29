import CauchyKovalevskayaTheoremsTheoremCanonicalLaneLean.AnalyticPDESystem

namespace HautevilleHouse
namespace CauchyKovalevskayaTheoremsTheoremCanonicalLaneLean

structure CauchyDataPackage where
  hypersurface : Type u
  analyticHypersurface : Prop
  initialData : Type v
  analyticInitialData : Prop
  compatibilityConditions : Prop
  analyticHypersurfaceTerm : analyticHypersurface
  analyticInitialDataTerm : analyticInitialData
  compatibilityConditionsTerm : compatibilityConditions

structure CauchyDataEvidence (C : CauchyDataPackage) where
  analyticHypersurfaceClosed : C.analyticHypersurface
  analyticInitialDataClosed : C.analyticInitialData
  compatibilityConditionsClosed : C.compatibilityConditions

def CauchyDataPackageClosed (C : CauchyDataPackage) : Prop :=
  C.analyticHypersurface ∧ C.analyticInitialData ∧ C.compatibilityConditions

theorem cauchy_data_package_closed_from_evidence (C : CauchyDataPackage)
    (E : CauchyDataEvidence C) : CauchyDataPackageClosed C :=
  And.intro E.analyticHypersurfaceClosed
    (And.intro E.analyticInitialDataClosed E.compatibilityConditionsClosed)

end CauchyKovalevskayaTheoremsTheoremCanonicalLaneLean
end HautevilleHouse
