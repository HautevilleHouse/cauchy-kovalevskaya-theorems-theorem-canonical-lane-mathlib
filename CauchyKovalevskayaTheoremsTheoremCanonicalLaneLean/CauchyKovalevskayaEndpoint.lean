import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CauchyKovalevskayaTheoremsTheoremCanonicalLaneLean

structure CauchyKovalevskayaEndpointPackage where
  targetPDE : Type u
  analyticSolutionExists : Prop
  uniquenessOfSolution : Prop
  solutionAnalytic : Prop
  endpointMatchesStatement : Prop

structure CauchyKovalevskayaEndpointEvidence (E : CauchyKovalevskayaEndpointPackage) where
  analyticSolutionExistsClosed : E.analyticSolutionExists
  uniquenessOfSolutionClosed : E.uniquenessOfSolution
  solutionAnalyticClosed : E.solutionAnalytic
  endpointMatchesStatementClosed : E.endpointMatchesStatement

def CauchyKovalevskayaEndpointClosed (E : CauchyKovalevskayaEndpointPackage) : Prop :=
  E.analyticSolutionExists ∧ E.uniquenessOfSolution ∧ E.solutionAnalytic ∧ E.endpointMatchesStatement

theorem cauchy_kovalevskaya_endpoint_closed_from_evidence (E : CauchyKovalevskayaEndpointPackage)
    (Ev : CauchyKovalevskayaEndpointEvidence E) : CauchyKovalevskayaEndpointClosed E := by
  exact And.intro Ev.analyticSolutionExistsClosed
    (And.intro Ev.uniquenessOfSolutionClosed
      (And.intro Ev.solutionAnalyticClosed Ev.endpointMatchesStatementClosed))

end CauchyKovalevskayaTheoremsTheoremCanonicalLaneLean
end HautevilleHouse
