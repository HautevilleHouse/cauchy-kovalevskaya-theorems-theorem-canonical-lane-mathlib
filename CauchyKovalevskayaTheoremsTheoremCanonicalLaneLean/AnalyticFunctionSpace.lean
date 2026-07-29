import CauchyKovalevskayaTheoremsTheoremCanonicalLaneLean.MathlibObjects

namespace HautevilleHouse
namespace CauchyKovalevskayaTheoremsTheoremCanonicalLaneLean

structure AnalyticFunctionSpace where
  carrier : Type u
  topology : TopologicalSpace carrier
  analyticStructure : Prop
  convergenceRadius : Type v
  analyticFunctionsDefined : Prop
  analyticContinuationProperty : Prop

structure AnalyticFunctionSpaceEvidence (A : AnalyticFunctionSpace) where
  analyticStructureClosed : A.analyticStructure
  analyticFunctionsDefinedClosed : A.analyticFunctionsDefined
  analyticContinuationPropertyClosed : A.analyticContinuationProperty

def AnalyticFunctionSpaceClosed (A : AnalyticFunctionSpace) : Prop :=
  A.analyticStructure ∧ A.analyticFunctionsDefined ∧ A.analyticContinuationProperty

theorem analytic_function_space_closed_from_evidence
    (A : AnalyticFunctionSpace) (E : AnalyticFunctionSpaceEvidence A) :
    AnalyticFunctionSpaceClosed A := by
  exact And.intro E.analyticStructureClosed
    (And.intro E.analyticFunctionsDefinedClosed E.analyticContinuationPropertyClosed)

end CauchyKovalevskayaTheoremsTheoremCanonicalLaneLean
end HautevilleHouse