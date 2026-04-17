import Mathlib

open Complex Filter Function Metric Finset
open scoped BigOperators Topology

theorem exercise_1_13b {f : ℂ → ℂ} (Ω : Set ℂ) (a b : Ω) (h : IsOpen Ω)
  (hf : DifferentiableOn ℂ f Ω) (hc : ∃ (c : ℝ), ∀ z ∈ Ω, (f z).im = c) :
  f a = f b := by
  sorry

open Complex Filter Function Metric Finset
open scoped BigOperators Topology

theorem exercise_1_19a (z : ℂ) (hz : ‖z‖ = 1) (s : ℕ → ℂ)
    (h : s = (λ n => ∑ i ∈ range n, i * z ^ i)) :
    ¬ ∃ y, Tendsto s atTop (𝓝 y) := by
  sorry

open Complex Filter Function Metric Finset
open scoped BigOperators Topology

theorem exercise_1_19c (z : ℂ) (hz : ‖z‖ = 1) (hz2 : z ≠ 1) (s : ℕ → ℂ)
    (h : s = (λ n => ∑ i ∈ range n, i * z / i)) :
    ∃ z, Tendsto s atTop (𝓝 z) := by
  sorry

open Complex Filter Function Metric Finset
open scoped BigOperators Topology

theorem exercise_2_2 :
  Tendsto (λ y => ∫ x in (0 : ℝ)..y, Real.sin x / x) atTop (𝓝 (Real.pi / 2)) := by
  sorry

open Complex Filter Function Metric Finset
open scoped BigOperators Topology

theorem exercise_2_13 {f : ℂ → ℂ}
    (hf : ∀ z₀ : ℂ, ∃ (s : Set ℂ) (c : ℕ → ℂ), IsOpen s ∧ z₀ ∈ s ∧
      ∀ z ∈ s, Tendsto (λ n => ∑ i ∈ range n, (c i) * (z - z₀)^i) atTop (𝓝 (f z₀))
      ∧ ∃ i, c i = 0) :
    ∃ (c : ℕ → ℂ) (n : ℕ), f = λ z => ∑ i ∈ range n, (c i) * z ^ n := by
  sorry

open Complex Filter Function Metric Finset
open scoped BigOperators Topology

theorem exercise_3_4 (a : ℝ) (ha : 0 < a) :
    Tendsto (λ y => ∫ x in -y..y, x * Real.sin x / (x ^ 2 + a ^ 2))
    atTop (𝓝 (Real.pi * (Real.exp (-a)))) := by
  sorry

open Complex Filter Function Metric Finset
open scoped BigOperators Topology

theorem exercise_3_14 {f : ℂ → ℂ} (hf : Differentiable ℂ f)
    (hf_inj : Function.Injective f) :
    ∃ (a b : ℂ), f = (λ z => a * z + b) ∧ a ≠ 0 := by
  sorry

open Complex Filter Function Metric Finset
open scoped BigOperators Topology

theorem exercise_5_1 (f : ℂ → ℂ) (hf : DifferentiableOn ℂ f (ball 0 1))
  (hb : Bornology.IsBounded (Set.range f)) (h0 : f ≠ 0) (zeros : ℕ → ℂ) (hz : ∀ n, f (zeros n) = 0)
  (hzz : Set.range zeros = {z | f z = 0 ∧ z ∈ (ball (0 : ℂ) 1)}) :
  ∃ (z : ℂ), Tendsto (λ n => (∑ i ∈ range n, (1 - zeros i))) atTop (𝓝 z) := by
  sorry

open Topology Filter Real Complex TopologicalSpace Finset
open scoped BigOperators

theorem exercise_1_1b
(x : ℝ)
(y : ℚ)
(h : y ≠ 0)
: ( Irrational x ) -> Irrational ( x * y ) := by
  sorry

open Topology Filter Real Complex TopologicalSpace Finset
open scoped BigOperators

theorem exercise_1_4
(α : Type*) [PartialOrder α]
(s : Set α)
(x y : α)
(h₀ : Set.Nonempty s)
(h₁ : x ∈ lowerBounds s)
(h₂ : y ∈ upperBounds s)
: x ≤ y := by
  sorry

open Topology Filter Real Complex TopologicalSpace Finset
open scoped BigOperators

theorem exercise_1_8 : ¬ ∃ (r : ℂ → ℂ → Prop), IsLinearOrder ℂ r := by
  sorry

open Topology Filter Real Complex TopologicalSpace Finset
open scoped BigOperators

theorem exercise_1_12 (n : ℕ) (f : ℕ → ℂ) :
  ‖∑ i ∈ range n, f i‖ ≤ ∑ i ∈ range n, ‖f i‖ := by
  sorry

open Topology Filter Real Complex TopologicalSpace Finset
open scoped BigOperators

theorem exercise_1_14
  (z : ℂ) (h : ‖z‖ = 1)
  : (‖1 + z‖) ^ 2 + (‖1 - z‖) ^ 2 = 4 := by
  sorry

open Topology Filter Real Complex TopologicalSpace Finset
open scoped BigOperators

theorem exercise_1_17
  (n : ℕ)
  (x y : EuclideanSpace ℝ (Fin n)) -- R^n
  : ‖x + y‖^2 + ‖x - y‖^2 = 2*‖x‖^2 + 2*‖y‖^2 := by
  sorry

open Topology Filter Real Complex TopologicalSpace Finset
open scoped BigOperators

theorem exercise_1_18b
  : ¬ ∀ (x : ℝ), ∃ (y : ℝ), y ≠ 0 ∧ x * y = 0 := by
  sorry

open Topology Filter Real Complex TopologicalSpace Finset
open scoped BigOperators

theorem exercise_2_19a {X : Type*} [MetricSpace X]
  (A B : Set X) (hA : IsClosed A) (hB : IsClosed B) (hAB : Disjoint A B) :
  SeparatedNhds A B := by
  sorry

open Topology Filter Real Complex TopologicalSpace Finset
open scoped BigOperators

theorem exercise_2_25 {K : Type*} [MetricSpace K] [CompactSpace K] :
  ∃ (B : Set (Set K)), Set.Countable B ∧ IsTopologicalBasis B := by
  sorry

open Topology Filter Real Complex TopologicalSpace Finset
open scoped BigOperators

theorem exercise_2_27b (k : ℕ) (E P : Set (EuclideanSpace ℝ (Fin k)))
  (hE : E.Nonempty ∧ ¬ Set.Countable E)
  (hP : P = {x | ∀ U ∈ 𝓝 x, (P ∩ E).Nonempty ∧ ¬ Set.Countable (P ∩ E)}) :
  Set.Countable (E \ P) := by
  sorry

open Topology Filter Real Complex TopologicalSpace Finset
open scoped BigOperators

theorem exercise_2_29 (U : Set ℝ) (hU : IsOpen U) :
  ∃ (f : ℕ → Set ℝ), (∀ n, ∃ a b : ℝ, f n = {x | a < x ∧ x < b}) ∧ (∀ n, f n ⊆ U) ∧
  (∀ n m, n ≠ m → f n ∩ f m = ∅) ∧
  U = ⋃ n, f n := by
  sorry

open Topology Filter Real Complex TopologicalSpace Finset
open scoped BigOperators

theorem exercise_3_2a
  : Tendsto (λ (n : ℝ) => (Real.sqrt (n^2 + n) - n)) atTop (𝓝 (1/2)) := by
  sorry

open Topology Filter Real Complex TopologicalSpace Finset
open scoped BigOperators

theorem exercise_3_5
  (a b : ℕ → ℝ)
  (h : limsup a + limsup b ≠ 0) :
  limsup (λ n => a n + b n) ≤ limsup a + limsup b := by
  sorry

open Topology Filter Real Complex TopologicalSpace Finset
open scoped BigOperators

theorem exercise_3_7
  (a : ℕ → ℝ)
  (h : ∃ y, (Tendsto (λ n => (∑ i ∈ range n, a i)) atTop (𝓝 y))) :
  ∃ y, Tendsto (λ n => (∑ i ∈ range n, Real.sqrt (a i) / n)) atTop (𝓝 y) := by
  sorry

open Topology Filter Real Complex TopologicalSpace Finset
open scoped BigOperators

theorem exercise_3_13
  (a b : ℕ → ℝ)
  (ha : ∃ y, (Tendsto (λ n => (∑ i ∈ range n, |a i|)) atTop (𝓝 y)))
  (hb : ∃ y, (Tendsto (λ n => (∑ i ∈ range n, |b i|)) atTop (𝓝 y))) :
  ∃ y, (Tendsto (λ n => (∑ i ∈ range n,
  λ i => (∑ j ∈ range (i + 1), a j * b (i - j)))) atTop (𝓝 y)) := by
  sorry

open Topology Filter Real Complex TopologicalSpace Finset
open scoped BigOperators

theorem exercise_3_21
  {X : Type*} [MetricSpace X] [CompleteSpace X]
  (E : ℕ → Set X)
  (hE : ∀ n, E n ⊃ E (n + 1))
  (hE' : Tendsto (λ n => Metric.diam (E n)) atTop (𝓝 0)) :
  ∃ a, Set.iInter E = {a} := by
  sorry

open Topology Filter Real Complex TopologicalSpace Finset
open scoped BigOperators

theorem exercise_4_1a
  : ∃ (f : ℝ → ℝ), (∀ (x : ℝ), Tendsto (λ y => f (x + y) - f (x - y)) (𝓝 0) (𝓝 0)) ∧ ¬ Continuous f := by
  sorry

open Topology Filter Real Complex TopologicalSpace Finset
open scoped BigOperators

theorem exercise_4_3
  {α : Type} [MetricSpace α]
  (f : α → ℝ) (h : Continuous f) (z : Set α) (g : z = f⁻¹' {0})
  : IsClosed z := by
  sorry

open Topology Filter Real Complex TopologicalSpace Finset
open scoped BigOperators

theorem exercise_4_4b
  {α : Type} [MetricSpace α]
  {β : Type} [MetricSpace β]
  (f g : α → β)
  (s : Set α)
  (h₁ : Continuous f)
  (h₂ : Continuous g)
  (h₃ : Dense s)
  (h₄ : ∀ x ∈ s, f x = g x)
  : f = g := by
  sorry

open Topology Filter Real Complex TopologicalSpace Finset
open scoped BigOperators

theorem exercise_4_5b
  : ∃ (E : Set ℝ) (f : ℝ → ℝ), (ContinuousOn f E) ∧
  (¬ ∃ (g : ℝ → ℝ), Continuous g ∧ ∀ x ∈ E, f x = g x) := by
  sorry

open Topology Filter Real Complex TopologicalSpace Finset
open scoped BigOperators

theorem exercise_4_8a
  (E : Set ℝ) (f : ℝ → ℝ) (hf : UniformContinuousOn f E)
  (hE : Bornology.IsBounded E) : Bornology.IsBounded (Set.image f E) := by
  sorry

open Topology Filter Real Complex TopologicalSpace Finset
open scoped BigOperators

theorem exercise_4_11a
  {X : Type*} [MetricSpace X]
  {Y : Type*} [MetricSpace Y]
  (f : X → Y) (hf : UniformContinuous f)
  (x : ℕ → X) (hx : CauchySeq x) :
  CauchySeq (λ n => f (x n)) := by
  sorry

open Topology Filter Real Complex TopologicalSpace Finset
open scoped BigOperators

theorem exercise_4_15 {f : ℝ → ℝ}
  (hf : Continuous f) (hof : IsOpenMap f) :
  Monotone f := by
  sorry

open Topology Filter Real Complex TopologicalSpace Finset
open scoped BigOperators

theorem exercise_4_21a {X : Type*} [MetricSpace X]
  (K F : Set X) (hK : IsCompact K) (hF : IsClosed F) (hKF : Disjoint K F) :
  ∃ (δ : ℝ), δ > 0 ∧ ∀ (p q : X), p ∈ K → q ∈ F → dist p q ≥ δ := by
  sorry

open Topology Filter Real Complex TopologicalSpace Finset
open scoped BigOperators

theorem exercise_5_1'
  {f : ℝ → ℝ} (hf : ∀ x y : ℝ, |(f x - f y)| ≤ (x - y) ^ 2) :
  ∃ c, f = λ x => c := by
  sorry

open Topology Filter Real Complex TopologicalSpace Finset
open scoped BigOperators

theorem exercise_5_3 {g : ℝ → ℝ} (hg : Continuous g)
  (hg' : ∃ M : ℝ, ∀ x : ℝ, |deriv g x| ≤ M) :
  ∃ N, ∀ ε > 0, ε < N → Function.Injective (λ x : ℝ => x + ε * g x) := by
  sorry

open Topology Filter Real Complex TopologicalSpace Finset
open scoped BigOperators

theorem exercise_5_5
  {f : ℝ → ℝ}
  (hfd : Differentiable ℝ f)
  (hf : Tendsto (deriv f) atTop (𝓝 0)) :
  Tendsto (λ x => f (x + 1) - f x) atTop atTop := by
  sorry

open Topology Filter Real Complex TopologicalSpace Finset
open scoped BigOperators

theorem exercise_5_7
  {f g : ℝ → ℝ} {x : ℝ}
  (hf' : DifferentiableAt ℝ f 0)
  (hg' : DifferentiableAt ℝ g 0)
  (hg'_ne_0 : deriv g 0 ≠ 0)
  (f0 : f 0 = 0) (g0 : g 0 = 0) :
  Tendsto (λ x => f x / g x) (𝓝 x) (𝓝 (deriv f x / deriv g x)) := by
  sorry

open Topology Filter Real Complex TopologicalSpace Finset
open scoped BigOperators

theorem exercise_5_17
  {f : ℝ → ℝ}
  (hf' : DifferentiableOn ℝ f (Set.Icc (-1) 1))
  (hf'' : DifferentiableOn ℝ (deriv f) (Set.Icc 1 1))
  (hf''' : DifferentiableOn ℝ (deriv (deriv f)) (Set.Icc 1 1))
  (hf0 : f (-1) = 0)
  (hf1 : f 0 = 0)
  (hf2 : f 1 = 1)
  (hf3 : deriv f 0 = 0) :
  ∃ x, x ∈ Set.Ioo (-1 : ℝ) 1 ∧ deriv (deriv (deriv f)) x ≥ 3 := by
  sorry

open Fintype Set Real Ideal Polynomial
open scoped BigOperators

theorem exercise_2_1_18 {G : Type*} [Group G]
  [Fintype G] (hG2 : Even (card G)) :
  ∃ (a : G), a ≠ 1 ∧ a = a⁻¹ := by
  sorry

open Fintype Set Real Ideal Polynomial
open scoped BigOperators

theorem exercise_2_1_26 {G : Type*} [Group G]
  [Fintype G] (a : G) : ∃ (n : ℕ), a ^ n = 1 := by
  sorry

open Fintype Set Real Ideal Polynomial
open scoped BigOperators

def exercise_2_2_3 {G : Type*} [Group G]
  {P : ℕ → Prop} {hP : P = λ i => ∀ a b : G, (a*b)^i = a^i * b^i}
  (hP1 : ∃ n : ℕ, P n ∧ P (n+1) ∧ P (n+2)) : CommGroup G := by
  sorry

open Fintype Set Real Ideal Polynomial
open scoped BigOperators

theorem exercise_2_2_6c {G : Type*} [Group G] {n : ℕ} (hn : n > 1)
  (h : ∀ (a b : G), (a * b) ^ n = a ^ n * b ^ n) :
  ∀ (a b : G), (a * b * a⁻¹ * b⁻¹) ^ (n * (n - 1)) = 1 := by
  sorry

open Fintype Set Real Ideal Polynomial
open scoped BigOperators

theorem exercise_2_3_16 {G : Type*} [Group G]
  (hG : ∀ H : Subgroup G, H = ⊤ ∨ H = ⊥) :
  IsCyclic G ∧ ∃ (p : ℕ) (Fin : Fintype G), Nat.Prime p ∧ @card G Fin = p := by
  sorry

open Fintype Set Real Ideal Polynomial
open scoped BigOperators

theorem exercise_2_5_23 {G : Type*} [Group G]
  (hG : ∀ (H : Subgroup G), H.Normal) (a b : G) :
  ∃ (j : ℤ) , b*a = a^j * b := by
  sorry

open Fintype Set Real Ideal Polynomial
open scoped BigOperators

theorem exercise_2_5_31 {G : Type*} [CommGroup G] [Fintype G]
  {p m n : ℕ} (hp : Nat.Prime p) (hp1 : ¬ p ∣ m) (hG : card G = p^n*m)
  {H : Subgroup G} [Fintype H] (hH : card H = p^n) :
  Subgroup.Characteristic H := by
  sorry

open Fintype Set Real Ideal Polynomial
open scoped BigOperators

def exercise_2_5_43 (G : Type*) [Group G] [Fintype G]
  (hG : card G = 9) :
  CommGroup G := by
  sorry

open Fintype Set Real Ideal Polynomial
open scoped BigOperators

theorem exercise_2_5_52 {G : Type*} [Group G] [Fintype G]
  (φ : G ≃* G) {I : Finset G} (hI : ∀ x ∈ I, φ x = x⁻¹)
  (hI1 : (0.75 : ℚ) * card G ≤ I.card) :
  ∀ x : G, φ x = x⁻¹ ∧ ∀ x y : G, x*y = y*x := by
  sorry

open Fintype Set Real Ideal Polynomial
open scoped BigOperators

theorem exercise_2_7_7 {G : Type*} [Group G] {G' : Type*} [Group G']
  (φ : G →* G') (N : Subgroup G) [N.Normal] :
  (Subgroup.map φ N).Normal := by
  sorry

open Fintype Set Real Ideal Polynomial
open scoped BigOperators

def exercise_2_8_15 {G H: Type*} [Fintype G] [Group G] [Fintype H]
  [Group H] {p q : ℕ} (hp : Nat.Prime p) (hq : Nat.Prime q)
  (h : p > q) (h1 : q ∣ p - 1) (hG : card G = p*q) (hH : card G = p*q) :
  G ≃* H := by
  sorry

open Fintype Set Real Ideal Polynomial
open scoped BigOperators

theorem exercise_2_10_1 {G : Type*} [Group G] (A : Subgroup G)
  [A.Normal] {b : G} (hp : Nat.Prime (orderOf b)) :
  A ⊓ (Subgroup.closure {b}) = ⊥ := by
  sorry

open Fintype Set Real Ideal Polynomial
open scoped BigOperators

theorem exercise_2_11_7 {G : Type*} [Group G] {p : ℕ} (hp : Nat.Prime p)
  {P : Sylow p G} (hP : P.Normal) :
  Subgroup.Characteristic (P : Subgroup G) := by
  sorry

open Fintype Set Real Ideal Polynomial
open scoped BigOperators

theorem exercise_3_2_21 {α : Type*} [Fintype α] {σ τ: Equiv.Perm α}
  (h1 : ∀ a : α, σ a = a ↔ τ a ≠ a) (h2 : τ ∘ σ = id) :
  σ = 1 ∧ τ = 1 := by
  sorry

open Fintype Set Real Ideal Polynomial
open scoped BigOperators

def exercise_4_1_34 : Equiv.Perm (Fin 3) ≃* Matrix.GeneralLinearGroup (Fin 2) (ZMod 2) := by
  sorry

open Fintype Set Real Ideal Polynomial
open scoped BigOperators

theorem exercise_4_2_6 {R : Type*} [Ring R] (a x : R)
  (h : a ^ 2 = 0) : a * (a * x + x * a) = (x + x * a) * a := by
  sorry

open Fintype Set Real Ideal Polynomial
open scoped BigOperators

theorem exercise_4_3_1 {R : Type*} [CommRing R] (a : R) :
  ∃ I : Ideal R, {x : R | x*a=0} = I := by
  sorry

open Fintype Set Real Ideal Polynomial
open scoped BigOperators

theorem exercise_4_4_9 (p : ℕ) (hp : Nat.Prime p) :
  (∃ S : Finset (ZMod p), S.card = (p-1)/2 ∧ ∃ x : ZMod p, x^2 = p) ∧
  (∃ S : Finset (ZMod p), S.card = (p-1)/2 ∧ ¬ ∃ x : ZMod p, x^2 = p) := by
  sorry

open Fintype Set Real Ideal Polynomial
open scoped BigOperators

theorem exercise_4_5_23 {p q: Polynomial (ZMod 7)}
  (hp : p = X^3 - 2) (hq : q = X^3 + 2) :
  Irreducible p ∧ Irreducible q ∧
  (Nonempty $ Polynomial (ZMod 7) ⧸ span ({p} : Set $ Polynomial $ ZMod 7) ≃+*
  Polynomial (ZMod 7) ⧸ span ({q} : Set $ Polynomial $ ZMod 7)) := by
  sorry

open Fintype Set Real Ideal Polynomial
open scoped BigOperators

theorem exercise_4_6_2 : Irreducible (X^3 + 3*X + 2 : Polynomial ℚ) := by
  sorry

open Fintype Set Real Ideal Polynomial
open scoped BigOperators

theorem exercise_5_1_8 {p m n: ℕ} {F : Type*} [Field F]
  (hp : Nat.Prime p) (hF : CharP F p) (a b : F) (hm : m = p ^ n) :
  (a + b) ^ m = a^m + b^m := by
  sorry

open Fintype Set Real Ideal Polynomial
open scoped BigOperators

theorem exercise_5_3_7 {K : Type*} [Field K] {F : Subfield K}
  {a : K} (ha : IsAlgebraic F (a ^ 2)) : IsAlgebraic F a := by
  sorry

open Fintype Set Real Ideal Polynomial
open scoped BigOperators

theorem exercise_5_4_3 {a : ℂ} {p : ℂ → ℂ}
  (hp : p = λ (x : ℂ) => x^5 + Real.sqrt 2 * x^3 + Real.sqrt 5 * x^2 + Real.sqrt 7 * x + 11)
  (ha : p a = 0) :
  ∃ p : Polynomial ℂ , p.degree < 80 ∧ a ∈ p.roots ∧
  ∀ n : p.support, ∃ a b : ℤ, p.coeff n = a / b := by
  sorry

open Fintype Set Real Ideal Polynomial
open scoped BigOperators

theorem exercise_5_6_14 {p m n: ℕ} (hp : Nat.Prime p) {F : Type*}
  [Field F] [CharP F p] (hm : m = p ^ n) :
  card (rootSet (X ^ m - X : Polynomial F) F) = m := by
  sorry

open Filter Real Function
open scoped Topology

theorem exercise_2_26 {M : Type*} [TopologicalSpace M]
  (U : Set M) : IsOpen U ↔ ∀ x ∈ U, ¬ ClusterPt x (𝓟 Uᶜ) := by
  sorry

open Filter Real Function
open scoped Topology

theorem exercise_2_32a (A : Set ℕ) : IsClopen A := by
  sorry

open Filter Real Function
open scoped Topology

theorem exercise_2_46 {M : Type*} [MetricSpace M]
  {A B : Set M} (hA : IsCompact A) (hB : IsCompact B)
  (hAB : Disjoint A B) (hA₀ : A ≠ ∅) (hB₀ : B ≠ ∅) :
  ∃ a₀ b₀, a₀ ∈ A ∧ b₀ ∈ B ∧ ∀ (a : M) (b : M),
  a ∈ A → b ∈ B → dist a₀ b₀ ≤ dist a b := by
  sorry

open Filter Real Function
open scoped Topology

theorem exercise_2_92 {α : Type*} [TopologicalSpace α]
  {s : ℕ → Set α}
  (hs : ∀ i, IsCompact (s i))
  (hs : ∀ i, (s i).Nonempty)
  (hs : ∀ i, (s i) ⊃ (s (i + 1))) :
  (⋂ i, s i).Nonempty := by
  sorry

open Filter Real Function
open scoped Topology

theorem exercise_3_1 {f : ℝ → ℝ}
  (hf : ∀ x y, |f x - f y| ≤ |x - y| ^ 2) :
  ∃ c, f = λ x => c := by
  sorry

open Filter Real Function
open scoped Topology

theorem exercise_3_63a (p : ℝ) (f : ℕ → ℝ) (hp : p > 1)
  (h : f = λ (k : ℕ) => (1 : ℝ) / (k * (Real.log k) ^ p)) :
  ∃ l, Tendsto f atTop (𝓝 l) := by
  sorry

open Filter Real Function
open scoped Topology

theorem exercise_4_15a {α : Type*}
  (a b : ℝ) (F : Set (ℝ → ℝ)) :
  (∀ x : ℝ, ∀ ε > 0, ∃ U ∈ (𝓝 x),
  (∀ y z : U, ∀ f : ℝ → ℝ, f ∈ F → (dist (f y) (f z) < ε)))
  ↔
  ∃ (μ : ℝ → ℝ), ∀ (x : ℝ), (0 : ℝ) ≤ μ x ∧ Tendsto μ (𝓝 0) (𝓝 0) ∧
  (∀ (s t : ℝ) (f : ℝ → ℝ), f ∈ F → |(f s) - (f t)| ≤ μ (|s - t|)) := by
  sorry

open Function Fintype Subgroup Ideal Polynomial Submodule Zsqrtd
open scoped BigOperators

theorem exercise_2_3_2 {G : Type*} [Group G] (a b : G) :
    ∃ g : G, b* a = g * a * b * g⁻¹ := by
  sorry

open Function Fintype Subgroup Ideal Polynomial Submodule Zsqrtd
open scoped BigOperators

--center of (G × H) equivalent, preserves multiplication with (center G) × (center H)

noncomputable def exercise_2_8_6 {G H : Type*} [Group G] [Group H] :
    Subgroup.center (G × H) ≃* (Subgroup.center G) × (Subgroup.center H) := by
  sorry

open Function Fintype Subgroup Ideal Polynomial Submodule Zsqrtd
open scoped BigOperators

open RingHom

theorem exercise_3_2_7 {F : Type*} [Field F] {G : Type*} [Field G]
    (φ : F →+* G) : Injective φ := by
  sorry

open Function Fintype Subgroup Ideal Polynomial Submodule Zsqrtd
open scoped BigOperators

theorem exercise_3_7_2 {K V : Type*} [Field K] [AddCommGroup V]
  [Module K V] {ι : Type*} [Fintype ι] (γ : ι → Submodule K V)
  (h : ∀ i : ι, γ i ≠ ⊤) :
  (⋂ (i : ι), (γ i : Set V)) ≠ ⊤ := by
  sorry

open Function Fintype Subgroup Ideal Polynomial Submodule Zsqrtd
open scoped BigOperators

theorem exercise_6_4_2 {G : Type*} [Group G] [Fintype G] {p q : ℕ}
  (hp : Prime p) (hq : Prime q) (hG : card G = p*q) :
  IsSimpleGroup G → false := by
  sorry

open Function Fintype Subgroup Ideal Polynomial Submodule Zsqrtd
open scoped BigOperators

theorem exercise_6_4_12 {G : Type*} [Group G] [Fintype G]
  (hG : card G = 224) :
  IsSimpleGroup G → false := by
  sorry

open Function Fintype Subgroup Ideal Polynomial Submodule Zsqrtd
open scoped BigOperators

theorem exercise_10_1_13 {R : Type*} [Ring R] {x : R}
  (hx : IsNilpotent x) : IsUnit (1 + x) := by
  sorry

open Function Fintype Subgroup Ideal Polynomial Submodule Zsqrtd
open scoped BigOperators

theorem exercise_10_6_7 {I : Ideal GaussianInt}
  (hI : I ≠ ⊥) : ∃ (z : I), z ≠ 0 ∧ (z : GaussianInt).im = 0 := by
  sorry

open Function Fintype Subgroup Ideal Polynomial Submodule Zsqrtd
open scoped BigOperators

theorem exercise_10_4_7a {R : Type*} [CommRing R] [NoZeroDivisors R]
  (I J : Ideal R) (hIJ : I + J = ⊤) : I * J = I ⊓ J := by
  sorry

open Function Fintype Subgroup Ideal Polynomial Submodule Zsqrtd
open scoped BigOperators

theorem exercise_11_2_13 (a b : ℤ) :
  (ofInt a : GaussianInt) ∣ ofInt b → a ∣ b := by
  sorry

open Function Fintype Subgroup Ideal Polynomial Submodule Zsqrtd
open scoped BigOperators

theorem exercise_11_4_6a {F : Type*} [Field F] [Fintype F] (hF : card F = 7) :
  Irreducible (X ^ 2 + 1 : Polynomial F) := by
  sorry

open Function Fintype Subgroup Ideal Polynomial Submodule Zsqrtd
open scoped BigOperators

theorem exercise_11_4_6c : Irreducible (X^3 - 9 : Polynomial (ZMod 31)) := by
  sorry

open Function Fintype Subgroup Ideal Polynomial Submodule Zsqrtd
open scoped BigOperators

theorem exercise_11_13_3 (N : ℕ):
  ∃ p ≥ N, Nat.Prime p ∧ p + 1 ≡ 0 [MOD 4] := by
  sorry

open Function Fintype Subgroup Ideal Polynomial Submodule Zsqrtd
open scoped BigOperators

theorem exercise_13_6_10 {K : Type*} [Field K] [Fintype Kˣ] :
  (∏ x : Kˣ,  x) = -1 := by
  sorry

open Fintype Complex Polynomial LinearMap FiniteDimensional Module Module.End
open scoped BigOperators

open scoped BigOperators

theorem exercise_1_2 :
  (⟨-1/2, Real.sqrt 3 / 2⟩ : ℂ) ^ 3 = -1 := by
  sorry

open Fintype Complex Polynomial LinearMap FiniteDimensional Module Module.End
open scoped BigOperators

theorem exercise_1_4' {F V : Type*} [AddCommGroup V] [Field F]
  [Module F V] (v : V) (a : F): a • v = 0 ↔ a = 0 ∨ v = 0 := by
  sorry

open Fintype Complex Polynomial LinearMap FiniteDimensional Module Module.End
open scoped BigOperators

theorem exercise_1_7 : ∃ U : Set (ℝ × ℝ),
  (U ≠ ∅) ∧
  (∀ (c : ℝ) (u : ℝ × ℝ), u ∈ U → c • u ∈ U) ∧
  (∀ U' : Submodule ℝ (ℝ × ℝ), U ≠ ↑U') := by
  sorry

open Fintype Complex Polynomial LinearMap FiniteDimensional Module Module.End
open scoped BigOperators

theorem exercise_1_9 {F V : Type*} [AddCommGroup V] [Field F]
  [Module F V] (U W : Submodule F V):
  ∃ U' : Submodule F V, (U'.carrier = ↑U ∩ ↑W ↔ (U ≤ W ∨ W ≤ U)) := by
  sorry

open Fintype Complex Polynomial LinearMap FiniteDimensional Module Module.End
open scoped BigOperators

theorem exercise_3_8 {F V W : Type*}  [AddCommGroup V]
  [AddCommGroup W] [Field F] [Module F V] [Module F W]
  (L : V →ₗ[F] W) :
  ∃ U : Submodule F V, U ⊓ (ker L) = ⊥ ∧
  (LinearMap.range L = LinearMap.range (domRestrict L U)) := by
  sorry

open Fintype Complex Polynomial LinearMap FiniteDimensional Module Module.End
open scoped BigOperators

theorem exercise_5_1'' {F V : Type*} [AddCommGroup V] [Field F]
  [Module F V] {L : V →ₗ[F] V} {n : ℕ} (U : Fin n → Submodule F V)
  (hU : ∀ i : Fin n, Submodule.map L (U i) = U i) :
  Submodule.map L (∑ i : Fin n, U i : Submodule F V) =
  (∑ i : Fin n, U i : Submodule F V) := by
  sorry

open Fintype Complex Polynomial LinearMap FiniteDimensional Module Module.End
open scoped BigOperators

theorem exercise_5_11 {F V : Type*} [AddCommGroup V] [Field F]
  [Module F V] (S T : End F V) :
  (S * T).Eigenvalues = (T * S).Eigenvalues := by
  sorry

open Fintype Complex Polynomial LinearMap FiniteDimensional Module Module.End
open scoped BigOperators

theorem exercise_5_13 {F V : Type*} [AddCommGroup V] [Field F]
  [Module F V] [FiniteDimensional F V] {T : End F V}
  (hS : ∀ U : Submodule F V, finrank F U = finrank F V - 1 →
  Submodule.map T U = U) : ∃ c : F, T = c • LinearMap.id := by
  sorry

open Fintype Complex Polynomial LinearMap FiniteDimensional Module Module.End
open scoped BigOperators

theorem exercise_5_24 {V : Type*} [AddCommGroup V]
  [Module ℝ V] [FiniteDimensional ℝ V] {T : End ℝ V}
  (hT : ∀ c : ℝ, eigenspace T c = ⊥) {U : Submodule ℝ V}
  (hU : Submodule.map T U = U) : Even (finrank U) := by
  sorry

open Fintype Complex Polynomial LinearMap FiniteDimensional Module Module.End
open scoped BigOperators

theorem exercise_6_3 {n : ℕ} (a b : Fin n → ℝ) :
  (∑ i, a i * b i) ^ 2 ≤ (∑ i : Fin n, i * a i ^ 2) * (∑ i, b i ^ 2 / i) := by
  sorry

open Fintype Complex Polynomial LinearMap FiniteDimensional Module Module.End
open scoped BigOperators InnerProductSpace

theorem exercise_6_13 {V : Type*} [NormedAddCommGroup V] [InnerProductSpace ℂ V] {n : ℕ}
  {e : Fin n → V} (he : Orthonormal ℂ e) (v : V) :
  ‖v‖^2 = ∑ i : Fin n, ‖⟪v, e i⟫_ℂ‖^2 ↔ v ∈ Submodule.span ℂ (e '' Set.univ) := by
  sorry

open Fintype Complex Polynomial LinearMap FiniteDimensional Module Module.End
open scoped BigOperators

theorem exercise_7_5 {V : Type*} [NormedAddCommGroup V] [InnerProductSpace ℂ V]
  [FiniteDimensional ℂ V] (hV : finrank V ≥ 2) :
  ∀ U : Submodule ℂ (End ℂ V), U.carrier ≠
  {T | T * adjoint T = adjoint T * T} := by
  sorry

open Fintype Complex Polynomial LinearMap FiniteDimensional Module Module.End
open scoped BigOperators

theorem exercise_7_9 {V : Type*} [NormedAddCommGroup V] [InnerProductSpace ℂ V]
  [FiniteDimensional ℂ V] (T : End ℂ V)
  (hT : T * adjoint T = adjoint T * T) :
  IsSelfAdjoint T ↔ ∀ e : T.Eigenvalues, (e : ℂ).im = 0 := by
  sorry

open Fintype Complex Polynomial LinearMap FiniteDimensional Module Module.End
open scoped BigOperators

theorem exercise_7_11 {V : Type*} [NormedAddCommGroup V] [InnerProductSpace ℂ V]
  [FiniteDimensional ℂ V] {T : End ℂ V} (hT : T*adjoint T = adjoint T*T) :
  ∃ (S : End ℂ V), S ^ 2 = T := by
  sorry

open Fintype Subgroup Set Polynomial Ideal
open scoped BigOperators

theorem exercise_1_1_2a : ∃ a b : ℤ, a - b ≠ b - a := by
  sorry

open Fintype Subgroup Set Polynomial Ideal
open scoped BigOperators

theorem exercise_1_1_4 (n : ℕ) :
  ∀ (a b c : ℕ), (a * b) * c ≡ a * (b * c) [ZMOD n] := by
  sorry

open Fintype Subgroup Set Polynomial Ideal
open scoped BigOperators

theorem exercise_1_1_15 {G : Type*} [Group G] (as : List G) :
  as.prod⁻¹ = (as.reverse.map (λ x => x⁻¹)).prod := by
  sorry

open Fintype Subgroup Set Polynomial Ideal
open scoped BigOperators

theorem exercise_1_1_17 {G : Type*} [Group G] {x : G} {n : ℕ}
  (hxn: orderOf x = n) :
  x⁻¹ = x ^ (n - 1 : ℤ) := by
  sorry

open Fintype Subgroup Set Polynomial Ideal
open scoped BigOperators

theorem exercise_1_1_20 {G : Type*} [Group G] {x : G} :
  orderOf x = orderOf x⁻¹ := by
  sorry

open Fintype Subgroup Set Polynomial Ideal
open scoped BigOperators

theorem exercise_1_1_22b {G: Type*} [Group G] (a b : G) :
  orderOf (a * b) = orderOf (b * a) := by
  sorry

open Fintype Subgroup Set Polynomial Ideal
open scoped BigOperators

theorem exercise_1_1_29 {A B : Type*} [Group A] [Group B] :
  ∀ x y : A × B, x*y = y*x ↔ (∀ x y : A, x*y = y*x) ∧
  (∀ x y : B, x*y = y*x) := by
  sorry

open Fintype Subgroup Set Polynomial Ideal
open scoped BigOperators

theorem exercise_1_3_8 : Infinite (Equiv.Perm ℕ) := by
  sorry

open Fintype Subgroup Set Polynomial Ideal
open scoped BigOperators

noncomputable def exercise_1_6_11 {A B : Type*} [Group A] [Group B] :
  A × B ≃* B × A := by
  sorry

open Fintype Subgroup Set Polynomial Ideal
open scoped BigOperators

theorem exercise_1_6_23 {G : Type*}
  [Group G] (σ : MulAut G) (hs : ∀ g : G, σ g = 1 → g = 1)
  (hs2 : ∀ g : G, σ (σ g) = g) :
  ∀ x y : G, x*y = y*x := by
  sorry

open Fintype Subgroup Set Polynomial Ideal
open scoped BigOperators

theorem exercise_2_1_13 (H : AddSubgroup ℚ) {x : ℚ}
  (hH : x ∈ H → (1 / x) ∈ H):
  H = ⊥ ∨ H = ⊤ := by
  sorry

open Fintype Subgroup Set Polynomial Ideal
open scoped BigOperators

theorem exercise_2_4_16a {G : Type*} [Group G] {H : Subgroup G}
  (hH : H ≠ ⊤) :
  ∃ M : Subgroup G, M ≠ ⊤ ∧
  ∀ K : Subgroup G, M ≤ K → K = M ∨ K = ⊤ ∧
  H ≤ M := by
  sorry

open Fintype Subgroup Set Polynomial Ideal
open scoped BigOperators

theorem exercise_2_4_16c {n : ℕ} (H : AddSubgroup (ZMod n)) :
  ∃ p : (ZMod n), Prime p ∧ H = AddSubgroup.closure {p} ↔
  (H ≠ ⊤ ∧ ∀ K : AddSubgroup (ZMod n), H ≤ K → K = H ∨ K = ⊤) := by
  sorry

open Fintype Subgroup Set Polynomial Ideal
open scoped BigOperators

theorem exercise_3_1_22a (G : Type*) [Group G] (H K : Subgroup G)
  [Normal H] [Normal K] :
  Normal (H ⊓ K) := by
  sorry

open Fintype Subgroup Set Polynomial Ideal
open scoped BigOperators

theorem exercise_3_2_8 {G : Type*} [Group G] (H K : Subgroup G)
  [Fintype H] [Fintype K]
  (hHK : Nat.Coprime (card H) (card K)) :
  H ⊓ K = ⊥ := by
  sorry

open Fintype Subgroup Set Polynomial Ideal
open scoped BigOperators

theorem exercise_3_2_16 (p : ℕ) (hp : Nat.Prime p) (a : ℕ) :
  Nat.Coprime a p → a ^ p ≡ a [ZMOD p] := by
  sorry

open Fintype Subgroup Set Polynomial Ideal
open scoped BigOperators

theorem exercise_3_3_3 {p : Nat.Primes} {G : Type*} [Group G]
  {H : Subgroup G} [hH : H.Normal] (hH1 : H.index = p) :
  ∀ K : Subgroup G, K ≤ H ∨ H ⊔ K = ⊤ ∨ (K ⊓ H).relIndex K = p := by
  sorry

open Fintype Subgroup Set Polynomial Ideal
open scoped BigOperators

theorem exercise_3_4_4 {G : Type*} [CommGroup G] [Fintype G] {n : ℕ}
    (hn : n ∣ (card G)) :
    ∃ (H : Subgroup G) (H_fin : Fintype H), @card H H_fin = n := by
  sorry

open Fintype Subgroup Set Polynomial Ideal
open scoped BigOperators

theorem exercise_3_4_5b {G : Type*} [Group G] [IsSolvable G]
  (H : Subgroup G) [Normal H] :
  IsSolvable (G ⧸ H) := by
  sorry

open Fintype Subgroup Set Polynomial Ideal
open scoped BigOperators

theorem exercise_4_2_8 {G : Type*} [Group G] {H : Subgroup G}
  {n : ℕ} (hn : n > 0) (hH : H.index = n) :
  ∃ K ≤ H, K.Normal ∧ K.index ≤ n.factorial := by
  sorry

open Fintype Subgroup Set Polynomial Ideal
open scoped BigOperators

theorem exercise_4_2_9a {G : Type*} [Fintype G] [Group G] {p α : ℕ}
  (hp : p.Prime) (ha : α > 0) (hG : card G = p ^ α) :
  ∀ H : Subgroup G, H.index = p → H.Normal := by
  sorry

open Fintype Subgroup Set Polynomial Ideal
open scoped BigOperators

theorem exercise_4_4_2 {G : Type*} [Fintype G] [Group G]
  {p q : Nat.Primes} (hpq : p ≠ q) (hG : card G = p*q) :
  IsCyclic G := by
  sorry

open Fintype Subgroup Set Polynomial Ideal
open scoped BigOperators

theorem exercise_4_4_6b :
  ∃ (G : Type*) (hG : Group G) (H : @Subgroup G hG), @Characteristic G hG H  ∧ ¬ @Normal G hG H := by
  sorry

open Fintype Subgroup Set Polynomial Ideal
open scoped BigOperators

theorem exercise_4_4_8a {G : Type*} [Group G] (H K : Subgroup G)
  (hHK : H ≤ K) [hHK1 : (H.subgroupOf K).Normal] [hK : K.Normal] :
  H.Normal := by
  sorry

open Fintype Subgroup Set Polynomial Ideal
open scoped BigOperators

theorem exercise_4_5_13 {G : Type*} [Group G] [Fintype G]
  (hG : card G = 56) :
  ∃ (p : ℕ) (P : Sylow p G), P.Normal := by
  sorry

open Fintype Subgroup Set Polynomial Ideal
open scoped BigOperators

theorem exercise_4_5_15 {G : Type*} [Group G] [Fintype G]
  (hG : card G = 351) :
  ∃ (p : ℕ) (P : Sylow p G), P.Normal := by
  sorry

open Fintype Subgroup Set Polynomial Ideal
open scoped BigOperators

theorem exercise_4_5_17 {G : Type*} [Fintype G] [Group G]
  (hG : card G = 105) :
  Nonempty (Sylow 5 G) ∧ Nonempty (Sylow 7 G) := by
  sorry

open Fintype Subgroup Set Polynomial Ideal
open scoped BigOperators

theorem exercise_4_5_19 {G : Type*} [Fintype G] [Group G]
  (hG : card G = 6545) : ¬ IsSimpleGroup G := by
  sorry

open Fintype Subgroup Set Polynomial Ideal
open scoped BigOperators

theorem exercise_4_5_21 {G : Type*} [Fintype G] [Group G]
  (hG : card G = 2907) : ¬ IsSimpleGroup G := by
  sorry

open Fintype Subgroup Set Polynomial Ideal
open scoped BigOperators

theorem exercise_4_5_23' {G : Type*} [Fintype G] [Group G]
  (hG : card G = 462) : ¬ IsSimpleGroup G := by
  sorry

open Fintype Subgroup Set Polynomial Ideal
open scoped BigOperators

theorem exercise_4_5_33 {G : Type*} [Group G] [Fintype G] {p : ℕ}
  (P : Sylow p G) [hP : P.Normal] (H : Subgroup G) [Fintype H] :
  ∀ R : Sylow p H, R.toSubgroup = (H ⊓ P.toSubgroup).subgroupOf H ∧
  Nonempty (Sylow p H) := by
  sorry

open Fintype Subgroup Set Polynomial Ideal
open scoped BigOperators

theorem exercise_7_1_2 {R : Type*} [Ring R] {u : R}
  (hu : IsUnit u) : IsUnit (-u) := by
  sorry

open Fintype Subgroup Set Polynomial Ideal
open scoped BigOperators

theorem exercise_7_1_12 {F : Type*} [Field F] {K : Subring F}
  (hK : (1 : F) ∈ K) : IsDomain K := by
  sorry

open Fintype Subgroup Set Polynomial Ideal
open scoped BigOperators

theorem exercise_7_2_2 {R : Type*} [Ring R] (p : Polynomial R) :
  p ∣ 0 ↔ ∃ b : R, b ≠ 0 ∧ b • p = 0 := by
  sorry

open Fintype Subgroup Set Polynomial Ideal
open scoped BigOperators

theorem exercise_7_3_16 {R S : Type*} [Ring R] [Ring S]
  {φ : R →+* S} (hf : Function.Surjective φ) :
  φ '' (center R) ⊂ center S := by
  sorry

open Fintype Subgroup Set Polynomial Ideal
open scoped BigOperators

theorem exercise_7_4_27 {R : Type*} [CommRing R] (hR : (0 : R) ≠ 1)
  {a : R} (ha : IsNilpotent a) (b : R) :
  IsUnit (1-a*b) := by
  sorry

open Fintype Subgroup Set Polynomial Ideal
open scoped BigOperators

theorem exercise_8_2_4 {R : Type*} [Ring R][NoZeroDivisors R]
  [CommMonoidWithZero R] [IsCancelMulZero R] [GCDMonoid R]
  (h1 : ∀ a b : R, a ≠ 0 → b ≠ 0 → ∃ r s : R, gcd a b = r*a + s*b)
  (h2 : ∀ a : ℕ → R, (∀ i j : ℕ, i < j → a i ∣ a j) →
  ∃ N : ℕ, ∀ n ≥ N, ∃ u : R, IsUnit u ∧ a n = u * a N) :
  IsPrincipalIdealRing R := by
  sorry

open Fintype Subgroup Set Polynomial Ideal
open scoped BigOperators

theorem exercise_8_3_5a {n : ℤ} (hn0 : n > 3) (hn1 : Squarefree n) :
  Irreducible (2 : Zsqrtd $ -n) ∧
  Irreducible (⟨0, 1⟩ : Zsqrtd $ -n) ∧
  Irreducible (1 + ⟨0, 1⟩ : Zsqrtd $ -n) := by
  sorry

open Fintype Subgroup Set Polynomial Ideal
open scoped BigOperators

theorem exercise_8_3_6b {q : ℕ} (hq0 : q.Prime)
  (hq1 : q ≡ 3 [ZMOD 4]) {R : Type} [Ring R]
  (hR : R = (GaussianInt ⧸ Ideal.span ({↑q} : Set GaussianInt))) :
  IsField R ∧ ∃ finR : Fintype R, @card R finR = q^2 := by
  sorry

open Fintype Subgroup Set Polynomial Ideal
open scoped BigOperators

theorem exercise_9_1_10 {f : ℕ → MvPolynomial ℕ ℤ}
  (hf : f = λ i => MvPolynomial.X i * MvPolynomial.X (i+1)):
  Infinite (minimalPrimes (MvPolynomial ℕ ℤ ⧸ span (range f))) := by
  sorry

open Fintype Subgroup Set Polynomial Ideal
open scoped BigOperators

theorem exercise_9_4_2a : Irreducible (X^4 - 4*X^3 + 6 : Polynomial ℤ) := by
  sorry

open Fintype Subgroup Set Polynomial Ideal
open scoped BigOperators

theorem exercise_9_4_2c : Irreducible
  (X^4 + 4*X^3 + 6*X^2 + 2*X + 1 : Polynomial ℤ) := by
  sorry

open Fintype Subgroup Set Polynomial Ideal
open scoped BigOperators

theorem exercise_9_4_9 :
  Irreducible (X^2 - C Zsqrtd.sqrtd : Polynomial (Zsqrtd 2)) := by
  sorry

open Fintype Subgroup Set Polynomial Ideal
open scoped BigOperators

def exercise_11_1_13 {ι : Type*} [Fintype ι] :
  (ι → ℝ) ≃ₗ[ℚ] ℝ := by
  sorry

open Filter Set TopologicalSpace
open scoped Topology

theorem exercise_13_3b : ¬ ∀ X : Type, ∀s : Set (Set X),
  (∀ t : Set X, t ∈ s → (Set.Infinite tᶜ ∨ t = ∅ ∨ t = ⊤)) →
  (Set.Infinite (⋃₀ s)ᶜ ∨ (⋃₀ s) = ∅ ∨ (⋃₀ s) = ⊤) := by
  sorry

open Filter Set TopologicalSpace
open scoped Topology

def is_topology (X : Type*) (T : Set (Set X)) :=
  univ ∈ T ∧
  (∀ s t, s ∈ T → t ∈ T → s ∩ t ∈ T) ∧
  (∀s, (∀t ∈ s, t ∈ T) → sUnion s ∈ T)

theorem exercise_13_4a2 :
  ∃ (X I : Type*) (T : I → Set (Set X)),
  (∀ i, is_topology X (T i)) ∧ ¬  is_topology X (⋂ i : I, T i) := by
  sorry

open Filter Set TopologicalSpace
open scoped Topology

theorem exercise_13_4b2 (X I : Type*) (T : I → Set (Set X)) (h : ∀ i, is_topology X (T i)) :
  ∃! T', is_topology X T' ∧ (∀ i, T' ⊆ T i) ∧
  ∀ T'', is_topology X T'' → (∀ i, T'' ⊆ T i) → T' ⊆ T'' := by
  sorry

open Filter Set TopologicalSpace
open scoped Topology

theorem exercise_13_5b {X : Type*}
  [t : TopologicalSpace X] (A : Set (Set X)) (hA : t = generateFrom A) :
  generateFrom A = generateFrom (sInter {T | is_topology X T ∧ A ⊆ T}) := by
  sorry

open Filter Set TopologicalSpace
open scoped Topology

theorem exercise_13_8a :
  IsTopologicalBasis {S : Set ℝ | ∃ a b : ℚ, a < b ∧ S = Set.Ioo ↑a ↑b} := by
  sorry

open Filter Set TopologicalSpace
open scoped Topology

theorem exercise_16_1 {X : Type*} [TopologicalSpace X]
  (Y : Set X)
  (A : Set Y) :
  ∀ U : Set A, IsOpen U ↔ IsOpen (Subtype.val '' U) := by
  sorry

open Filter Set TopologicalSpace
open scoped Topology

def rational (x : ℝ) := x ∈ range ((↑) : ℚ → ℝ)

theorem exercise_16_6
  (S : Set (Set (ℝ × ℝ)))
  (hS : ∀ s, s ∈ S → ∃ a b c d, (rational a ∧ rational b ∧ rational c ∧ rational d
  ∧ s = {x | ∃ x₁ x₂, x = (x₁, x₂) ∧ a < x₁ ∧ x₁ < b ∧ c < x₂ ∧ x₂ < d})) :
  IsTopologicalBasis S := by
  sorry

open Filter Set TopologicalSpace
open scoped Topology

theorem exercise_18_8a {X Y : Type*} [TopologicalSpace X] [TopologicalSpace Y]
  [LinearOrder Y] [OrderTopology Y] {f g : X → Y}
  (hf : Continuous f) (hg : Continuous g) :
  IsClosed {x | f x ≤ g x} := by
  sorry

open Filter Set TopologicalSpace
open scoped Topology

theorem exercise_18_13
  {X : Type*} [TopologicalSpace X] {Y : Type*} [TopologicalSpace Y]
  [T2Space Y] {A : Set X} {f : A → Y} (hf : Continuous f)
  (g : closure A → Y)
  (g_con : Continuous g) :
  ∀ (g' : closure A → Y), Continuous g' →  (∀ (x : closure A), g x = g' x) := by
  sorry

open Filter Set TopologicalSpace
open scoped Topology

theorem exercise_20_2
  [TopologicalSpace (ℝ ×ₗ ℝ)] [OrderTopology (ℝ ×ₗ ℝ)]
  : MetrizableSpace (ℝ ×ₗ ℝ) := by
  sorry

open Filter Set TopologicalSpace
open scoped Topology

abbrev I : Set ℝ := Icc 0 1

theorem exercise_21_6b
  (f : ℕ → I → ℝ )
  (h : ∀ x n, f n x = x ^ n) :
  ¬ ∃ f₀, TendstoUniformly f f₀ atTop := by
  sorry

open Filter Set TopologicalSpace
open scoped Topology

theorem exercise_22_2a {X Y : Type*} [TopologicalSpace X]
  [TopologicalSpace Y] (p : X → Y) (h : Continuous p) :
  IsQuotientMap p ↔ ∃ (f : Y → X), Continuous f ∧ p ∘ f = _root_.id := by
  sorry

open Filter Set TopologicalSpace
open scoped Topology

theorem exercise_22_5 {X Y : Type*} [TopologicalSpace X]
  [TopologicalSpace Y] (p : X → Y) (hp : IsOpenMap p)
  (A : Set X) (hA : IsOpen A) : IsOpenMap (p ∘ Subtype.val : A → Y) := by
  sorry

open Filter Set TopologicalSpace
open scoped Topology

theorem exercise_23_3 {X : Type*} [TopologicalSpace X]
  [TopologicalSpace X] {A : ℕ → Set X}
  (hAn : ∀ n, IsConnected (A n))
  (A₀ : Set X)
  (hA : IsConnected A₀)
  (h : ∀ n, A₀ ∩ A n ≠ ∅) :
  IsConnected (A₀ ∪ (⋃ n, A n)) := by
  sorry

open Filter Set TopologicalSpace
open scoped Topology

theorem exercise_23_6 {X : Type*}
  [TopologicalSpace X] {A C : Set X} (hc : IsConnected C)
  (hCA : C ∩ A ≠ ∅) (hCXA : C ∩ Aᶜ ≠ ∅) :
  C ∩ (frontier A) ≠ ∅ := by
  sorry

open Filter Set TopologicalSpace
open scoped Topology

theorem exercise_23_11 {X Y : Type*} [TopologicalSpace X] [TopologicalSpace Y]
  (p : X → Y) (hq : IsQuotientMap p)
  (hY : ConnectedSpace Y) (hX : ∀ y : Y, IsConnected (p ⁻¹' {y})) :
  ConnectedSpace X := by
  sorry

open Filter Set TopologicalSpace
open scoped Topology

theorem exercise_24_3a [TopologicalSpace I] [CompactSpace I]
  (f : I → I) (hf : Continuous f) :
  ∃ (x : I), f x = x := by
  sorry

open Filter Set TopologicalSpace
open scoped Topology

theorem exercise_25_9 {G : Type*} [TopologicalSpace G] [Group G]
  [IsTopologicalGroup G] (C : Set G) (h : C = connectedComponent 1) :
  ∃ (H : Subgroup G), H.Normal ∧ (H : Set G) = C := by
  sorry

open Filter Set TopologicalSpace
open scoped Topology

theorem exercise_26_12 {X Y : Type*} [TopologicalSpace X] [TopologicalSpace Y]
  (p : X → Y) (h : Function.Surjective p) (hc : Continuous p) (hp : ∀ y, IsCompact (p ⁻¹' {y}))
  (hY : CompactSpace Y) : CompactSpace X := by
  sorry

open Filter Set TopologicalSpace
open scoped Topology

def countably_compact (X : Type*) [TopologicalSpace X] :=
  ∀ U : ℕ → Set X,
  (∀ i, IsOpen (U i)) ∧ ((univ : Set X) ⊆ ⋃ i, U i) →
  (∃ t : Finset ℕ, (univ : Set X) ⊆ ⋃ i ∈ t, U i)

def limit_point_compact (X : Type*) [TopologicalSpace X] :=
  ∀ U : Set X, Infinite U → ∃ x ∈ U, ClusterPt x (𝓟 U)

theorem exercise_28_4 {X : Type*}
  [TopologicalSpace X] (hT1 : T1Space X) :
  countably_compact X ↔ limit_point_compact X := by
  sorry

open Filter Set TopologicalSpace
open scoped Topology

theorem exercise_28_6 {X : Type*} [MetricSpace X]
  [CompactSpace X] {f : X → X} (hf : Isometry f) :
  Function.Bijective f := by
  sorry

open Filter Set TopologicalSpace
open scoped Topology

theorem exercise_29_4 [TopologicalSpace (ℕ → I)] :
  ¬ LocallyCompactSpace (ℕ → I) := by
  sorry

open Filter Set TopologicalSpace
open scoped Topology

theorem exercise_30_10
  {X : ℕ → Type*} [∀ i, TopologicalSpace (X i)]
  (h : ∀ i, ∃ (s : Set (X i)), Countable s ∧ Dense s) :
  ∃ (s : Set (Π i, X i)), Countable s ∧ Dense s := by
  sorry

open Filter Set TopologicalSpace
open scoped Topology

theorem exercise_31_1 {X : Type*} [TopologicalSpace X]
  (hX : RegularSpace X) (x y : X) :
  ∃ (U V : Set X), IsOpen U ∧ IsOpen V ∧ x ∈ U ∧ y ∈ V ∧ closure U ∩ closure V = ∅ := by
  sorry

open Filter Set TopologicalSpace
open scoped Topology

theorem exercise_31_3 {α : Type*} [PartialOrder α]
  [TopologicalSpace α] (h : OrderTopology α) : RegularSpace α := by
  sorry

open Filter Set TopologicalSpace
open scoped Topology

theorem exercise_32_2a
  {ι : Type*} {X : ι → Type*} [∀ i, TopologicalSpace (X i)]
  (h : ∀ i, Nonempty (X i)) (h2 : T2Space (Π i, X i)) :
  ∀ i, T2Space (X i) := by
  sorry

open Filter Set TopologicalSpace
open scoped Topology

theorem exercise_32_2c
  {ι : Type*} {X : ι → Type*} [∀ i, TopologicalSpace (X i)]
  (h : ∀ i, Nonempty (X i)) (h2 : NormalSpace (Π i, X i)) :
  ∀ i, NormalSpace (X i) := by
  sorry

open Filter Set TopologicalSpace
open scoped Topology

theorem exercise_33_7 {X : Type*} [TopologicalSpace X]
  (hX : LocallyCompactSpace X) (hX' : T2Space X) :
  ∀ x A, IsClosed A ∧ ¬ x ∈ A →
  ∃ (f : X → I), Continuous f ∧ f x = 1 ∧ f '' A = {0} := by
  sorry

open Filter Set TopologicalSpace
open scoped Topology

theorem exercise_34_9
  (X : Type*) [TopologicalSpace X] [CompactSpace X]
  (X1 X2 : Set X) (hX1 : IsClosed X1) (hX2 : IsClosed X2)
  (hX : X1 ∪ X2 = univ) (hX1m : MetrizableSpace X1)
  (hX2m : MetrizableSpace X2) : MetrizableSpace X := by
  sorry

open Filter Set TopologicalSpace
open scoped Topology

theorem exercise_43_2 {X : Type*} [MetricSpace X]
  {Y : Type*} [MetricSpace Y] [CompleteSpace Y] (A : Set X)
  (f : X → Y) (hf : UniformContinuousOn f A) :
  ∃! (g : X → Y), ContinuousOn g (closure A) ∧
  UniformContinuousOn g (closure A) ∧ ∀ (x : A), g x = f x := by
  sorry

open Real
open scoped BigOperators

theorem exercise_1_30 {n : ℕ} :
  ¬ ∃ a : ℤ, ∑ i : Fin n, (1 : ℚ) / (n+2) = a := by
  sorry

open Real
open scoped BigOperators

theorem exercise_2_4 {a : ℤ} (ha : a ≠ 0)
  (f_a := λ n m : ℕ => Int.gcd (a^(2^n) + 1) (a^(2^m)+1)) {n m : ℕ}
  (hnm : n > m) :
  (Odd a → f_a n m = 1) ∧ (Even a → f_a n m = 2) := by
  sorry

open Real
open scoped BigOperators

theorem exercise_2_27a :
  ¬ Summable (λ i : {p : ℤ // Squarefree p} => (1 : ℚ) / i) := by
  sorry

open Real
open scoped BigOperators

theorem exercise_3_4' : ¬ ∃ x y : ℤ, 3*x^2 + 2 = y^2 := by
  sorry

open Real
open scoped BigOperators

theorem exercise_3_10 {n : ℕ} (hn0 : ¬ n.Prime) (hn1 : n ≠ 4) :
  Nat.factorial (n-1) ≡ 0 [MOD n] := by
  sorry

open Real
open scoped BigOperators

theorem exercise_4_4 {p t: ℕ} (hp0 : p.Prime) (hp1 : p = 4*t + 1)
  (a : ZMod p) :
  IsPrimitiveRoot a p ↔ IsPrimitiveRoot (-a) p := by
  sorry

open Real
open scoped BigOperators

theorem exercise_4_6 {p n : ℕ} (hp : p.Prime) (hpn : p = 2^n + 1) :
  IsPrimitiveRoot 3 p := by
  sorry

open Real
open scoped BigOperators

theorem exercise_4_11 {p : ℕ} (hp : p.Prime) (k s: ℕ)
  (s := ∑ n : Fin p, (n : ℕ) ^ k) :
  ((¬ p - 1 ∣ k) → s ≡ 0 [MOD p]) ∧ (p - 1 ∣ k → s ≡ 0 [MOD p]) := by
  sorry

open Real
open scoped BigOperators

theorem exercise_5_28 {p : ℕ} (hp : p.Prime) (hp1 : p ≡ 1 [MOD 4]):
  ∃ x, x^4 ≡ 2 [MOD p] ↔ ∃ A B, p = A^2 + 64*B^2 := by
  sorry

open Real
open scoped BigOperators

theorem exercise_12_12 : IsAlgebraic ℚ (Real.sin (Real.pi/12)) := by
  sorry

open scoped BigOperators

theorem exercise_2018_a5 (f : ℝ → ℝ) (hf : ContDiff ℝ ⊤ f)
  (hf0 : f 0 = 0) (hf1 : f 1 = 1) (hf2 : ∀ x, f x ≥ 0) :
  ∃ (n : ℕ) (x : ℝ), iteratedDeriv n f x = 0 := by
  sorry

open scoped BigOperators

theorem exercise_2018_b4 (a : ℝ) (x : ℕ → ℝ) (hx0 : x 0 = a)
  (hx1 : x 1 = a)
  (hxn : ∀ n : ℕ, n ≥ 2 → x (n+1) = 2*(x n)*(x (n-1)) - x (n-2))
  (h : ∃ n, x n = 0) :
  ∃ c, Function.Periodic x c := by
  sorry

open scoped BigOperators

theorem exercise_2014_a5 (P : ℕ → Polynomial ℤ)
  (hP : ∀ n, P n = ∑ i : Fin n, (n+1) * Polynomial.X ^ n) :
  ∀ (j k : ℕ), j ≠ k → IsCoprime (P j) (P k) := by
  sorry

open scoped BigOperators

theorem exercise_2001_a5 :
  ∃! a : ℕ, ∃! n : ℕ, a > 0 ∧ n > 0 ∧ a^(n+1) - (a+1)^n = 2001 := by
  sorry

open scoped BigOperators

theorem exercise_1999_b4 (f : ℝ → ℝ) (hf: ContDiff ℝ 3 f)
  (hf1 : ∀ n ≤ 3, ∀ x : ℝ, iteratedDeriv n f x > 0)
  (hf2 : ∀ x : ℝ, iteratedDeriv 3 f x ≤ f x) :
  ∀ x : ℝ, deriv f x < 2 * f x := by
  sorry

open scoped BigOperators

theorem exercise_1998_b6 (a b c : ℤ) :
  ∃ n : ℤ, n > 0 ∧ ¬ ∃ m : ℤ, Real.sqrt (n^3 + a*n^2 + b*n + c) = m := by
  sorry
