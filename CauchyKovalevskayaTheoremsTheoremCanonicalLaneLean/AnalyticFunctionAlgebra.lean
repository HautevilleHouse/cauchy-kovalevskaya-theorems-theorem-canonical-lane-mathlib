import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CauchyKovalevskayaTheoremsTheoremCanonicalLaneLean

structure AnalyticFunctionAlgebraPackage where
  underlyingRing : Type u
  analyticFunctions : Type v
  ringStructure : Prop
  closureUnderDerivatives : Prop
  compositionClosure : Prop
  implicitFunctionTheorem : Prop

structure AnalyticFunctionAlgebraEvidence (A : AnalyticFunctionAlgebraPackage) where
  ringStructureClosed : A.ringStructure
  closureUnderDerivativesClosed : A.closureUnderDerivatives
  compositionClosureClosed : A.compositionClosure
  implicitFunctionTheoremClosed : A.implicitFunctionTheorem

def AnalyticFunctionAlgebraClosed (A : AnalyticFunctionAlgebraPackage) : Prop :=
  A.ringStructure ∧ A.closureUnderDerivatives ∧ A.compositionClosure ∧ A.implicitFunctionTheorem

theorem analytic_function_algebra_closed_from_evidence (A : AnalyticFunctionAlgebraPackage)
    (E : AnalyticFunctionAlgebraEvidence A) : AnalyticFunctionAlgebraClosed A := by
  exact And.intro E.ringStructureClosed
    (And.intro E.closureUnderDerivativesClosed
      (And.intro E.compositionClosureClosed E.implicitFunctionTheoremClosed))

end CauchyKovalevskayaTheoremsTheoremCanonicalLaneLean
end HautevilleHouse
