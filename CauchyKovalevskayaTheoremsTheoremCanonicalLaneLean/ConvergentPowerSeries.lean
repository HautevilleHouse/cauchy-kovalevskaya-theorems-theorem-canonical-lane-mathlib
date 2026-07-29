import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CauchyKovalevskayaTheoremsTheoremCanonicalLaneLean

structure ConvergentPowerSeries where
  ringType : Type
  variables : List String
  coefficients : List (Nat → Type)
  analytic : Prop
  radius : Nat
  convergenceDomain : Prop

def ConvergentPowerSeriesClosed (S : ConvergentPowerSeries) : Prop :=
  S.analytic ∧ S.convergenceDomain

end CauchyKovalevskayaTheoremsTheoremCanonicalLaneLean
end HautevilleHouse