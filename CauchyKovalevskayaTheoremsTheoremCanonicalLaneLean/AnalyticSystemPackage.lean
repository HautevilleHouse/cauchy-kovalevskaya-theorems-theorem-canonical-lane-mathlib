import CauchyKovalevskayaTheoremsTheoremCanonicalLaneLean.CauchyKovalevskayaAdmissibleClass

namespace HautevilleHouse
namespace CauchyKovalevskayaTheoremsTheoremCanonicalLaneLean

structure AnalyticSystemPackage where
  dependentVariables : Nat
  independentVariables : Nat
  systemOrder : Nat
  analyticCoefficients : Prop
  initialDataAnalytic : Prop
  systemAnalytic : Prop

structure AnalyticSystemEvidence (S : AnalyticSystemPackage) where
  analyticCoefficientsClosed : S.analyticCoefficients
  initialDataAnalyticClosed : S.initialDataAnalytic
  systemAnalyticClosed : S.systemAnalytic

def AnalyticSystemClosed (S : AnalyticSystemPackage) : Prop :=
  S.analyticCoefficients ∧ S.initialDataAnalytic ∧ S.systemAnalytic

theorem analytic_system_closed_from_evidence (S : AnalyticSystemPackage)
    (E : AnalyticSystemEvidence S) : AnalyticSystemClosed S := by
  exact And.intro E.analyticCoefficientsClosed
    (And.intro E.initialDataAnalyticClosed E.systemAnalyticClosed)

end CauchyKovalevskayaTheoremsTheoremCanonicalLaneLean
end HautevilleHouse