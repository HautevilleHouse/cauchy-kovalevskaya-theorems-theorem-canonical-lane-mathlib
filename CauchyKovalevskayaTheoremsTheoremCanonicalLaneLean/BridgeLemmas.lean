import canonicalLaneMathlib.AdmissibleClass
import CauchyKovalevskayaTheoremsTheoremCanonicalLaneLean.CauchyKovalevskayaAdmissibleClass

namespace HautevilleHouse
namespace CauchyKovalevskayaTheoremsTheoremCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  CauchyKovalevskayaWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end CauchyKovalevskayaTheoremsTheoremCanonicalLaneLean
end HautevilleHouse