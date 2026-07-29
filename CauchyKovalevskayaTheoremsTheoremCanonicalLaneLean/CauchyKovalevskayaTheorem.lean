import CauchyKovalevskayaTheoremsTheoremCanonicalLaneLean.AnalyticSystemPackage

namespace HautevilleHouse
namespace CauchyKovalevskayaTheoremsTheoremCanonicalLaneLean

structure CauchyKovalevskayaTheoremPackage (S : AnalyticSystemPackage) where
  localExistence : Prop
  localUniqueness : Prop
  analyticSolution : Prop
  solutionDomain : String

structure CauchyKovalevskayaTheoremEvidence {S : AnalyticSystemPackage}
    (T : CauchyKovalevskayaTheoremPackage S) where
  localExistenceClosed : T.localExistence
  localUniquenessClosed : T.localUniqueness
  analyticSolutionClosed : T.analyticSolution

def CauchyKovalevskayaTheoremClosed {S : AnalyticSystemPackage}
    (T : CauchyKovalevskayaTheoremPackage S) : Prop :=
  T.localExistence ∧ T.localUniqueness ∧ T.analyticSolution

theorem cauchy_kovalevskaya_theorem_closed_from_evidence
    {S : AnalyticSystemPackage} (T : CauchyKovalevskayaTheoremPackage S)
    (E : CauchyKovalevskayaTheoremEvidence T) :
    CauchyKovalevskayaTheoremClosed T := by
  exact And.intro E.localExistenceClosed
    (And.intro E.localUniquenessClosed E.analyticSolutionClosed)

end CauchyKovalevskayaTheoremsTheoremCanonicalLaneLean
end HautevilleHouse