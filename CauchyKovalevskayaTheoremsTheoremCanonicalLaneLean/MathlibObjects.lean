import HautevilleHouse.CauchyKovalevskayaTheoremsTheoremCanonicalLaneLean.TheoremStatement
import CanonicalLaneMathlibCore
import Mathlib.Topology.Basic

namespace HautevilleHouse
namespace CauchyKovalevskayaTheoremsTheoremCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

structure CauchyKovalevskayaSpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure CauchyKovalevskayaAdmittedObject where
  space : CauchyKovalevskayaSpace
  analyticManifold : Prop
  analyticPDE : Prop
  initialData : Prop
  solutionModel : Type
  solutionTopology : TopologicalSpace solutionModel
  solutionExists : Prop
  conclusion : solutionExists

structure CauchyKovalevskayaEndgameState where
  object : CauchyKovalevskayaAdmittedObject

def CauchyKovalevskayaWitnessClosed (O : CauchyKovalevskayaAdmittedObject) : Prop :=
  O.solutionExists

end CauchyKovalevskayaTheoremsTheoremCanonicalLaneLean
end HautevilleHouse