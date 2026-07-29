import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CauchyKovalevskayaTheoremsTheoremCanonicalLaneLean

structure AdmissibleClass where
  object : CauchyKovalevskayaAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  CauchyKovalevskayaWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end CauchyKovalevskayaTheoremsTheoremCanonicalLaneLean
end HautevilleHouse