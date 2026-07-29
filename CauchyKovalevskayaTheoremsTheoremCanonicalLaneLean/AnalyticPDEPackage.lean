import HautevilleHouse.CauchyKovalevskayaTheoremsTheoremCanonicalLaneLean.Projection

/-!
# Analytic PDE Package

This package records the analytic PDE structure for the Cauchy–Kovalevskaya theorem.
-/

namespace HautevilleHouse
namespace CauchyKovalevskayaTheoremsTheoremCanonicalLaneLean

structure AnalyticPDEPackage where
  independentVariables : Type u
  dependentVariables : Type v
  pdeSystem : Type w
  analyticCoefficients : Prop
  cauchyData : independentVariables → dependentVariables
  analyticSolution : Prop
  analyticCoefficientsTerm : analyticCoefficients

def AnalyticPDEClosed (P : AnalyticPDEPackage) : Prop :=
  P.analyticCoefficients ∧ P.analyticSolution

end CauchyKovalevskayaTheoremsTheoremCanonicalLaneLean
end HautevilleHouse