import CauchyKovalevskayaTheoremsTheoremCanonicalLaneLean.Geometrization
import Mathlib.Geometry.Manifold.CauchyKovalevskaya

/-!
# Endpoint Classification Package
-/

namespace HautevilleHouse
namespace CauchyKovalevskayaTheoremsTheoremCanonicalLaneLean

structure EndpointClassificationPackage {G : RiemannianCurvaturePackage}
    {F : CauchyKovalevskayaPDEPackage G} {S : ShortTimeExistencePackage F}
    {Epkg : PerelmanEntropyPackage S} {N : NoncollapsingPackage Epkg}
    {Q : SingularityModelsPackage N} {C : CanonicalNeighborhoodsPackage Q}
    {U : SurgeryPackage C} (Z : GeometrizationPackage U) where
  targetManifold : Type u
  targetTopology : TopologicalSpace targetManifold
  analyticCauchyKovalevskayaStatement : Prop
  endpointMatchesCauchyKovalevskayaStatement : Prop

structure EndpointClassificationEvidence {G : RiemannianCurvaturePackage}
    {F : CauchyKovalevskayaPDEPackage G} {S : ShortTimeExistencePackage F}
    {Epkg : PerelmanEntropyPackage S} {N : NoncollapsingPackage Epkg}
    {Q : SingularityModelsPackage N} {C : CanonicalNeighborhoodsPackage Q}
    {U : SurgeryPackage C} {Z : GeometrizationPackage U}
    (Epkg2 : EndpointClassificationPackage Z) where
  analyticCauchyKovalevskayaStatementClosed : Epkg2.analyticCauchyKovalevskayaStatement
  endpointMatchesCauchyKovalevskayaStatementClosed : Epkg2.endpointMatchesCauchyKovalevskayaStatement

def EndpointClassificationClosed {G : RiemannianCurvaturePackage}
    {F : CauchyKovalevskayaPDEPackage G} {S : ShortTimeExistencePackage F}
    {Epkg : PerelmanEntropyPackage S} {N : NoncollapsingPackage Epkg}
    {Q : SingularityModelsPackage N} {C : CanonicalNeighborhoodsPackage Q}
    {U : SurgeryPackage C} {Z : GeometrizationPackage U}
    (Epkg2 : EndpointClassificationPackage Z) : Prop :=
  Epkg2.analyticCauchyKovalevskayaStatement ∧
  Epkg2.endpointMatchesCauchyKovalevskayaStatement

theorem endpoint_classification_closed_from_evidence
    {G : RiemannianCurvaturePackage} {F : CauchyKovalevskayaPDEPackage G}
    {S : ShortTimeExistencePackage F} {Epkg : PerelmanEntropyPackage S}
    {N : NoncollapsingPackage Epkg} {Q : SingularityModelsPackage N}
    {C : CanonicalNeighborhoodsPackage Q} {U : SurgeryPackage C}
    {Z : GeometrizationPackage U} (Epkg2 : EndpointClassificationPackage Z)
    (E : EndpointClassificationEvidence Epkg2) : EndpointClassificationClosed Epkg2 := by
  exact And.intro E.analyticCauchyKovalevskayaStatementClosed
    E.endpointMatchesCauchyKovalevskayaStatementClosed

end CauchyKovalevskayaTheoremsTheoremCanonicalLaneLean
end HautevilleHouse