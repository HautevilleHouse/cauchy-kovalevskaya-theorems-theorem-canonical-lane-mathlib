import HautevilleHouse.CauchyKovalevskayaTheoremsTheoremCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace CauchyKovalevskayaTheoremsTheoremCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

def cauchyKovalevskayaProjection : Projection CauchyKovalevskayaEndgameState := {
  toFun := fun x => x,
  idempotent := by intro x; rfl
}

theorem cauchy_kovalevskaya_projection_idempotent (x : CauchyKovalevskayaEndgameState) :
    cauchyKovalevskayaProjection.toFun (cauchyKovalevskayaProjection.toFun x) = cauchyKovalevskayaProjection.toFun x := by
  exact cauchyKovalevskayaProjection.idempotent x

end CauchyKovalevskayaTheoremsTheoremCanonicalLaneLean
end HautevilleHouse