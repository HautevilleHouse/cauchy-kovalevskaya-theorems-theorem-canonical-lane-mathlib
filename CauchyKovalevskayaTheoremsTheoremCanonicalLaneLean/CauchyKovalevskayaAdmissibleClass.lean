import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CauchyKovalevskayaTheoremsTheoremCanonicalLaneLean

structure CauchyKovalevskayaData where
  analyticSystem : Type u
  initialData : Type v
  analyticCoefficients : Prop
  initialDataAnalytic : Prop
  systemType : String

def CauchyKovalevskayaWitnessClosed (O : CauchyKovalevskayaData) : Prop :=
  O.analyticCoefficients ∧ O.initialDataAnalytic

end CauchyKovalevskayaTheoremsTheoremCanonicalLaneLean
end HautevilleHouse