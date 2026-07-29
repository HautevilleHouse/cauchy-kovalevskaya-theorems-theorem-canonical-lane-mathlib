import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CauchyKovalevskayaTheoremsTheoremCanonicalLaneLean

structure AnalyticFunctionPackage where
  domain : Set ℝⁿ
  powerSeries : ℕ → ℝ
  radiusOfConvergence : ℝ
  analyticOnDomain : Prop
  convergenceRadiusPositive : radiusOfConvergence > 0
  analyticOnDomainTerm : analyticOnDomain

structure AnalyticFunctionEvidence (A : AnalyticFunctionPackage) where
  radiusPositiveClosed : A.convergenceRadiusPositive
  analyticOnDomainClosed : A.analyticOnDomain

def AnalyticFunctionClosed (A : AnalyticFunctionPackage) : Prop :=
  A.convergenceRadiusPositive ∧ A.analyticOnDomain

theorem analytic_function_closed_from_evidence
    (A : AnalyticFunctionPackage) (E : AnalyticFunctionEvidence A) :
    AnalyticFunctionClosed A := by
  exact And.intro E.radiusPositiveClosed E.analyticOnDomainClosed

end CauchyKovalevskayaTheoremsTheoremCanonicalLaneLean
end HautevilleHouse