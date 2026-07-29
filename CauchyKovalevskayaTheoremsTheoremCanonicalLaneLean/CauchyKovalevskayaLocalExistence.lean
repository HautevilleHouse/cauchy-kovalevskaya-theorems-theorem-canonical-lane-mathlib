import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CauchyKovalevskayaTheoremsTheoremCanonicalLaneLean.AnalyticPDESystem

namespace HautevilleHouse
namespace CauchyKovalevskayaTheoremsTheoremCanonicalLaneLean

structure CauchyData {S : AnalyticPDESystem} where
  initialSurface : Type u
  analyticCauchyData : Prop
  nonCharacteristicCondition : Prop
  analyticityDomain : Prop

structure LocalExistencePackage {S : AnalyticPDESystem} (C : CauchyData S) where
  localSolutionExists : Prop
  solutionAnalytic : Prop
  uniquenessOnDomain : Prop
  cauchyKovalevskayaTheorem : Prop

structure LocalExistenceEvidence {S : AnalyticPDESystem} {C : CauchyData S} (L : LocalExistencePackage C) where
  localSolutionExistsClosed : L.localSolutionExists
  solutionAnalyticClosed : L.solutionAnalytic
  uniquenessOnDomainClosed : L.uniquenessOnDomain
  cauchyKovalevskayaTheoremClosed : L.cauchyKovalevskayaTheorem

def LocalExistenceClosed {S : AnalyticPDESystem} {C : CauchyData S} (L : LocalExistencePackage C) : Prop :=
  L.localSolutionExists ∧ L.solutionAnalytic ∧ L.uniquenessOnDomain ∧ L.cauchyKovalevskayaTheorem

theorem local_existence_closed_from_evidence {S : AnalyticPDESystem} {C : CauchyData S}
    (L : LocalExistencePackage C) (E : LocalExistenceEvidence L) : LocalExistenceClosed L := by
  exact And.intro E.localSolutionExistsClosed
    (And.intro E.solutionAnalyticClosed (And.intro E.uniquenessOnDomainClosed E.cauchyKovalevskayaTheoremClosed))

end CauchyKovalevskayaTheoremsTheoremCanonicalLaneLean
end HautevilleHouse
