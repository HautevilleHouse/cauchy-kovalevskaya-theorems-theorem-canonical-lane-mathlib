import CauchyKovalevskayaTheoremsTheoremCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace CauchyKovalevskayaTheoremsTheoremCanonicalLaneLean

structure AnalyticDomainPackage (A : AdmissibleClass) where
  domainCovered : Prop
  convergenceRadiusPositive : Prop
  analyticContinuationPath : Prop
  solutionBoundedOnCompacta : Prop

structure AnalyticDomainEvidence (A : AdmissibleClass) (P : AnalyticDomainPackage A) where
  domainCoveredClosed : P.domainCovered
  convergenceRadiusPositiveClosed : P.convergenceRadiusPositive
  analyticContinuationPathClosed : P.analyticContinuationPath
  solutionBoundedOnCompactaClosed : P.solutionBoundedOnCompacta

def AnalyticDomainClosed (A : AdmissibleClass) (P : AnalyticDomainPackage A) : Prop :=
  P.domainCovered ∧ P.convergenceRadiusPositive ∧ P.analyticContinuationPath ∧ P.solutionBoundedOnCompacta

theorem analytic_domain_closed_from_evidence (A : AdmissibleClass) (P : AnalyticDomainPackage A)
    (E : AnalyticDomainEvidence A P) : AnalyticDomainClosed A P := by
  exact And.intro E.domainCoveredClosed
    (And.intro E.convergenceRadiusPositiveClosed
      (And.intro E.analyticContinuationPathClosed E.solutionBoundedOnCompactaClosed))

end CauchyKovalevskayaTheoremsTheoremCanonicalLaneLean
end HautevilleHouse