import CauchyKovalevskayaTheoremsTheoremCanonicalLaneLean.AnalyticFunction

namespace HautevilleHouse
namespace CauchyKovalevskayaTheoremsTheoremCanonicalLaneLean

structure CauchyKovalevskayaProblemPackage where
  unknownFunctions : Type u
  independentVariables : Type v
  pdeSystem : Prop
  initialData : Prop
  analyticCoefficients : Prop

structure CauchyKovalevskayaProblemEvidence (P : CauchyKovalevskayaProblemPackage) where
  pdeSystemClosed : P.pdeSystem
  initialDataClosed : P.initialData
  analyticCoefficientsClosed : P.analyticCoefficients

def CauchyKovalevskayaProblemClosed (P : CauchyKovalevskayaProblemPackage) : Prop :=
  P.pdeSystem ∧ P.initialData ∧ P.analyticCoefficients

theorem cauchy_kovalevskaya_problem_closed_from_evidence (P : CauchyKovalevskayaProblemPackage) (E : CauchyKovalevskayaProblemEvidence P) :
    CauchyKovalevskayaProblemClosed P := by
  exact And.intro E.pdeSystemClosed (And.intro E.initialDataClosed E.analyticCoefficientsClosed)

end CauchyKovalevskayaTheoremsTheoremCanonicalLaneLean
end HautevilleHouse
