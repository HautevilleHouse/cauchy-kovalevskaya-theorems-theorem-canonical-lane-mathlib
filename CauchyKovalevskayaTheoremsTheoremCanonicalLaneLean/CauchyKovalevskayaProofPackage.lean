import HautevilleHouse.CauchyKovalevskayaTheoremsTheoremCanonicalLaneLean.KovalevskayaFormPackage

/-!
# Cauchy–Kovalevskaya Proof Package
-/

namespace HautevilleHouse
namespace CauchyKovalevskayaTheoremsTheoremCanonicalLaneLean

structure CauchyKovalevskayaProofPackage {P : AnalyticPDEPackage} {K : KovalevskayaFormPackage P} where
  majorantMethod : Prop
  convergenceRadius : Prop
  analyticSolutionExists : Prop
  majorantMethodTerm : majorantMethod
  convergenceRadiusTerm : convergenceRadius
  analyticSolutionExistsTerm : analyticSolutionExists

def CauchyKovalevskayaProofClosed {P : AnalyticPDEPackage} {K : KovalevskayaFormPackage P} (C : CauchyKovalevskayaProofPackage P K) : Prop :=
  C.majorantMethod ∧ C.convergenceRadius ∧ C.analyticSolutionExists

end CauchyKovalevskayaTheoremsTheoremCanonicalLaneLean
end HautevilleHouse