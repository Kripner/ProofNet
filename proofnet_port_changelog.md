# Porting proofnet-valid.lean and proofnet-test.lean from Lean 4.9 to Lean 4.29

## Finset sum syntax: `in` replaced by `∈`

The bigoperator notation `∑ i in s, f i` was changed to `∑ i ∈ s, f i`.

## Complex `abs` replaced by norm `‖·‖`

`abs` on `ℂ` now requires a `Lattice` instance (since `abs x = x ⊔ (-x)`), which `ℂ` doesn't have. The old `Complex.abs` no longer exists. Use the norm `‖·‖` instead.

## `Inf` / `Sup` renamed to `sInf` / `sSup`

The set-based infimum and supremum functions were renamed.

## Ambiguous `sqrt`, `cos`, `log`, `sin` -- qualify with `Real.`

When `Complex` is opened, bare `sqrt`, `cos`, `log`, `sin` are ambiguous between `Real.*` and `Complex.*`. Qualify with `Real.sqrt`, `Real.cos`, `Real.log`, `Real.sin`.

## `inner` requires explicit type annotation

`inner x y` for `EuclideanSpace ℝ (Fin n)` no longer resolves correctly. Use `@inner ℝ _ _ x y`.

## `center` ambiguity -- use `Subgroup.center`

Bare `center G` is ambiguous between `Subgroup.center` and `Set.center`. Qualify as `Subgroup.center G`.

## Inner product notation `⟪u, v⟫_ℂ` requires `open scoped InnerProductSpace`

The scoped notation is no longer available with just `open scoped BigOperators`. Add `open scoped InnerProductSpace`.

## `range` ambiguity -- use `LinearMap.range`

Bare `range T` for a linear map is ambiguous between `LinearMap.range` and `Set.range`. Qualify as `LinearMap.range T`.

## `relindex` renamed to `relIndex` (camelCase)

`Subgroup.relindex` was renamed to `Subgroup.relIndex`.

## `QuotientMap` renamed to `IsQuotientMap`

Follows the Mathlib `Is*` naming convention.

## `span` ambiguity -- use `Ideal.span`

Bare `span` can be ambiguous between `Submodule.span` and `Ideal.span`. Qualify when needed.

## `Ico` / `Ioo` ambiguity -- use `Set.Ico` / `Set.Ioo`

When both `Set` and `Finset` are in scope (directly or transitively), bare `Ico`/`Ioo` are ambiguous. Qualify with `Set.`.

## `CancelCommMonoidWithZero` deprecated

`[CancelCommMonoidWithZero R]` replaced by `[CommMonoidWithZero R] [IsCancelMulZero R]`.

## `TopologicalGroup` renamed to `IsTopologicalGroup`

Same `Is*` convention as `QuotientMap` above.

## `IsNormalSubgroup` removed

`IsNormalSubgroup C` (for `C : Set G`) no longer exists. Use `∃ (H : Subgroup G), H.Normal ∧ (H : Set G) = C` or equivalent.

## `id` ambiguity -- use `_root_.id`

When `RingHom` is in scope, bare `id` is ambiguous between `_root_.id` and `RingHom.id`.

## `Finset.card` vs `Fintype.card` ambiguity

When both `Fintype` and `Finset` are in scope, bare `card I` for a `Finset` is ambiguous. Use `I.card` (dot notation).

## Duplicate theorem names resolved with `'` suffix

Several theorem names appeared twice (from different textbooks). The second occurrence was renamed by appending `'`:

### Valid split
- `exercise_3_3` renamed to `exercise_3_3'`
- `exercise_3_22` renamed to `exercise_3_22'`
- `exercise_4_5_16` renamed to `exercise_4_5_16'`
- `exercise_3_1` renamed to `exercise_3_1'`
- `exercise_5_4` renamed to `exercise_5_4'`

### Test split
- `exercise_5_1` renamed to `exercise_5_1'` (2nd) and `exercise_5_1''` (3rd)
- `exercise_1_4` renamed to `exercise_1_4'`
- `exercise_4_5_23` renamed to `exercise_4_5_23'`
- `exercise_3_4` renamed to `exercise_3_4'`
