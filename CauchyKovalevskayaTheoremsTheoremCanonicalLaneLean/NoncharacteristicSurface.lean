import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CauchyKovalevskayaTheoremsTheoremCanonicalLaneLean

structure NoncharacteristicSurface where
  spaceDim : Nat
  codimension : Nat
  surfaceDefined : Prop
  noncharacteristicCondition : Prop
  initialDataPrescribed : Prop

def NoncharacteristicSurfaceClosed (S : NoncharacteristicSurface) : Prop :=
  S.noncharacteristicCondition ∧ S.initialDataPrescribed

end CauchyKovalevskayaTheoremsTheoremCanonicalLaneLean
end HautevilleHouse