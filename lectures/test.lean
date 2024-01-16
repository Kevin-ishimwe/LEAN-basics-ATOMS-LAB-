import Mathlib

--basics
#eval String.append ("hello") (if 1>2 then" world" else " kevin")
#check true

example {p q r :ℚ }(h1 : p + q + r = 0)(h2: p * q+ q * r + p * r =2):p ^ 2 + q ^ 2 + r ^ 2 = -4 :=
  calc
  p ^ 2+q ^ 2+r ^ 2=(p + q + r)^2  - 2*(p * q) - 2*(p*r) - 2*(q*r) :=by ring
  _=0^2 - 2*(p * q) - 2*(p*r) - 2*(q*r) := by rw[h1]
  _= - 2*(p * q+ q * r + p * r ) := by ring
  _= - 2*2 := by rw[h2]
  _= - 4 := by ring

--definition for exisiting limit
example {a b:ℝ  } (h1:a+b=5)(h2:b=1): a=4 :=
  calc
  a=a+b-b := by ring
  _=5-b := by rw[h1]
  _=5-1 := by rw[h2]
  _=4 :=by ring

theorem and_commutative (p q : Prop) : p ∧ q → q ∧ p :=
  fun hpq : p ∧ q =>
  have hp : p := And.left hpq
  have hq : q := And.right hpq
  show q ∧ p from And.intro hq hp
