import HautevilleHouse.CauchyKovalevskayaTheoremsTheoremCanonicalLaneLean.AnalyticPDEFramework

namespace HautevilleHouse
namespace CauchyKovalevskayaTheoremsTheoremCanonicalLaneLean

structure ExistenceUniquenessPackage {A : AdmissibleClass} (P : AnalyticPDEPackage A) where
  localExistence : Prop
  uniqueness : Prop
  analyticContinuation : Prop
  cauchyKovalevskayaTheoremProved : Prop

structure ExistenceUniquenessEvidence {A : AdmissibleClass} {P : AnalyticPDEPackage A}
    (E : ExistenceUniquenessPackage P) where
  localExistenceClosed : E.localExistence
  uniquenessClosed : E.uniqueness
  analyticContinuationClosed : E.analyticContinuation
  cauchyKovalevskayaTheoremProvedClosed : E.cauchyKovalevskayaTheoremProved

def ExistenceUniquenessClosed {A : AdmissibleClass} {P : AnalyticPDEPackage A}
    (E : ExistenceUniquenessPackage P) : Prop :=
  E.localExistence ∧ E.uniqueness ∧ E.analyticContinuation ∧ E.cauchyKovalevskayaTheoremProved

theorem existence_uniqueness_closed_from_evidence {A : AdmissibleClass} {P : AnalyticPDEPackage A}
    (E : ExistenceUniquenessPackage P) (E' : ExistenceUniquenessEvidence E) :
    ExistenceUniquenessClosed E := by
  exact And.intro E'.localExistenceClosed
    (And.intro E'.uniquenessClosed
      (And.intro E'.analyticContinuationClosed E'.cauchyKovalevskayaTheoremProvedClosed))

end CauchyKovalevskayaTheoremsTheoremCanonicalLaneLean
end HautevilleHouse