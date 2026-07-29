import CauchyKovalevskayaTheoremsTheoremCanonicalLaneLean.BridgeLemmas

namespace HautevilleHouse
namespace CauchyKovalevskayaTheoremsTheoremCanonicalLaneLean

def gateClosed (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : AdmissibleClass) :
    gateClosed A := by
  exact A.gateWitness

end CauchyKovalevskayaTheoremsTheoremCanonicalLaneLean
end HautevilleHouse