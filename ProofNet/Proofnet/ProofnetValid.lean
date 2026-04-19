import Mathlib

open Complex Filter Function Metric Finset
open scoped BigOperators Topology

open scoped BigOperators Topology

theorem exercise_1_13a {f : ℂ → ℂ} (Ω : Set ℂ) (a b : Ω) (h : IsOpen Ω)
  (hf : DifferentiableOn ℂ f Ω) (hc : ∃ (c : ℝ), ∀ z ∈ Ω, (f z).re = c) :
  f a = f b := by
  sorry

open Complex Filter Function Metric Finset
open scoped BigOperators Topology

theorem exercise_1_13c {f : ℂ → ℂ} (Ω : Set ℂ) (a b : Ω) (h : IsOpen Ω)
  (hf : DifferentiableOn ℂ f Ω) (hc : ∃ (c : ℝ), ∀ z ∈ Ω, ‖f z‖ = c) :
  f a = f b := by
  sorry

open Complex Filter Function Metric Finset
open scoped BigOperators Topology

theorem exercise_1_19b (z : ℂ) (hz : ‖z‖ = 1) (s : ℕ → ℂ)
    (h : s = (λ n => ∑ i ∈ range n, i * z / i ^ 2)) :
    ∃ y, Tendsto s atTop (𝓝 y) := by
  sorry

open Complex Filter Function Metric Finset
open scoped BigOperators Topology

theorem exercise_1_26
  (f F₁ F₂ : ℂ → ℂ) (Ω : Set ℂ) (h1 : IsOpen Ω) (h2 : IsConnected Ω)
  (hF₁ : DifferentiableOn ℂ F₁ Ω) (hF₂ : DifferentiableOn ℂ F₂ Ω)
  (hdF₁ : ∀ x ∈ Ω, deriv F₁ x = f x) (hdF₂ : ∀ x ∈ Ω, deriv F₂ x = f x)
  : ∃ c : ℂ, ∀ x, F₁ x = F₂ x + c := by
  sorry

open Complex Filter Function Metric Finset
open scoped BigOperators Topology

theorem exercise_2_9
  {f : ℂ → ℂ} (Ω : Set ℂ) (b : Bornology.IsBounded Ω) (h : IsOpen Ω)
  (hf : DifferentiableOn ℂ f Ω) (z : Ω) (hz : f z = z) (h'z : deriv f z = 1) :
  ∃ (f_lin : ℂ →L[ℂ] ℂ), ∀ x ∈ Ω, f x = f_lin x := by
  sorry

open Complex Filter Function Metric Finset
open scoped BigOperators Topology

theorem exercise_3_3 (a : ℝ) (ha : 0 < a) :
    Tendsto (λ y => ∫ x in -y..y, Real.cos x / (x ^ 2 + a ^ 2))
    atTop (𝓝 (Real.pi * (Real.exp (-a) / a))) := by
  sorry

open Complex Filter Function Metric Finset
open scoped BigOperators Topology

theorem exercise_3_9 : ∫ x in (0 : ℝ)..(1 : ℝ),
    Real.log (Real.sin (Real.pi * x)) = - Real.log 2 := by
  sorry

open Complex Filter Function Metric Finset
open scoped BigOperators Topology

theorem exercise_3_22 (D : Set ℂ) (hD : D = ball 0 1) (f : ℂ → ℂ)
    (hf : DifferentiableOn ℂ f D) (hfc : ContinuousOn f (closure D)) :
    ¬ ∀ z ∈ (sphere (0 : ℂ) 1), f z = 1 / z := by
  sorry

open Topology Filter Real Complex TopologicalSpace Finset
open scoped BigOperators

theorem exercise_1_1a
  (x : ℝ) (y : ℚ) :
  ( Irrational x ) -> Irrational ( x + y ) := by
  sorry

open Topology Filter Real Complex TopologicalSpace Finset
open scoped BigOperators

theorem exercise_1_2 : ¬ ∃ (x : ℚ), ( x ^ 2 = 12 ) := by
  sorry

open Topology Filter Real Complex TopologicalSpace Finset
open scoped BigOperators

theorem exercise_1_5 (A minus_A : Set ℝ) (hA : A.Nonempty)
  (hA_bdd_below : BddBelow A) (hminus_A : minus_A = {x | -x ∈ A}) :
  sInf A = sSup minus_A := by
  sorry

open Topology Filter Real Complex TopologicalSpace Finset
open scoped BigOperators

theorem exercise_1_11a (z : ℂ) :
  ∃ (r : ℝ) (w : ℂ), ‖w‖ = 1 ∧ z = r * w := by
  sorry

open Topology Filter Real Complex TopologicalSpace Finset
open scoped BigOperators

theorem exercise_1_13 (x y : ℂ) :
  |‖x‖ - ‖y‖| ≤ ‖x - y‖ := by
  sorry

open Topology Filter Real Complex TopologicalSpace Finset
open scoped BigOperators

theorem exercise_1_16a
  (n : ℕ)
  (d r : ℝ)
  (x y z : EuclideanSpace ℝ (Fin n)) -- R^n
  (h₁ : n ≥ 3)
  (h₂ : ‖x - y‖ = d)
  (h₃ : d > 0)
  (h₄ : r > 0)
  (h₅ : 2 * r > d)
  : Set.Infinite {z : EuclideanSpace ℝ (Fin n) | ‖z - x‖ = r ∧ ‖z - y‖ = r} := by
  sorry

open Topology Filter Real Complex TopologicalSpace Finset
open scoped BigOperators

theorem exercise_1_18a
  (n : ℕ)
  (h : n > 1)
  (x : EuclideanSpace ℝ (Fin n)) -- R^n
  : ∃ (y : EuclideanSpace ℝ (Fin n)), y ≠ 0 ∧ @inner ℝ _ _ x y = (0 : ℝ) := by
  sorry

open Topology Filter Real Complex TopologicalSpace Finset
open scoped BigOperators

theorem exercise_1_19
  (n : ℕ)
  (a b c x : EuclideanSpace ℝ (Fin n))
  (r : ℝ)
  (h₁ : r > 0)
  (h₂ : 3 • c = 4 • b - a)
  (h₃ : 3 * r = 2 * ‖x - b‖)
  : ‖x - a‖ = 2 * ‖x - b‖ ↔ ‖x - c‖ = r := by
  sorry

open Topology Filter Real Complex TopologicalSpace Finset
open scoped BigOperators

theorem exercise_2_24 {X : Type*} [MetricSpace X]
  (hX : ∀ (A : Set X), Infinite A → ∃ (x : X), x ∈ closure A) :
  SeparableSpace X := by
  sorry

open Topology Filter Real Complex TopologicalSpace Finset
open scoped BigOperators

theorem exercise_2_27a (k : ℕ) (E P : Set (EuclideanSpace ℝ (Fin k)))
  (hE : E.Nonempty ∧ ¬ Set.Countable E)
  (hP : P = {x | ∀ U ∈ 𝓝 x, ¬ Set.Countable (P ∩ E)}) :
  IsClosed P ∧ P = {x | ClusterPt x (𝓟 P)} := by
  sorry

open Topology Filter Real Complex TopologicalSpace Finset
open scoped BigOperators

theorem exercise_2_28 (X : Type*) [MetricSpace X] [SeparableSpace X]
  (A : Set X) (hA : IsClosed A) :
  ∃ P₁ P₂ : Set X, A = P₁ ∪ P₂ ∧
  IsClosed P₁ ∧ P₁ = {x | ClusterPt x (𝓟 P₁)} ∧
  Set.Countable P₂ := by
  sorry

open Topology Filter Real Complex TopologicalSpace Finset
open scoped BigOperators

theorem exercise_3_1a
  (f : ℕ → ℝ)
  (h : ∃ (a : ℝ), Tendsto (λ (n : ℕ) => f n) atTop (𝓝 a))
  : ∃ (a : ℝ), Tendsto (λ (n : ℕ) => |f n|) atTop (𝓝 a) := by
  sorry

open Topology Filter Real Complex TopologicalSpace Finset
open scoped BigOperators

noncomputable def f : ℕ → ℝ
| 0 => Real.sqrt 2
| (n + 1) => Real.sqrt (2 + Real.sqrt (f n))

theorem exercise_3_3'
  : ∃ (x : ℝ), Tendsto f atTop (𝓝 x) ∧ ∀ n, f n < 2 := by
  sorry

open Topology Filter Real Complex TopologicalSpace Finset
open scoped BigOperators

noncomputable section

def g (n : ℕ) : ℝ := Real.sqrt (n + 1) - Real.sqrt n

theorem exercise_3_6a
: Tendsto (λ (n : ℕ) => (∑ i ∈ range n, g i)) atTop atTop := by
  sorry

open Topology Filter Real Complex TopologicalSpace Finset
open scoped BigOperators

theorem exercise_3_8
  (a b : ℕ → ℝ)
  (h1 : ∃ y, (Tendsto (λ n => (∑ i ∈ range n, a i)) atTop (𝓝 y)))
  (h2 : Monotone b)
  (h3 : Bornology.IsBounded (Set.range b)) :
  ∃ y, Tendsto (λ n => (∑ i ∈ range n, (a i) * (b i))) atTop (𝓝 y) := by
  sorry

open Topology Filter Real Complex TopologicalSpace Finset
open scoped BigOperators

theorem exercise_3_20 {X : Type*} [MetricSpace X]
  (p : ℕ → X) (l : ℕ) (r : X)
  (hp : CauchySeq p)
  (hpl : Tendsto (λ n => p (l * n)) atTop (𝓝 r)) :
  Tendsto p atTop (𝓝 r) := by
  sorry

open Topology Filter Real Complex TopologicalSpace Finset
open scoped BigOperators

theorem exercise_3_22' (X : Type*) [MetricSpace X] [CompleteSpace X]
  (G : ℕ → Set X) (hG : ∀ n, IsOpen (G n) ∧ Dense (G n)) :
  ∃ x, ∀ n, x ∈ G n := by
  sorry

open Topology Filter Real Complex TopologicalSpace Finset
open scoped BigOperators

theorem exercise_4_2a
  {α : Type} [MetricSpace α]
  {β : Type} [MetricSpace β]
  (f : α → β)
  (h₁ : Continuous f)
  : ∀ (x : Set α), f '' (closure x) ⊆ closure (f '' x) := by
  sorry

open Topology Filter Real Complex TopologicalSpace Finset
open scoped BigOperators

theorem exercise_4_4a
  {α : Type} [MetricSpace α]
  {β : Type} [MetricSpace β]
  (f : α → β)
  (s : Set α)
  (h₁ : Continuous f)
  (h₂ : Dense s)
  : f '' Set.univ ⊆ closure (f '' s) := by
  sorry

open Topology Filter Real Complex TopologicalSpace Finset
open scoped BigOperators

theorem exercise_4_5a
  (f : ℝ → ℝ)
  (E : Set ℝ)
  (h₁ : IsClosed E)
  (h₂ : ContinuousOn f E)
  : ∃ (g : ℝ → ℝ), Continuous g ∧ ∀ x ∈ E, f x = g x := by
  sorry

open Topology Filter Real Complex TopologicalSpace Finset
open scoped BigOperators

theorem exercise_4_6
  (f : ℝ → ℝ)
  (E : Set ℝ)
  (G : Set (ℝ × ℝ))
  (h₁ : IsCompact E)
  (h₂ : G = {(x, f x) | x ∈ E})
  : ContinuousOn f E ↔ IsCompact G := by
  sorry

open Topology Filter Real Complex TopologicalSpace Finset
open scoped BigOperators

theorem exercise_4_8b
  (E : Set ℝ) :
  ∃ f : ℝ → ℝ, UniformContinuousOn f E ∧ ¬ Bornology.IsBounded (Set.image f E) := by
  sorry

open Topology Filter Real Complex TopologicalSpace Finset
open scoped BigOperators

theorem exercise_4_12
  {α β γ : Type*} [UniformSpace α] [UniformSpace β] [UniformSpace γ]
  {f : α → β} {g : β → γ}
  (hf : UniformContinuous f) (hg : UniformContinuous g) :
  UniformContinuous (g ∘ f) := by
  sorry

open Topology Filter Real Complex TopologicalSpace Finset
open scoped BigOperators

theorem exercise_4_19
  {f : ℝ → ℝ} (hf : ∀ a b c, a < b → f a < c → c < f b → ∃ x, a < x ∧ x < b ∧ f x = c)
  (hg : ∀ r : ℚ, IsClosed {x | f x = r}) : Continuous f := by
  sorry

open Topology Filter Real Complex TopologicalSpace Finset
open scoped BigOperators

theorem exercise_4_24 {f : ℝ → ℝ}
  (hf : Continuous f) (a b : ℝ) (hab : a < b)
  (h : ∀ x y : ℝ, a < x → x < b → a < y → y < b → f ((x + y) / 2) ≤ (f x + f y) / 2) :
  ConvexOn ℝ (Set.Ioo a b) f := by
  sorry

open Topology Filter Real Complex TopologicalSpace Finset
open scoped BigOperators

theorem exercise_5_2 {a b : ℝ}
  {f g : ℝ → ℝ} (hf : ∀ x ∈ Set.Ioo a b, deriv f x > 0)
  (hg : g = f⁻¹)
  (hg_diff : DifferentiableOn ℝ g (Set.Ioo a b)) :
  DifferentiableOn ℝ g (Set.Ioo a b) ∧
  ∀ x ∈ Set.Ioo a b, deriv g x = 1 / deriv f x := by
  sorry

open Topology Filter Real Complex TopologicalSpace Finset
open scoped BigOperators

theorem exercise_5_4 {n : ℕ}
  (C : ℕ → ℝ)
  (hC : ∑ i ∈ range (n + 1), (C i) / (i + 1) = 0) :
  ∃ x, x ∈ (Set.Icc (0 : ℝ) 1) ∧ ∑ i ∈ range (n + 1), (C i) * (x^i) = 0 := by
  sorry

open Topology Filter Real Complex TopologicalSpace Finset
open scoped BigOperators

theorem exercise_5_6
  {f : ℝ → ℝ}
  (hf1 : Continuous f)
  (hf2 : ∀ x, DifferentiableAt ℝ f x)
  (hf3 : f 0 = 0)
  (hf4 : Monotone (deriv f)) :
  MonotoneOn (λ x => f x / x) (Set.Ioi 0) := by
  sorry

open Topology Filter Real Complex TopologicalSpace Finset
open scoped BigOperators

theorem exercise_5_15 {f : ℝ → ℝ} (a M0 M1 M2 : ℝ)
  (hf' : DifferentiableOn ℝ f (Set.Ici a))
  (hf'' : DifferentiableOn ℝ (deriv f) (Set.Ici a))
  (hM0 : M0 = sSup {(|f x|) | x ∈ (Set.Ici a)})
  (hM1 : M1 = sSup {(|deriv f x|) | x ∈ (Set.Ici a)})
  (hM2 : M2 = sSup {(|deriv (deriv f) x|) | x ∈ (Set.Ici a)}) :
  (M1 ^ 2) ≤ 4 * M0 * M2 := by
  sorry

open Fintype Set Real Ideal Polynomial
open scoped BigOperators

def exercise_2_1_21 (G : Type*) [Group G] [Fintype G]
  (hG : card G = 5) :
  CommGroup G := by
  sorry

open Fintype Set Real Ideal Polynomial
open scoped BigOperators

theorem exercise_2_1_27 {G : Type*} [Group G]
  [Fintype G] : ∃ (m : ℕ), ∀ (a : G), a ^ m = 1 := by
  sorry

open Fintype Set Real Ideal Polynomial
open scoped BigOperators

def exercise_2_2_5 {G : Type*} [Group G]
  (h : ∀ (a b : G), (a * b) ^ 3 = a ^ 3 * b ^ 3 ∧ (a * b) ^ 5 = a ^ 5 * b ^ 5) :
  CommGroup G := by
  sorry

open Fintype Set Real Ideal Polynomial
open scoped BigOperators

theorem exercise_2_3_17 {G : Type*} [Mul G] [Group G] (a x : G) :
  centralizer {x⁻¹*a*x} =
  (λ g : G => x⁻¹*g*x) '' (centralizer {a}) := by
  sorry

open Fintype Set Real Ideal Polynomial
open scoped BigOperators

theorem exercise_2_4_36 {a n : ℕ} (h : a > 1) :
  n ∣ (a ^ n - 1).totient := by
  sorry

open Fintype Set Real Ideal Polynomial
open scoped BigOperators

theorem exercise_2_5_30 {G : Type*} [Group G] [Fintype G]
  {p m : ℕ} (hp : Nat.Prime p) (hp1 : ¬ p ∣ m) (hG : card G = p*m)
  {H : Subgroup G} [Fintype H] [H.Normal] (hH : card H = p):
  Subgroup.Characteristic H := by
  sorry

open Fintype Set Real Ideal Polynomial
open scoped BigOperators

def exercise_2_5_37 (G : Type*) [Group G] [Fintype G]
  (hG : card G = 6) (hG' : IsEmpty (CommGroup G)) :
  G ≃* Equiv.Perm (Fin 3) := by
  sorry

open Fintype Set Real Ideal Polynomial
open scoped BigOperators

theorem exercise_2_5_44 {G : Type*} [Group G] [Fintype G] {p : ℕ}
  (hp : Nat.Prime p) (hG : card G = p^2) :
  ∃ (N : Subgroup G) (Fin : Fintype N), @card N Fin = p ∧ N.Normal := by
  sorry

open Fintype Set Real Ideal Polynomial
open scoped BigOperators

theorem exercise_2_6_15 {G : Type*} [CommGroup G] {m n : ℕ}
  (hm : ∃ (g : G), orderOf g = m)
  (hn : ∃ (g : G), orderOf g = n)
  (hmn : m.Coprime n) :
  ∃ (g : G), orderOf g = m * n := by
  sorry

open Fintype Set Real Ideal Polynomial
open scoped BigOperators

def exercise_2_8_12 {G H : Type*} [Fintype G] [Fintype H]
  [Group G] [Group H] (hG : card G = 21) (hH : card H = 21)
  (hG1 : IsEmpty (CommGroup G)) (hH1 : IsEmpty (CommGroup H)) :
  G ≃* H := by
  sorry

open Fintype Set Real Ideal Polynomial
open scoped BigOperators

theorem exercise_2_9_2 {G H : Type*} [Fintype G] [Fintype H] [Group G]
  [Group H] (hG : IsCyclic G) (hH : IsCyclic H) :
  IsCyclic (G × H) ↔ (card G).Coprime (card H) := by
  sorry

open Fintype Set Real Ideal Polynomial
open scoped BigOperators

theorem exercise_2_11_6 {G : Type*} [Group G] {p : ℕ} (hp : Nat.Prime p)
  {P : Sylow p G} (hP : P.Normal) :
  ∀ (Q : Sylow p G), P = Q := by
  sorry

open Fintype Set Real Ideal Polynomial
open scoped BigOperators

theorem exercise_2_11_22 {p : ℕ} {n : ℕ} {G : Type*} [Fintype G]
  [Group G] (hp : Nat.Prime p) (hG : card G = p ^ n) {K : Subgroup G}
  [Fintype K] (hK : card K = p ^ (n-1)) :
  K.Normal := by
  sorry

open Fintype Set Real Ideal Polynomial
open scoped BigOperators

theorem exercise_4_1_19 : Infinite {x : Quaternion ℝ | x^2 = -1} := by
  sorry

open Fintype Set Real Ideal Polynomial
open scoped BigOperators

def exercise_4_2_5 {R : Type*} [Ring R]
  (h : ∀ x : R, x ^ 3 = x) : CommRing R := by
  sorry

open Fintype Set Real Ideal Polynomial
open scoped BigOperators

theorem exercise_4_2_9 {p : ℕ} (hp : Nat.Prime p) (hp1 : Odd p) :
  ∃ (a b : ℤ), (a / b : ℚ) = ∑ i ∈ Finset.range p, 1 / (i + 1) → ↑p ∣ a := by
  sorry

open Fintype Set Real Ideal Polynomial
open scoped BigOperators

theorem exercise_4_3_25 (I : Ideal (Matrix (Fin 2) (Fin 2) ℝ)) :
  I = ⊥ ∨ I = ⊤ := by
  sorry

open Fintype Set Real Ideal Polynomial
open scoped BigOperators

theorem exercise_4_5_16 {p n: ℕ} (hp : Nat.Prime p)
  {q : Polynomial (ZMod p)} (hq : Irreducible q) (hn : q.degree = n) :
  ∃ is_fin : Fintype $ Polynomial (ZMod p) ⧸ span ({q} : Set (Polynomial $ ZMod p)),
  @card (Polynomial (ZMod p) ⧸ span {q}) is_fin = p ^ n ∧
  IsField (Polynomial $ ZMod p) := by
  sorry

open Fintype Set Real Ideal Polynomial
open scoped BigOperators

theorem exercise_4_5_25 {p : ℕ} (hp : Nat.Prime p) :
  Irreducible (∑ i ∈ Finset.range p, X ^ p : Polynomial ℚ) := by
  sorry

open Fintype Set Real Ideal Polynomial
open scoped BigOperators

theorem exercise_4_6_3 :
  Infinite {a : ℤ | Irreducible (X^7 + 15*X^2 - 30*X + (a : Polynomial ℚ) : Polynomial ℚ)} := by
  sorry

open Fintype Set Real Ideal Polynomial
open scoped BigOperators

theorem exercise_5_2_20 {F V ι: Type*} [Infinite F] [Field F]
  [AddCommGroup V] [Module F V] {u : ι → Submodule F V}
  (hu : ∀ i : ι, u i ≠ ⊤) :
  (⋃ i : ι, (u i : Set V)) ≠ ⊤ := by
  sorry

open Fintype Set Real Ideal Polynomial
open scoped BigOperators

theorem exercise_5_3_10 : IsAlgebraic ℚ (Real.cos (Real.pi / 180)) := by
  sorry

open Fintype Set Real Ideal Polynomial
open scoped BigOperators

theorem exercise_5_5_2 : Irreducible (X^3 - 3*X - 1 : Polynomial ℚ) := by
  sorry

open Filter Real Function
open scoped Topology

theorem exercise_2_12a (f : ℕ → ℕ) (p : ℕ → ℝ) (a : ℝ)
  (hf : Injective f) (hp : Tendsto p atTop (𝓝 a)) :
  Tendsto (λ n => p (f n)) atTop (𝓝 a) := by
  sorry

open Filter Real Function
open scoped Topology

theorem exercise_2_29' (M : Type*) [MetricSpace M]
  (O C : Set (Set M))
  (hO : O = {s | IsOpen s})
  (hC : C = {s | IsClosed s}) :
  ∃ f : O → C, Bijective f := by
  sorry

open Filter Real Function
open scoped Topology

theorem exercise_2_41 (m : ℕ) {X : Type*} [NormedSpace ℝ ((Fin m) → ℝ)] :
  IsCompact (Metric.closedBall 0 1) := by
  sorry

open Filter Real Function
open scoped Topology

theorem exercise_2_57 {X : Type*} [TopologicalSpace X]
  : ∃ (S : Set X), IsConnected S ∧ ¬ IsConnected (interior S) := by
  sorry

open Filter Real Function
open scoped Topology

theorem exercise_2_126 {E : Set ℝ}
  (hE : ¬ Set.Countable E) : ∃ (p : ℝ), ClusterPt p (𝓟 E) := by
  sorry

open Filter Real Function
open scoped Topology

theorem exercise_3_4' (n : ℕ) :
  Tendsto (λ n => (Real.sqrt (n + 1) - Real.sqrt n)) atTop (𝓝 0) := by
  sorry

open Filter Real Function
open scoped Topology

theorem exercise_3_63b (p : ℝ) (f : ℕ → ℝ) (hp : p ≤ 1)
  (h : f = λ (k : ℕ) => (1 : ℝ) / (k * (Real.log k) ^ p)) :
  ¬ ∃ l, Tendsto f atTop (𝓝 l) := by
  sorry

open Function Fintype Subgroup Ideal Polynomial Submodule Zsqrtd
open scoped BigOperators

theorem exercise_2_2_9 {G : Type} [Group G] {a b : G} (h : a * b = b * a) :
    ∀ x y : closure {x| x = a ∨ x = b}, x * y = y * x := by
  sorry

open Function Fintype Subgroup Ideal Polynomial Submodule Zsqrtd
open scoped BigOperators

theorem exercise_2_4_19 {G : Type*} [Group G] {x : G}
  (hx : orderOf x = 2) (hx1 : ∀ y, orderOf y = 2 → y = x) :
  x ∈ Subgroup.center G := by
  sorry

open Function Fintype Subgroup Ideal Polynomial Submodule Zsqrtd
open scoped BigOperators

theorem exercise_2_11_3 {G : Type*} [Group G] [Fintype G](hG : Even (card G)) :
  ∃ x : G, orderOf x = 2 := by
  sorry

open Function Fintype Subgroup Ideal Polynomial Submodule Zsqrtd
open scoped BigOperators

theorem exercise_3_5_6 {K V : Type*} [Field K] [AddCommGroup V]
  [Module K V] {S : Set V} (hS : Set.Countable S)
  (hS1 : span K S = ⊤) {ι : Type*} (R : ι → V)
  (hR : LinearIndependent K R) : Countable ι := by
  sorry

open Function Fintype Subgroup Ideal Polynomial Submodule Zsqrtd
open scoped BigOperators

theorem exercise_6_1_14 (G : Type*) [Group G]
  (hG : IsCyclic $ G ⧸ (Subgroup.center G)) :
  Subgroup.center G = ⊤ := by
  sorry

open Function Fintype Subgroup Ideal Polynomial Submodule Zsqrtd
open scoped BigOperators

theorem exercise_6_4_3 {G : Type*} [Group G] [Fintype G] {p q : ℕ}
  (hp : Prime p) (hq : Prime q) (hG : card G = p^2 *q) :
  IsSimpleGroup G → false := by
  sorry

open Function Fintype Subgroup Ideal Polynomial Submodule Zsqrtd
open scoped BigOperators

theorem exercise_6_8_1 {G : Type*} [Group G]
  (a b : G) : closure ({a, b} : Set G) = Subgroup.closure {b*a*b^2, b*a*b^3} := by
  sorry

open Function Fintype Subgroup Ideal Polynomial Submodule Zsqrtd
open scoped BigOperators

theorem exercise_10_2_4 :
  span ({2} : Set $ Polynomial ℤ) ⊓ (span {X}) =
  span ({2 * X} : Set $ Polynomial ℤ) := by
  sorry

open Function Fintype Subgroup Ideal Polynomial Submodule Zsqrtd
open scoped BigOperators

theorem exercise_10_4_6 {R : Type*} [CommRing R]
  [NoZeroDivisors R] (I J : Ideal R) (x : ↑(I ⊓ J)) :
  IsNilpotent ((Ideal.Quotient.mk (I*J)) x) := by
  sorry

open Function Fintype Subgroup Ideal Polynomial Submodule Zsqrtd
open scoped BigOperators

theorem exercise_10_7_10 {R : Type*} [Ring R]
  (M : Ideal R) (hM : ∀ (x : R), x ∉ M → IsUnit x)
  (hProper : ∃ x : R, x ∉ M) :
  IsMaximal M ∧ ∀ (N : Ideal R), IsMaximal N → N = M := by
  sorry

open Function Fintype Subgroup Ideal Polynomial Submodule Zsqrtd
open scoped BigOperators

theorem exercise_11_4_1b {F : Type*} [Field F] [Fintype F] (hF : card F = 2) :
  Irreducible (12 + 6 * X + X ^ 3 : Polynomial F) := by
  sorry

open Function Fintype Subgroup Ideal Polynomial Submodule Zsqrtd
open scoped BigOperators

theorem exercise_11_4_6b {F : Type*} [Field F] [Fintype F] (hF : card F = 31) :
  Irreducible (X ^ 3 - 9 : Polynomial F) := by
  sorry

open Function Fintype Subgroup Ideal Polynomial Submodule Zsqrtd
open scoped BigOperators

theorem exercise_11_4_8 (p : ℕ) (hp : Prime p) (n : ℕ) :
  -- p ∈ ℕ can be written as p ∈ ℚ[X]
  Irreducible (X ^ n - (p : Polynomial ℚ) : Polynomial ℚ) := by
  sorry

open Function Fintype Subgroup Ideal Polynomial Submodule Zsqrtd
open scoped BigOperators

theorem exercise_13_4_10
    {p : ℕ} {hp : Nat.Prime p} (h : ∃ r : ℕ, p = 2 ^ r + 1) :
    ∃ (k : ℕ), p = 2 ^ (2 ^ k) + 1 := by
  sorry

open Fintype Complex Polynomial LinearMap FiniteDimensional Module Module.End
open scoped BigOperators

theorem exercise_1_3 {F V : Type*} [AddCommGroup V] [Field F]
  [Module F V] {v : V} : -(-v) = v := by
  sorry

open Fintype Complex Polynomial LinearMap FiniteDimensional Module Module.End
open scoped BigOperators

theorem exercise_1_6 : ∃ U : Set (ℝ × ℝ),
  (U ≠ ∅) ∧
  (∀ (u v : ℝ × ℝ), u ∈ U ∧ v ∈ U → u + v ∈ U) ∧
  (∀ (u : ℝ × ℝ), u ∈ U → -u ∈ U) ∧
  (∀ U' : Submodule ℝ (ℝ × ℝ), U ≠ ↑U') := by
  sorry

open Fintype Complex Polynomial LinearMap FiniteDimensional Module Module.End
open scoped BigOperators

theorem exercise_1_8' {F V : Type*} [AddCommGroup V] [Field F]
  [Module F V] {ι : Type*} (u : ι → Submodule F V) :
  ∃ U : Submodule F V, (⋂ (i : ι), (u i).carrier) = ↑U := by
  sorry

open Fintype Complex Polynomial LinearMap FiniteDimensional Module Module.End
open scoped BigOperators

theorem exercise_3_1' {F V : Type*}
  [AddCommGroup V] [Field F] [Module F V] [FiniteDimensional F V]
  (T : V →ₗ[F] V) (hT : finrank F V = 1) :
  ∃ c : F, ∀ v : V, T v = c • v := by
  sorry

open Fintype Complex Polynomial LinearMap FiniteDimensional Module Module.End
open scoped BigOperators

theorem exercise_4_4 (p : Polynomial ℂ) :
  p.degree = @card (rootSet p ℂ) (rootSetFintype p ℂ) ↔
  Disjoint
  (@card (rootSet (derivative p) ℂ) (rootSetFintype (derivative p) ℂ))
  (@card (rootSet p ℂ) (rootSetFintype p ℂ)) := by
  sorry

open Fintype Complex Polynomial LinearMap FiniteDimensional Module Module.End
open scoped BigOperators

theorem exercise_5_4' {F V : Type*} [AddCommGroup V] [Field F]
  [Module F V] (S T : V →ₗ[F] V) (hST : S ∘ T = T ∘ S) (c : F):
  Submodule.map S (ker (T - c • LinearMap.id)) = ker (T - c • LinearMap.id) := by
  sorry

open Fintype Complex Polynomial LinearMap FiniteDimensional Module Module.End
open scoped BigOperators

theorem exercise_5_12 {F V : Type*} [AddCommGroup V] [Field F]
  [Module F V] {S : End F V}
  (hS : ∀ v : V, ∃ c : F, v ∈ eigenspace S c) :
  ∃ c : F, S = c • LinearMap.id := by
  sorry

open Fintype Complex Polynomial LinearMap FiniteDimensional Module Module.End
open scoped BigOperators

theorem exercise_5_20 {F V : Type*} [AddCommGroup V] [Field F]
  [Module F V] [FiniteDimensional F V] {S T : End F V}
  (h1 : card (T.Eigenvalues) = finrank F V)
  (h2 : ∀ v : V, ∃ c : F, v ∈ eigenspace S c ↔ ∃ c : F, v ∈ eigenspace T c) :
  S * T = T * S := by
  sorry

open Fintype Complex Polynomial LinearMap FiniteDimensional Module Module.End
open scoped BigOperators InnerProductSpace

theorem exercise_6_2 {V : Type*} [NormedAddCommGroup V] [Module ℂ V]
[InnerProductSpace ℂ V] (u v : V) :
  ⟪u, v⟫_ℂ = 0 ↔ ∀ (a : ℂ), ‖u‖  ≤ ‖u + a • v‖ := by
  sorry

open Fintype Complex Polynomial LinearMap FiniteDimensional Module Module.End
open scoped BigOperators InnerProductSpace

theorem exercise_6_7 {V : Type*} [NormedAddCommGroup V] [InnerProductSpace ℂ V] (u v : V) :
  ⟪u, v⟫_ℂ = (‖u + v‖^2 - ‖u - v‖^2 + I*‖u + I•v‖^2 - I*‖u-I•v‖^2) / 4 := by
  sorry

open Fintype Complex Polynomial LinearMap FiniteDimensional Module Module.End
open scoped BigOperators

theorem exercise_6_16 {K V : Type*} [RCLike K] [NormedAddCommGroup V] [InnerProductSpace K V]
  {U : Submodule K V} :
  U.orthogonal = ⊥  ↔ U = ⊤ := by
  sorry

open Fintype Complex Polynomial LinearMap FiniteDimensional Module Module.End
open scoped BigOperators

theorem exercise_7_6 {V : Type*} [NormedAddCommGroup V] [InnerProductSpace ℂ V]
  [FiniteDimensional ℂ V] (T : End ℂ V)
  (hT : T * adjoint T = adjoint T * T) :
  LinearMap.range T = LinearMap.range (adjoint T) := by
  sorry

open Fintype Complex Polynomial LinearMap FiniteDimensional Module Module.End
open scoped BigOperators

theorem exercise_7_10 {V : Type*} [NormedAddCommGroup V] [InnerProductSpace ℂ V]
  [FiniteDimensional ℂ V] (T : End ℂ V)
  (hT : T * adjoint T = adjoint T * T) (hT1 : T^9 = T^8) :
  IsSelfAdjoint T ∧ T^2 = T := by
  sorry

open Fintype Complex Polynomial LinearMap FiniteDimensional Module Module.End
open scoped BigOperators

theorem exercise_7_14 {𝕜 V : Type*} [RCLike 𝕜] [NormedAddCommGroup V]
  [InnerProductSpace 𝕜 V] [FiniteDimensional 𝕜 V]
  {T : Module.End 𝕜 V} (hT : IsSelfAdjoint T)
  {l : 𝕜} {ε : ℝ} (he : ε > 0) : ∃ v : V, ‖v‖= 1 ∧ (‖T v - l • v‖ < ε →
  (∃ l' : T.Eigenvalues, ‖l - l'‖ < ε)) := by
  sorry

open Fintype Subgroup Set Polynomial Ideal
open scoped BigOperators

theorem exercise_1_1_3 (n : ℤ) :
  ∀ (a b c : ℤ), (a+b)+c ≡ a+(b+c) [ZMOD n] := by
  sorry

open Fintype Subgroup Set Polynomial Ideal
open scoped BigOperators

theorem exercise_1_1_5 (n : ℕ) (hn : 1 < n) :
  IsEmpty (Group (ZMod n)) := by
  sorry

open Fintype Subgroup Set Polynomial Ideal
open scoped BigOperators

theorem exercise_1_1_16 {G : Type*} [Group G]
  (x : G) (hx : x ^ 2 = 1) :
  orderOf x = 1 ∨ orderOf x = 2 := by
  sorry

open Fintype Subgroup Set Polynomial Ideal
open scoped BigOperators

theorem exercise_1_1_18 {G : Type*} [Group G]
  (x y : G) : (x * y = y * x ↔ y⁻¹ * x * y = x) ↔ (x⁻¹ * y⁻¹ * x * y = 1) := by
  sorry

open Fintype Subgroup Set Polynomial Ideal
open scoped BigOperators

theorem exercise_1_1_22a {G : Type*} [Group G] (x g : G) :
  orderOf x = orderOf (g⁻¹ * x * g) := by
  sorry

open Fintype Subgroup Set Polynomial Ideal
open scoped BigOperators

theorem exercise_1_1_25 {G : Type*} [Group G]
  (h : ∀ x : G, x ^ 2 = 1) : ∀ a b : G, a*b = b*a := by
  sorry

open Fintype Subgroup Set Polynomial Ideal
open scoped BigOperators

theorem exercise_1_1_34 {G : Type*} [Group G] {x : G}
  (hx_inf : orderOf x = 0) (n m : ℤ) :
  x ^ n ≠ x ^ m := by
  sorry

open Fintype Subgroup Set Polynomial Ideal
open scoped BigOperators

theorem exercise_1_6_4 :
  IsEmpty (Multiplicative ℝ ≃* Multiplicative ℂ) := by
  sorry

open Fintype Subgroup Set Polynomial Ideal
open scoped BigOperators

theorem exercise_1_6_17 {G : Type*} [Group G] (f : G → G)
  (hf : f = λ g => g⁻¹) :
  ∀ x y : G, f x * f y = f (x*y) ↔ ∀ x y : G, x*y = y*x := by
  sorry

open Fintype Subgroup Set Polynomial Ideal
open scoped BigOperators

theorem exercise_2_1_5 {G : Type*} [Group G] [Fintype G]
  (hG : card G > 2) (H : Subgroup G) [Fintype H] :
  card H ≠ card G - 1 := by
  sorry

open Fintype Subgroup Set Polynomial Ideal
open scoped BigOperators

theorem exercise_2_4_4 {G : Type*} [Group G] (H : Subgroup G) :
  closure ((H : Set G) \ {1}) = ⊤ := by
  sorry

open Fintype Subgroup Set Polynomial Ideal
open scoped BigOperators

theorem exercise_2_4_16b {n : ℕ} {hn : n ≠ 0}
  {R : Subgroup (DihedralGroup n)}
  (hR : R = Subgroup.closure {DihedralGroup.r 1}) :
  R ≠ ⊤ ∧
  ∀ K : Subgroup (DihedralGroup n), R ≤ K → K = R ∨ K = ⊤ := by
  sorry

open Fintype Subgroup Set Polynomial Ideal
open scoped BigOperators

theorem exercise_3_1_3a {A : Type*} [CommGroup A] (B : Subgroup A) :
  ∀ a b : A ⧸ B, a*b = b*a := by
  sorry

open Fintype Subgroup Set Polynomial Ideal
open scoped BigOperators

theorem exercise_3_1_22b {G : Type*} [Group G] (I : Type*)
  (H : I → Subgroup G) (hH : ∀ i : I, Normal (H i)) :
  Normal (⨅ (i : I), H i) := by
  sorry

open Fintype Subgroup Set Polynomial Ideal
open scoped BigOperators

theorem exercise_3_2_11 {G : Type*} [Group G] {H K : Subgroup G}
  (hHK : H ≤ K) :
  H.index = K.index * H.relIndex K := by
  sorry

open Fintype Subgroup Set Polynomial Ideal
open scoped BigOperators

theorem exercise_3_2_21a (H : AddSubgroup ℚ) (hH : H ≠ ⊤) : H.index = 0 := by
  sorry

open Fintype Subgroup Set Polynomial Ideal
open scoped BigOperators

theorem exercise_3_4_1 (G : Type*) [CommGroup G] [IsSimpleGroup G] :
    IsCyclic G ∧ ∃ G_fin : Fintype G, Nat.Prime (@card G G_fin) := by
  sorry

open Fintype Subgroup Set Polynomial Ideal
open scoped BigOperators

theorem exercise_3_4_5a {G : Type*} [Group G]
  (H : Subgroup G) [IsSolvable G] : IsSolvable H := by
  sorry

open Fintype Subgroup Set Polynomial Ideal
open scoped BigOperators

theorem exercise_3_4_11 {G : Type*} [Group G] [IsSolvable G]
  {H : Subgroup G} (hH : H ≠ ⊥) [H.Normal] :
  ∃ A ≤ H, A.Normal ∧ ∀ a b : A, a*b = b*a := by
  sorry

open Fintype Subgroup Set Polynomial Ideal
open scoped BigOperators

theorem exercise_4_3_26 {α : Type*} [Fintype α] (ha : card α > 1)
  (h_tran : ∀ a b: α, ∃ σ : Equiv.Perm α, σ a = b) :
  ∃ σ : Equiv.Perm α, ∀ a : α, σ a ≠ a := by
  sorry

open Fintype Subgroup Set Polynomial Ideal
open scoped BigOperators

theorem exercise_4_2_14 {G : Type*} [Fintype G] [Group G]
  (hG : ¬ (card G).Prime) (hG1 : ∀ k : ℕ, k ∣ card G →
  ∃ (H : Subgroup G) (fH : Fintype H), @card H fH = k) :
  ¬ IsSimpleGroup G := by
  sorry

open Fintype Subgroup Set Polynomial Ideal
open scoped BigOperators

theorem exercise_4_4_6a {G : Type*} [Group G] (H : Subgroup G)
  [Characteristic H] : Normal H := by
  sorry

open Fintype Subgroup Set Polynomial Ideal
open scoped BigOperators

theorem exercise_4_4_7 {G : Type*} [Group G] {H : Subgroup G} [Fintype H]
  (hH : ∀ (K : Subgroup G) (fK : Fintype K), card H = @card K fK → H = K) :
  H.Characteristic := by
  sorry

open Fintype Subgroup Set Polynomial Ideal
open scoped BigOperators

theorem exercise_4_5_1a {p : ℕ} {G : Type*} [Group G]
  {P : Subgroup G} (hP : IsPGroup p P) (H : Subgroup G)
  (hH : P ≤ H) : IsPGroup p H := by
  sorry

open Fintype Subgroup Set Polynomial Ideal
open scoped BigOperators

theorem exercise_4_5_14 {G : Type*} [Group G] [Fintype G]
  (hG : card G = 312) :
  ∃ (p : ℕ) (P : Sylow p G), P.Normal := by
  sorry

open Fintype Subgroup Set Polynomial Ideal
open scoped BigOperators

theorem exercise_4_5_16' {p q r : ℕ} {G : Type*} [Group G]
  [Fintype G]  (hpqr : p < q ∧ q < r)
  (hpqr1 : p.Prime ∧ q.Prime ∧ r.Prime)(hG : card G = p*q*r) :
  Nonempty (Sylow p G) ∨ Nonempty (Sylow q G) ∨ Nonempty (Sylow r G) := by
  sorry

open Fintype Subgroup Set Polynomial Ideal
open scoped BigOperators

theorem exercise_4_5_18 {G : Type*} [Fintype G] [Group G]
  (hG : card G = 200) :
  ∃ N : Sylow 5 G, N.Normal := by
  sorry

open Fintype Subgroup Set Polynomial Ideal
open scoped BigOperators

theorem exercise_4_5_20 {G : Type*} [Fintype G] [Group G]
  (hG : card G = 1365) : ¬ IsSimpleGroup G := by
  sorry

open Fintype Subgroup Set Polynomial Ideal
open scoped BigOperators

theorem exercise_4_5_22 {G : Type*} [Fintype G] [Group G]
  (hG : card G = 132) : ¬ IsSimpleGroup G := by
  sorry

open Fintype Subgroup Set Polynomial Ideal
open scoped BigOperators

def exercise_4_5_28 {G : Type*} [Group G] [Fintype G]
  (hG : card G = 105) (P : Sylow 3 G) [hP : P.Normal] :
  CommGroup G := by
  sorry

open Fintype Subgroup Set Polynomial Ideal
open scoped BigOperators

theorem exercise_5_4_2 {G : Type*} [Group G] (H : Subgroup G) :
  H.Normal ↔ ⁅(⊤ : Subgroup G), H⁆ ≤ H := by
  sorry

open Fintype Subgroup Set Polynomial Ideal
open scoped BigOperators

theorem exercise_7_1_11 {R : Type*} [Ring R] [IsDomain R]
  {x : R} (hx : x^2 = 1) : x = 1 ∨ x = -1 := by
  sorry

open Fintype Subgroup Set Polynomial Ideal
open scoped BigOperators

def exercise_7_1_15 {R : Type*} [Ring R] (hR : ∀ a : R, a^2 = a) :
  CommRing R := by
  sorry

open Fintype Subgroup Set Polynomial Ideal
open scoped BigOperators

theorem exercise_7_2_12 {R G : Type*} [Ring R] [Group G] [Fintype G] :
  ∑ g : G, MonoidAlgebra.of R G g ∈ center (MonoidAlgebra R G) := by
  sorry

open Fintype Subgroup Set Polynomial Ideal
open scoped BigOperators

theorem exercise_7_3_37 {p m : ℕ} (hp : p.Prime) :
  IsNilpotent (span ({↑p} : Set $ ZMod $ p^m) : Ideal $ ZMod $ p^m) := by
  sorry

open Fintype Subgroup Set Polynomial Ideal
open scoped BigOperators

theorem exercise_8_1_12 {N : ℕ} (hN : N > 0) {M M': ℤ} {d : ℕ}
  (hMN : M.gcd N = 1) (hMd : d.gcd N.totient = 1)
  (hM' : M' ≡ M^d [ZMOD N]) :
  ∃ d' : ℕ, d' * d ≡ 1 [ZMOD N.totient] ∧
  M ≡ M'^d' [ZMOD N] := by
  sorry

open Fintype Subgroup Set Polynomial Ideal
open scoped BigOperators

theorem exercise_8_3_4 {R : Type*} {n : ℤ} {r s : ℚ}
  (h : r^2 + s^2 = n) :
  ∃ a b : ℤ, a^2 + b^2 = n := by
  sorry

open Fintype Subgroup Set Polynomial Ideal
open scoped BigOperators

theorem exercise_8_3_6a {R : Type} [Ring R]
  (hR : R = (GaussianInt ⧸ Ideal.span ({⟨0, 1⟩} : Set GaussianInt))) :
  IsField R ∧ ∃ finR : Fintype R, @card R finR = 2 := by
  sorry

open Fintype Subgroup Set Polynomial Ideal
open scoped BigOperators

theorem exercise_9_1_6 : ¬ Submodule.IsPrincipal
  (span ({MvPolynomial.X 0, MvPolynomial.X 1} : Set (MvPolynomial (Fin 2) ℚ))) := by
  sorry

open Fintype Subgroup Set Polynomial Ideal
open scoped BigOperators

theorem exercise_9_3_2 {f g : Polynomial ℚ} (i j : ℕ)
  (hfg : ∀ n : ℕ, ∃ a : ℤ, (f*g).coeff = a) :
  ∃ a : ℤ, f.coeff i * g.coeff j = a := by
  sorry

open Fintype Subgroup Set Polynomial Ideal
open scoped BigOperators

theorem exercise_9_4_2b : Irreducible
  (X^6 + 30*X^5 - 15*X^3 + 6*X - 120 : Polynomial ℤ) := by
  sorry

open Fintype Subgroup Set Polynomial Ideal
open scoped BigOperators

theorem exercise_9_4_2d {p : ℕ} (hp : p.Prime ∧ p > 2)
  {f : Polynomial ℤ} (hf : f = (X + 2)^p):
  Irreducible (∑ n ∈ (f.support \ {0}), (f.coeff n : Polynomial ℤ) * X ^ (n-1) :
  Polynomial ℤ) := by
  sorry

open Fintype Subgroup Set Polynomial Ideal
open scoped BigOperators

theorem exercise_9_4_11 :
  Irreducible ((MvPolynomial.X 0)^2 + (MvPolynomial.X 1)^2 - 1 : MvPolynomial (Fin 2) ℚ) := by
  sorry

open Filter Set TopologicalSpace
open scoped Topology

theorem exercise_13_1 (X : Type*) [TopologicalSpace X] (A : Set X)
  (h1 : ∀ x ∈ A, ∃ U : Set X, x ∈ U ∧ IsOpen U ∧ U ⊆ A) :
  IsOpen A := by
  sorry

open Filter Set TopologicalSpace
open scoped Topology

def is_topology (X : Type*) (T : Set (Set X)) :=
  univ ∈ T ∧
  (∀ s t, s ∈ T → t ∈ T → s ∩ t ∈ T) ∧
  (∀s, (∀t ∈ s, t ∈ T) → sUnion s ∈ T)

theorem exercise_13_4a1 (X I : Type*) (T : I → Set (Set X)) (h : ∀ i, is_topology X (T i)) :
  is_topology X (⋂ i : I, T i) := by
  sorry

open Filter Set TopologicalSpace
open scoped Topology

theorem exercise_13_4b1 (X I : Type*) (T : I → Set (Set X)) (h : ∀ i, is_topology X (T i)) :
  ∃! T', is_topology X T' ∧ (∀ i, T i ⊆ T') ∧
  ∀ T'', is_topology X T'' → (∀ i, T i ⊆ T'') → T'' ⊆ T' := by
  sorry

open Filter Set TopologicalSpace
open scoped Topology

theorem exercise_13_5a {X : Type*}
  [TopologicalSpace X] (A : Set (Set X)) (hA : IsTopologicalBasis A) :
  generateFrom A = generateFrom (sInter {T | is_topology X T ∧ A ⊆ T}) := by
  sorry

open Filter Set TopologicalSpace
open scoped Topology

def lower_limit_topology (X : Type) [Preorder X] :=
  generateFrom {S : Set X | ∃ a b, a < b ∧ S = Set.Ico a b}

def Rl := lower_limit_topology ℝ

def K : Set ℝ := {r | ∃ n : ℕ, r = 1 / n}

def K_topology := generateFrom
  ({S : Set ℝ | ∃ a b, a < b ∧ S = Set.Ioo a b} ∪ {S : Set ℝ | ∃ a b, a < b ∧ S = Set.Ioo a b \ K})

theorem exercise_13_6 :
  ¬ (∀ U, Rl.IsOpen U → K_topology.IsOpen U) ∧ ¬ (∀ U, K_topology.IsOpen U → Rl.IsOpen U) := by
  sorry

open Filter Set TopologicalSpace
open scoped Topology

theorem exercise_13_8b :
  (generateFrom {S : Set ℝ | ∃ a b : ℚ, a < b ∧ S = Set.Ico ↑a ↑b}).IsOpen ≠
  (lower_limit_topology ℝ).IsOpen := by
  sorry

open Filter Set TopologicalSpace
open scoped Topology

theorem exercise_16_4 {X Y : Type*} [TopologicalSpace X] [TopologicalSpace Y]
  (π₁ : X × Y → X)
  (π₂ : X × Y → Y)
  (h₁ : π₁ = Prod.fst)
  (h₂ : π₂ = Prod.snd) :
  IsOpenMap π₁ ∧ IsOpenMap π₂ := by
  sorry

open Filter Set TopologicalSpace
open scoped Topology

theorem exercise_17_4 {X : Type*} [TopologicalSpace X]
  (U A : Set X) (hU : IsOpen U) (hA : IsClosed A) :
  IsOpen (U \ A) ∧ IsClosed (A \ U) := by
  sorry

open Filter Set TopologicalSpace
open scoped Topology

theorem exercise_18_8b {X Y : Type*} [TopologicalSpace X] [TopologicalSpace Y]
  [LinearOrder Y] [OrderTopology Y] {f g : X → Y}
  (hf : Continuous f) (hg : Continuous g) :
  Continuous (λ x => min (f x) (g x)) := by
  sorry

open Filter Set TopologicalSpace
open scoped Topology

theorem exercise_19_6a
  {n : ℕ}
  {f : Fin n → Type*} {x : ℕ → Πa, f a}
  (y : Πi, f i)
  [Πa, TopologicalSpace (f a)] :
  Tendsto x atTop (𝓝 y) ↔ ∀ i, Tendsto (λ j => (x j) i) atTop (𝓝 (y i)) := by
  sorry

open Filter Set TopologicalSpace
open scoped Topology

abbrev I : Set ℝ := Icc 0 1

theorem exercise_21_6a
  (f : ℕ → I → ℝ )
  (h : ∀ x n, f n x = x ^ n) :
  ∀ x, ∃ y, Tendsto (λ n => f n x) atTop (𝓝 y) := by
  sorry

open Filter Set TopologicalSpace
open scoped Topology

theorem exercise_21_8
  {X : Type*} [TopologicalSpace X] {Y : Type*} [MetricSpace Y]
  {f : ℕ → X → Y} {x : ℕ → X}
  (hf : ∀ n, Continuous (f n))
  (x₀ : X)
  (hx : Tendsto x atTop (𝓝 x₀))
  (f₀ : X → Y)
  (hh : TendstoUniformly f f₀ atTop) :
  Tendsto (λ n => f n (x n)) atTop (𝓝 (f₀ x₀)) := by
  sorry

open Filter Set TopologicalSpace
open scoped Topology

theorem exercise_22_2b {X : Type*} [TopologicalSpace X]
  {A : Set X} (r : X → A) (hr : Continuous r) (h : ∀ x : A, r x = x) :
  IsQuotientMap r := by
  sorry

open Filter Set TopologicalSpace
open scoped Topology

theorem exercise_23_2 {X : Type*}
  [TopologicalSpace X] {A : ℕ → Set X} (hA : ∀ n, IsConnected (A n))
  (hAn : ∀ n, A n ∩ A (n + 1) ≠ ∅) :
  IsConnected (⋃ n, A n) := by
  sorry

open Filter Set TopologicalSpace
open scoped Topology

set_option checkBinderAnnotations false

theorem exercise_23_4 {X : Type*} [TopologicalSpace X] [CofiniteTopology X]
  (s : Set X) : Infinite s → IsConnected s := by
  sorry

open Filter Set TopologicalSpace
open scoped Topology

theorem exercise_23_9 {X Y : Type*}
  [TopologicalSpace X] [TopologicalSpace Y]
  (A₁ A₂ : Set X)
  (B₁ B₂ : Set Y)
  (hA : A₁ ⊂ A₂)
  (hB : B₁ ⊂ B₂)
  (hA : IsConnected A₂)
  (hB : IsConnected B₂) :
  IsConnected ({x | ∃ a b, x = (a, b) ∧ a ∈ A₂ ∧ b ∈ B₂} \
      {x | ∃ a b, x = (a, b) ∧ a ∈ A₁ ∧ b ∈ B₁}) := by
  sorry

open Filter Set TopologicalSpace
open scoped Topology

theorem exercise_24_2 {f : (Metric.sphere 0 1 : Set ℝ) → ℝ}
  (hf : Continuous f) : ∃ x, f x = f (-x) := by
  sorry

open Filter Set TopologicalSpace
open scoped Topology

theorem exercise_25_4 {X : Type*} [TopologicalSpace X]
  [LocPathConnectedSpace X] (U : Set X) (hU : IsOpen U)
  (hcU : IsConnected U) : IsPathConnected U := by
  sorry

open Filter Set TopologicalSpace
open scoped Topology

theorem exercise_26_11
  {X : Type*} [TopologicalSpace X] [CompactSpace X] [T2Space X]
  (A : Set (Set X)) (hA : ∀ (a b : Set X), a ∈ A → b ∈ A → a ⊆ b ∨ b ⊆ a)
  (hA' : ∀ a ∈ A, IsClosed a) (hA'' : ∀ a ∈ A, IsConnected a) :
  IsConnected (⋂₀ A) := by
  sorry

open Filter Set TopologicalSpace
open scoped Topology

theorem exercise_27_4
  {X : Type*} [MetricSpace X] [ConnectedSpace X] (hX : ∃ x y : X, x ≠ y) :
  ¬ Countable (univ : Set X) := by
  sorry

open Filter Set TopologicalSpace
open scoped Topology

def countably_compact (X : Type*) [TopologicalSpace X] :=
  ∀ U : ℕ → Set X,
  (∀ i, IsOpen (U i)) ∧ ((univ : Set X) ⊆ ⋃ i, U i) →
  (∃ t : Finset ℕ, (univ : Set X) ⊆ ⋃ i ∈ t, U i)

theorem exercise_28_5
  (X : Type*) [TopologicalSpace X] :
  countably_compact X ↔ ∀ (C : ℕ → Set X), (∀ n, IsClosed (C n)) ∧
  (∀ n, C n ≠ ∅) ∧ (∀ n, C n ⊆ C (n + 1)) → ∃ x, ∀ n, x ∈ C n := by
  sorry

open Filter Set TopologicalSpace
open scoped Topology

theorem exercise_29_1 : ¬ LocallyCompactSpace ℚ := by
  sorry

open Filter Set TopologicalSpace
open scoped Topology

theorem exercise_29_10 {X : Type*}
  [TopologicalSpace X] [T2Space X] (x : X)
  (hx : ∃ U : Set X, x ∈ U ∧ IsOpen U ∧ (∃ K : Set X, U ⊂ K ∧ IsCompact K))
  (U : Set X) (hU : IsOpen U) (hxU : x ∈ U) :
  ∃ (V : Set X), IsOpen V ∧ x ∈ V ∧ IsCompact (closure V) ∧ closure V ⊆ U := by
  sorry

open Filter Set TopologicalSpace
open scoped Topology

theorem exercise_30_13 {X : Type*} [TopologicalSpace X]
  (h : ∃ (s : Set X), Countable s ∧ Dense s) (U : Set (Set X))
  (hU : ∀ (x y : Set X), x ∈ U → y ∈ U → x ≠ y → x ∩ y = ∅) :
  Countable U := by
  sorry

open Filter Set TopologicalSpace
open scoped Topology

theorem exercise_31_2 {X : Type*}
  [TopologicalSpace X] [NormalSpace X] {A B : Set X}
  (hA : IsClosed A) (hB : IsClosed B) (hAB : Disjoint A B) :
  ∃ (U V : Set X), IsOpen U ∧ IsOpen V ∧ A ⊆ U ∧ B ⊆ V ∧ closure U ∩ closure V = ∅ := by
  sorry

open Filter Set TopologicalSpace
open scoped Topology

theorem exercise_32_1 {X : Type*} [TopologicalSpace X]
  (hX : NormalSpace X) (A : Set X) (hA : IsClosed A) :
  NormalSpace {x // x ∈ A} := by
  sorry

open Filter Set TopologicalSpace
open scoped Topology

theorem exercise_32_2b
  {ι : Type*} {X : ι → Type*} [∀ i, TopologicalSpace (X i)]
  (h : ∀ i, Nonempty (X i)) (h2 : RegularSpace (Π i, X i)) :
  ∀ i, RegularSpace (X i) := by
  sorry

open Filter Set TopologicalSpace
open scoped Topology

theorem exercise_32_3 {X : Type*} [TopologicalSpace X]
  (hX : LocallyCompactSpace X) (hX' : T2Space X) :
  RegularSpace X := by
  sorry

open Filter Set TopologicalSpace
open scoped Topology

theorem exercise_33_8
  (X : Type*) [TopologicalSpace X] [RegularSpace X]
  (h : ∀ x A, IsClosed A ∧ ¬ x ∈ A →
  ∃ (f : X → I), Continuous f ∧ f x = (1 : I) ∧ f '' A = {0})
  (A B : Set X) (hA : IsClosed A) (hB : IsClosed B)
  (hAB : Disjoint A B)
  (hAc : IsCompact A) :
  ∃ (f : X → I), Continuous f ∧ f '' A = {0} ∧ f '' B = {1} := by
  sorry

open Filter Set TopologicalSpace
open scoped Topology

theorem exercise_38_6 {X : Type*}
  (X : Type*) [TopologicalSpace X] [RegularSpace X]
  (h : ∀ x A, IsClosed A ∧ ¬ x ∈ A →
  ∃ (f : X → I), Continuous f ∧ f x = (1 : I) ∧ f '' A = {0}) :
  IsConnected (univ : Set X) ↔ IsConnected (univ : Set (StoneCech X)) := by
  sorry

open Real
open scoped BigOperators

theorem exercise_1_27 {n : ℕ} (hn : Odd n) : 8 ∣ (n^2 - 1) := by
  sorry

open Real
open scoped BigOperators

theorem exercise_1_31  : (⟨1, 1⟩ : GaussianInt) ^ 2 ∣ 2 := by
  sorry

open Real
open scoped BigOperators

theorem exercise_2_21 {l : ℕ → ℝ}
  (hl : ∀ p n : ℕ, p.Prime → l (p^n) = Real.log p )
  (hl1 : ∀ m : ℕ, ¬ IsPrimePow m → l m = 0) :
  l = λ n => ∑ d : Nat.divisors n, ArithmeticFunction.moebius (n/d) * Real.log d := by
  sorry

open Real
open scoped BigOperators

theorem exercise_3_1'' : Infinite {p : Nat.Primes // p ≡ -1 [ZMOD 6]} := by
  sorry

open Real
open scoped BigOperators

theorem exercise_3_5' : ¬ ∃ x y : ℤ, 7*x^3 + 2 = y^3 := by
  sorry

open Real
open scoped BigOperators

theorem exercise_3_14' {p q n : ℕ} (hp0 : p.Prime ∧ p > 2)
  (hq0 : q.Prime ∧ q > 2) (hpq0 : p ≠ q) (hpq1 : p - 1 ∣ q - 1)
  (hn : n.gcd (p*q) = 1) :
  n^(q-1) ≡ 1 [MOD p*q] := by
  sorry

open Real
open scoped BigOperators

theorem exercise_4_5 {p t : ℕ} (hp0 : p.Prime) (hp1 : p = 4*t + 3)
  (a : ZMod p) :
  IsPrimitiveRoot a p ↔ ((-a) ^ ((p-1)/2) = 1 ∧ ∀ (k : ℕ), k < (p-1)/2 → (-a)^k ≠ 1) := by
  sorry

open Real
open scoped BigOperators

theorem exercise_4_8 {p a : ℕ} (hp : Odd p) :
  IsPrimitiveRoot a p ↔ (∀ q : ℕ, q ∣ (p-1) → q.Prime → ¬ a^(p-1) ≡ 1 [MOD p]) := by
  sorry

open Real
open scoped BigOperators

theorem exercise_5_13' {p x: ℤ} (hp : Prime p)
  (hpx : p ∣ (x^4 - x^2 + 1)) : p ≡ 1 [ZMOD 12] := by
  sorry

open Real
open scoped BigOperators

theorem exercise_5_37 {p q : ℕ} [Fact (p.Prime)] [Fact (q.Prime)] {a : ℤ}
  (ha : a < 0) (h0 : p ≡ q [ZMOD 4*a]) (h1 : ¬ ((p : ℤ) ∣ a)) :
  legendreSym p a = legendreSym q a := by
  sorry

open Real
open scoped BigOperators

theorem exercise_18_4 {n : ℕ} (hn : ∃ x y z w : ℤ,
  x^3 + y^3 = n ∧ z^3 + w^3 = n ∧ x ≠ z ∧ x ≠ w ∧ y ≠ z ∧ y ≠ w) :
  n ≥ 1729 := by
  sorry

open scoped BigOperators

open scoped BigOperators

theorem exercise_2020_b5 (z : Fin 4 → ℂ) (hz0 : ∀ n, ‖z n‖ < 1)
  (hz1 : ∀ n : Fin 4, z n ≠ 1) :
  3 - z 0 - z 1 - z 2 - z 3 + (z 0) * (z 1) * (z 2) * (z 3) ≠ 0 := by
  sorry

open scoped BigOperators

theorem exercise_2018_b2 (n : ℕ) (hn : n > 0) (f : ℕ → ℂ → ℂ)
  (hf : ∀ n : ℕ, f n = λ (z : ℂ) => (∑ i : Fin n, (n-i)* z^(i : ℕ))) :
  ¬ (∃ z : ℂ, ‖z‖ ≤ 1 ∧ f n z = 0) := by
  sorry

open scoped BigOperators

theorem exercise_2017_b3 (f : ℝ → ℝ) (c : ℕ → ℝ)
  (hf : f = λ x => (∑' (i : ℕ), (c i) * x^i))
  (hc : ∀ n, c n = 0 ∨ c n = 1)
  (hf1 : f (2/3) = 3/2) :
  Irrational (f (1/2)) := by
  sorry

open scoped BigOperators

theorem exercise_2010_a4 (n : ℕ) :
  ¬ Nat.Prime (10^10^10^n + 10^10^n + 10^n - 1) := by
  sorry

open scoped BigOperators

theorem exercise_2000_a2 :
  ∀ N : ℕ, ∃ n : ℕ, n > N ∧ ∃ i : Fin 6 → ℕ, n = (i 0)^2 + (i 1)^2 ∧
  n + 1 = (i 2)^2 + (i 3)^2 ∧ n + 2 = (i 4)^2 + (i 5)^2 := by
  sorry

open scoped BigOperators

theorem exercise_1998_a3 (f : ℝ → ℝ) (hf : ContDiff ℝ 3 f) :
  ∃ a : ℝ, (f a) * (deriv f a) * (iteratedDeriv 2 f a) * (iteratedDeriv 3 f a) ≥ 0 := by
  sorry
