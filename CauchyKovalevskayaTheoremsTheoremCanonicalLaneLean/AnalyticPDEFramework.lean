import HautevilleHouse.CauchyKovalevskayaTheoremsTheoremCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace CauchyKovalevskayaTheoremsTheoremCanonicalLaneLean

structure AnalyticPDEPackage (A : AdmissibleClass) where
  partialDifferentialEquations : Prop
  realAnalyticCoefficients : Prop
  cauchyDataOnNoncharacteristicSurface : Prop
  formalPowerSeriesSolution : Prop
  majorantSeriesConvergent : Prop

structure AnalyticPDEEvidence {A : AdmissibleClass} (P : AnalyticPDEPackage A) where
  partialDifferentialEquationsClosed : P.partialDifferentialEquations
  realAnalyticCoefficientsClosed : P.realAnalyticCoefficients
  cauchyDataOnNoncharacteristicSurfaceClosed : P.cauchyDataOnNoncharacteristicSurface
  formalPowerSeriesSolutionClosed : P.formalPowerSeriesSolution
  majorantSeriesConvergentClosed : P.majorantSeriesConvergent

def AnalyticPDEClosed {A : AdmissibleClass} (P : AnalyticPDEPackage A) : Prop :=
  P.partialDifferentialEquations ∧
  P.realAnalyticCoefficients ∧
  P.cauchyDataOnNoncharacteristicSurface ∧
  P.formalPowerSeriesSolution ∧
  P.majorantSeriesConvergent

theorem analytic_pde_closed_from_evidence {A : AdmissibleClass} (P : AnalyticPDEPackage A)
    (E : AnalyticPDEEvidence P) : AnalyticPDEClosed P := by
  exact And.intro E.partialDifferentialEquationsClosed
    (And.intro E.realAnalyticCoefficientsClosed
      (And.intro E.cauchyDataOnNoncharacteristicSurfaceClosed
        (And.intro E.formalPowerSeriesSolutionClosed E.majorantSeriesConvergentClosed)))

end CauchyKovalevskayaTheoremsTheoremCanonicalLaneLean
end HautevilleHouse