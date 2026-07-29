import CauchyKovalevskayaTheoremsTheoremCanonicalLaneLean.RiemannianCurvature

/-!
# Cauchy-Kovalevskaya PDE Package
This module records the Cauchy-Kovalevskaya equation over a Riemannian curvature package.
-/

namespace HautevilleHouse
namespace CauchyKovalevskayaTheoremsTheoremCanonicalLaneLean

structure CauchyKovalevskayaPDEPackage (G : RiemannianCurvaturePackage) where
  timeParameter : Type u
  metricAt : timeParameter → Type v
  initialMetricMatches : Prop
  differentiableMetricFamily : Prop
  cauchyKovalevskayaEquation : Prop
  maximalTimeInterval : Prop

structure CauchyKovalevskayaPDEEvidence {G : RiemannianCurvaturePackage}
    (F : CauchyKovalevskayaPDEPackage G) where
  initialMetricMatchesClosed : F.initialMetricMatches
  differentiableMetricFamilyClosed : F.differentiableMetricFamily
  cauchyKovalevskayaEquationClosed : F.cauchyKovalevskayaEquation
  maximalTimeIntervalClosed : F.maximalTimeInterval

def CauchyKovalevskayaPDEClosed {G : RiemannianCurvaturePackage}
    (F : CauchyKovalevskayaPDEPackage G) : Prop :=
  F.initialMetricMatches ∧
  F.differentiableMetricFamily ∧
  F.cauchyKovalevskayaEquation ∧
  F.maximalTimeInterval

theorem cauchy_kovalevskaya_pde_closed_from_evidence
    {G : RiemannianCurvaturePackage} (F : CauchyKovalevskayaPDEPackage G)
    (E : CauchyKovalevskayaPDEEvidence F) : CauchyKovalevskayaPDEClosed F := by
  exact And.intro E.initialMetricMatchesClosed
    (And.intro E.differentiableMetricFamilyClosed
      (And.intro E.cauchyKovalevskayaEquationClosed E.maximalTimeIntervalClosed))

end CauchyKovalevskayaTheoremsTheoremCanonicalLaneLean
end HautevilleHouse