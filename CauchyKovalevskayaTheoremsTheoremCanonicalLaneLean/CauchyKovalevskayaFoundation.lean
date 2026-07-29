import CauchyKovalevskayaTheoremsTheoremCanonicalLaneLean.AnalyticDomainPackage

namespace HautevilleHouse
namespace CauchyKovalevskayaTheoremsTheoremCanonicalLaneLean

structure CauchyKovalevskayaFoundation (A : AdmissibleClass) where
  analyticDomain : AnalyticDomainPackage A
  analyticDomainEvidence : AnalyticDomainEvidence A analyticDomain
  pdeExistenceLocal : Prop
  pdeUniquenessLocal : Prop
  pdeExistenceLocalTerm : pdeExistenceLocal
  pdeUniquenessLocalTerm : pdeUniquenessLocal

def CauchyKovalevskayaFoundationClosed (A : AdmissibleClass) (F : CauchyKovalevskayaFoundation A) : Prop :=
  AnalyticDomainClosed A F.analyticDomain ∧ F.pdeExistenceLocal ∧ F.pdeUniquenessLocal

theorem cauchy_kovalevskaya_foundation_closed_from_evidence (A : AdmissibleClass)
    (F : CauchyKovalevskayaFoundation A) : CauchyKovalevskayaFoundationClosed A F := by
  exact And.intro (analytic_domain_closed_from_evidence A F.analyticDomain F.analyticDomainEvidence)
    (And.intro F.pdeExistenceLocalTerm F.pdeUniquenessLocalTerm)

end CauchyKovalevskayaTheoremsTheoremCanonicalLaneLean
end HautevilleHouse