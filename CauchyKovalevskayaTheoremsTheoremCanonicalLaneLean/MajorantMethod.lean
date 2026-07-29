import HautevilleHouse.CauchyKovalevskayaTheoremsTheoremCanonicalLaneLean.ExistenceUniqueness

namespace HautevilleHouse
namespace CauchyKovalevskayaTheoremsTheoremCanonicalLaneLean

structure MajorantMethodPackage {A : AdmissibleClass} {P : AnalyticPDEPackage A}
    {E : ExistenceUniquenessPackage P} where
  majorantSeriesConstructed : Prop
  comparisonPrinciple : Prop
  convergenceRadiusPositivity : Prop
  solutionAnalyticInNeighborhood : Prop

structure MajorantMethodEvidence {A : AdmissibleClass} {P : AnalyticPDEPackage A}
    {E : ExistenceUniquenessPackage P} (M : MajorantMethodPackage E) where
  majorantSeriesConstructedClosed : M.majorantSeriesConstructed
  comparisonPrincipleClosed : M.comparisonPrinciple
  convergenceRadiusPositivityClosed : M.convergenceRadiusPositivity
  solutionAnalyticInNeighborhoodClosed : M.solutionAnalyticInNeighborhood

def MajorantMethodClosed {A : AdmissibleClass} {P : AnalyticPDEPackage A}
    {E : ExistenceUniquenessPackage P} (M : MajorantMethodPackage E) : Prop :=
  M.majorantSeriesConstructed ∧ M.comparisonPrinciple ∧
  M.convergenceRadiusPositivity ∧ M.solutionAnalyticInNeighborhood

theorem majorant_method_closed_from_evidence {A : AdmissibleClass} {P : AnalyticPDEPackage A}
    {E : ExistenceUniquenessPackage P} (M : MajorantMethodPackage E)
    (M' : MajorantMethodEvidence M) : MajorantMethodClosed M := by
  exact And.intro M'.majorantSeriesConstructedClosed
    (And.intro M'.comparisonPrincipleClosed
      (And.intro M'.convergenceRadiusPositivityClosed M'.solutionAnalyticInNeighborhoodClosed))

end CauchyKovalevskayaTheoremsTheoremCanonicalLaneLean
end HautevilleHouse