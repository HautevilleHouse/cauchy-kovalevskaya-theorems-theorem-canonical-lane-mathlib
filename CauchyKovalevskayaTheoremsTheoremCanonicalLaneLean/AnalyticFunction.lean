import CauchyKovalevskayaTheoremsTheoremCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace CauchyKovalevskayaTheoremsTheoremCanonicalLaneLean

structure AnalyticFunctionPackage where
  domain : Type u
  codomain : Type v
  realAnalytic : Prop
  powerSeriesRepresentation : Prop
  radiusOfConvergence : Prop

structure AnalyticFunctionEvidence (A : AnalyticFunctionPackage) where
  realAnalyticClosed : A.realAnalytic
  powerSeriesRepresentationClosed : A.powerSeriesRepresentation
  radiusOfConvergenceClosed : A.radiusOfConvergence

def AnalyticFunctionClosed (A : AnalyticFunctionPackage) : Prop :=
  A.realAnalytic ∧ A.powerSeriesRepresentation ∧ A.radiusOfConvergence

theorem analytic_function_closed_from_evidence (A : AnalyticFunctionPackage) (E : AnalyticFunctionEvidence A) :
    AnalyticFunctionClosed A := by
  exact And.intro E.realAnalyticClosed (And.intro E.powerSeriesRepresentationClosed E.radiusOfConvergenceClosed)

end CauchyKovalevskayaTheoremsTheoremCanonicalLaneLean
end HautevilleHouse
