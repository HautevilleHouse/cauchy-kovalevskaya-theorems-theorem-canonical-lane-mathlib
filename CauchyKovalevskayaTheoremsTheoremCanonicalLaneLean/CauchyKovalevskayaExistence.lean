import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CauchyKovalevskayaTheoremsTheoremCanonicalLaneLean

structure CauchyKovalevskayaExistence where
  system : AnalyticPDESystem
  surface : NoncharacteristicSurface
  series : ConvergentPowerSeries
  localExistence : Prop
  uniqueness : Prop

def CauchyKovalevskayaExistenceClosed (C : CauchyKovalevskayaExistence) : Prop :=
  C.localExistence ∧ C.uniqueness

end CauchyKovalevskayaTheoremsTheoremCanonicalLaneLean
end HautevilleHouse