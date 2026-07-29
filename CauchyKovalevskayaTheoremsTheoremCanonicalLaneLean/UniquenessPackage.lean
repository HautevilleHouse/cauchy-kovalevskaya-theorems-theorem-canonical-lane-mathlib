import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CauchyKovalevskayaTheoremsTheoremCanonicalLaneLean

structure UniquenessPackage {A : AnalyticFunctionPackage}
    {P : CauchyKovalevskayaPDEPackage A}
    (L : LocalExistencePackage P) where
  uniqueSolution : Prop
  uniquenessProof : uniqueSolution
  uniqueSolutionTerm : uniqueSolution

def UniquenessClosed {A : AnalyticFunctionPackage}
    {P : CauchyKovalevskayaPDEPackage A}
    {L : LocalExistencePackage P} (U : UniquenessPackage L) : Prop :=
  U.uniqueSolution

end CauchyKovalevskayaTheoremsTheoremCanonicalLaneLean
end HautevilleHouse