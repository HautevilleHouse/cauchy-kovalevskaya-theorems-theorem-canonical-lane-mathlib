import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CauchyKovalevskayaTheoremsTheoremCanonicalLaneLean

structure AnalyticPDESystem where
  spaceDim : Nat
  timeDim : Nat
  unknownFunctions : List String
  equations : List String
  analyticCoefficients : Prop
  initialData : Prop

def AnalyticPDESystemClosed (S : AnalyticPDESystem) : Prop :=
  S.analyticCoefficients ∧ S.initialData

end CauchyKovalevskayaTheoremsTheoremCanonicalLaneLean
end HautevilleHouse