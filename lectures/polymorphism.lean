import MathLib

structure Ppoint (α :Type) where
x:α
y:α

deriving Repr

#check Ppoint
def p1: Ppoint ℤ  :={x:=0,y:=5}
#eval p1
def replaceX  (α:Type)(Ppoint:Ppoint α ) (x:α ):={Ppoint with x:=x}
#check replaceX ℤ  p1

inductive Sign where
|pos
|neg


def Pos3orNeg (num:Sign) :match num with |Sign.pos=>ℕ|Sign.neg =>ℤ :=
match num with
| Sign.pos=>(3:ℕ )
| Sign.neg=>(-3:ℤ)
def primesUnder10 (α:Type )(list1:List α ) := (list1)
#eval primesUnder10 String ["hello", "world"]

def length (α : Type) (xs : List α) : Nat :=
  match xs with
  | [] => 0
  | xs => xs.length
#eval length ℕ [1,2]

