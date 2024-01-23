import MathLib

--The Pythagorean theorem:The Pythagorean theorem: a^2 + b^2 = c^2
example {a b:ℤ }(h1: a + b =3)(h2:a=-1):b=4:=by
 have h3:=
 calc
    b=a+b-a :=by ring
    _=3-a :=by rw[h1]
    _=3-(-1) :=by rw[h2]
    _=4 :=by ring

example (x q : ℕ) : 37 * x + q = 37 * x + q := by ring
example (x y : ℕ) (h : y = x + 7) : 2 * y = 2 * (x + 7) :=
 calc
   2 * y = 2 * y :=by rfl
   _=2*(x + 7):=by rw[h]

#eval Nat.succ (Nat.succ (0))

example : 2 = Nat.succ (Nat.succ 0) := by ring

example (a b c : ℕ) : a + (b + 0) + (c + 0) = a + b + c := by ring
theorem succ_eq_add_one n : Nat.succ (n) = n + 1 := by rfl
#check succ_eq_add_one 1
example : (2 : ℕ) + 2 = 4 := by rfl
theorem zero_addition (n : ℕ) : 0 + n = n := by ring_nf
#check zero_addition 3


def MassEnergyFun (m c:ℤ ):=m*c^2
--proving E=mc^2
--Maxwell's electromagnetic equations E=p*c and momentum definition
variable (E m c p : 𝔽  → ℝ  )
theorem MassEnergy (h1:E=p*c)(h2:p=m*c):E=m*c^2:=
have h3:=
calc
   E=p*c := by rw[h1]
   _=m*c*c := by rw[h2]
   _=m*c^2 :=by ring
h3

#check MassEnergy


def OrGate (a b:Bool):Bool:=a∨b
#eval OrGate true false


example {a b : ℝ} (h1 : a - 5 * b = 4) (h2 : b + 2 = 3) : a = 9 := by
  have hb : b = 1 := by linarith
  calc
    a = a - 5 * b + 5 * b := by ring
    _ = 4 + 5 * 1 := by rw [h1, hb]
    _ = 9 := by ring
