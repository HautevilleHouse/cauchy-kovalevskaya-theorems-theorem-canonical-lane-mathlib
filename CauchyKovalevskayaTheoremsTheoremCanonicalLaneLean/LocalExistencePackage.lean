import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CauchyKovalevskayaTheoremsTheoremCanonicalLaneLean

structure LocalExistencePackage {A : AnalyticFunctionPackage}
    (P : CauchyKovalevskayaPDEPackage A) where
  solutionExistence : Prop
  solutionAnalytic : Prop
  existenceInterval : Set ℝ
  existenceIntervalOpen : Prop
  solutionExistenceTerm : solutionExistence
  solutionAnalyticTerm : solutionAnalytic

structure LocalExistenceEvidence {A : AnalyticFunctionPackage}
    {P : CauchyKovalevskayaPDEPackage A} (L : LocalExistencePackage P) where
  solutionExistenceClosed : L.solutionExistence
  solutionAnalyticClosed : L.solutionAnalytic
  existenceIntervalOpenClosed : L.existenceIntervalOpen

def LocalExistenceClosed {A : AnalyticFunctionPackage}
    {P : CauchyKovalevskayaPDEPackage A} (L : LocalExistencePackage P) : Prop :=
  L.solutionExistence ∧ L.solutionAnalytic ∧ L.existenceIntervalOpen

theorem local_existence_closed_from_evidence
    {A : AnalyticFunctionPackage} {P : CauchyKovalevskayaPDEPackage A}
    (L : LocalExistencePackage P) (E : LocalExistenceEvidence L) :
    LocalExistenceClosed L := by
  exact And.intro E.solutionExistenceClosed
    (And.intro E.solutionAnalyticClosed E.existenceIntervalOpenClosed)

end CauchyKovalevskayaTheoremsTheoremCanonicalLaneLean
end HautevilleHouse