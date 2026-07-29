import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CauchyKovalevskayaTheoremsTheoremCanonicalLaneLean

structure PowerSeriesMethodPackage where
  formalPowerSeries : Type u
  majorantSeries : Type v
  convergenceRadius : Type w
  recurrenceRelation : Prop
  majorantConvergence : Prop
  solutionConstructed : Prop

structure PowerSeriesMethodEvidence (P : PowerSeriesMethodPackage) where
  recurrenceRelationClosed : P.recurrenceRelation
  majorantConvergenceClosed : P.majorantConvergence
  solutionConstructedClosed : P.solutionConstructed

def PowerSeriesMethodClosed (P : PowerSeriesMethodPackage) : Prop :=
  P.recurrenceRelation ∧ P.majorantConvergence ∧ P.solutionConstructed

theorem power_series_method_closed_from_evidence (P : PowerSeriesMethodPackage)
    (E : PowerSeriesMethodEvidence P) : PowerSeriesMethodClosed P := by
  exact And.intro E.recurrenceRelationClosed
    (And.intro E.majorantConvergenceClosed E.solutionConstructedClosed)

end CauchyKovalevskayaTheoremsTheoremCanonicalLaneLean
end HautevilleHouse
