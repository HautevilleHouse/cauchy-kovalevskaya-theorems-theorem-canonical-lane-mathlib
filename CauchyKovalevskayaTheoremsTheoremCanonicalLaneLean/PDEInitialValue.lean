import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CauchyKovalevskayaTheoremsTheoremCanonicalLaneLean

structure CauchyKovalevskayaPDEPackage where
  coefficientType : Type u
  variableType : Type v
  unknownFunction : Type w
  initialHypersurface : Type x
  analyticCoefficients : Prop
  analyticInitialData : Prop
  localExistence : Prop
  analyticSolution : Prop

structure CauchyKovalevskayaPDEEvidence (P : CauchyKovalevskayaPDEPackage) where
  analyticCoefficientsClosed : P.analyticCoefficients
  analyticInitialDataClosed : P.analyticInitialData
  localExistenceClosed : P.localExistence
  analyticSolutionClosed : P.analyticSolution

def CauchyKovalevskayaPDEClosed (P : CauchyKovalevskayaPDEPackage) : Prop :=
  P.analyticCoefficients ∧ P.analyticInitialData ∧ P.localExistence ∧ P.analyticSolution

theorem cauchy_kovalevskaya_pde_closed_from_evidence (P : CauchyKovalevskayaPDEPackage)
    (E : CauchyKovalevskayaPDEEvidence P) : CauchyKovalevskayaPDEClosed P := by
  exact And.intro E.analyticCoefficientsClosed
    (And.intro E.analyticInitialDataClosed
      (And.intro E.localExistenceClosed E.analyticSolutionClosed))

end CauchyKovalevskayaTheoremsTheoremCanonicalLaneLean
end HautevilleHouse
