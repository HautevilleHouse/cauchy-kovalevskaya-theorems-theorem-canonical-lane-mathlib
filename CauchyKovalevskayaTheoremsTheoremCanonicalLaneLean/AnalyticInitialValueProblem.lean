import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CauchyKovalevskayaTheoremsTheoremCanonicalLaneLean

structure AnalyticInitialValueProblem where
  system : AnalyticPDESystem
  surface : NoncharacteristicSurface
  analyticData : Prop
  solutionRepresentation : Prop
  convergenceGuaranteed : Prop

def AnalyticInitialValueProblemClosed (P : AnalyticInitialValueProblem) : Prop :=
  P.analyticData ∧ P.solutionRepresentation ∧ P.convergenceGuaranteed

end CauchyKovalevskayaTheoremsTheoremCanonicalLaneLean
end HautevilleHouse