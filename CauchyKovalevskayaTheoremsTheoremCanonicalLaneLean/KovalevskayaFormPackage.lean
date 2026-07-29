import HautevilleHouse.CauchyKovalevskayaTheoremsTheoremCanonicalLaneLean.AnalyticPDEPackage

/-!
# Kovalevskaya Form Package
-/

namespace HautevilleHouse
namespace CauchyKovalevskayaTheoremsTheoremCanonicalLaneLean

structure KovalevskayaFormPackage {P : AnalyticPDEPackage} where
  normalForm : Prop
  highestDerivativeExplicit : Prop
  analyticRightHandSide : Prop
  normalFormTerm : normalForm
  highestDerivativeExplicitTerm : highestDerivativeExplicit
  analyticRightHandSideTerm : analyticRightHandSide

def KovalevskayaFormClosed {P : AnalyticPDEPackage} (K : KovalevskayaFormPackage P) : Prop :=
  K.normalForm ∧ K.highestDerivativeExplicit ∧ K.analyticRightHandSide

end CauchyKovalevskayaTheoremsTheoremCanonicalLaneLean
end HautevilleHouse