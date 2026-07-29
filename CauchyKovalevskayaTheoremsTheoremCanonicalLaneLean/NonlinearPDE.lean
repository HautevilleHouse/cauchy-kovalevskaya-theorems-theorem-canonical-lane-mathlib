import CauchyKovalevskayaTheoremsTheoremCanonicalLaneLean.CauchyKovalevskayaProblem

namespace HautevilleHouse
namespace CauchyKovalevskayaTheoremsTheoremCanonicalLaneLean

structure NonlinearPDEPackage where
  order : Nat
  linearPart : Prop
  nonlinearPart : Prop
  analyticNonlinearity : Prop

structure NonlinearPDEEvidence (N : NonlinearPDEPackage) where
  linearPartClosed : N.linearPart
  nonlinearPartClosed : N.nonlinearPart
  analyticNonlinearityClosed : N.analyticNonlinearity

def NonlinearPDEClosed (N : NonlinearPDEPackage) : Prop :=
  N.linearPart ∧ N.nonlinearPart ∧ N.analyticNonlinearity

theorem nonlinear_pde_closed_from_evidence (N : NonlinearPDEPackage) (E : NonlinearPDEEvidence N) :
    NonlinearPDEClosed N := by
  exact And.intro E.linearPartClosed (And.intro E.nonlinearPartClosed E.analyticNonlinearityClosed)

end CauchyKovalevskayaTheoremsTheoremCanonicalLaneLean
end HautevilleHouse
