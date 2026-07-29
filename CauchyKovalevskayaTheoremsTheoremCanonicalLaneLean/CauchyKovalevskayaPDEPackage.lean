import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CauchyKovalevskayaTheoremsTheoremCanonicalLaneLean

structure CauchyKovalevskayaPDEPackage (A : AnalyticFunctionPackage) where
  dependentVariables : ℕ
  independentVariables : ℕ
  systemOrder : ℕ
  coefficientFunctions : List AnalyticFunctionPackage
  analyticCoefficients : ∀ f ∈ coefficientFunctions, AnalyticFunctionClosed f
  analyticCoefficientsTerm : analyticCoefficients

structure CauchyKovalevskayaPDEEvidence {A : AnalyticFunctionPackage}
    (P : CauchyKovalevskayaPDEPackage A) where
  analyticCoefficientsClosed : P.analyticCoefficients

def CauchyKovalevskayaPDEClosed {A : AnalyticFunctionPackage}
    (P : CauchyKovalevskayaPDEPackage A) : Prop :=
  P.analyticCoefficients

theorem cauchy_kovalevskaya_pde_closed_from_evidence
    {A : AnalyticFunctionPackage} (P : CauchyKovalevskayaPDEPackage A)
    (E : CauchyKovalevskayaPDEEvidence P) :
    CauchyKovalevskayaPDEClosed P := by
  exact E.analyticCoefficientsClosed

end CauchyKovalevskayaTheoremsTheoremCanonicalLaneLean
end HautevilleHouse