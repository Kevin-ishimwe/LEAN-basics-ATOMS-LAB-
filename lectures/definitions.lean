import Mathlib
section variabledef
/- Define some constants. -/
def a:ℕ:=2
def n : Nat := 5
def b:Bool:=true
def c:Bool:=false
/- Check their types. -/
#check a
#check b
/- Evaluate -/
#eval a
#eval a*n
#eval b
#eval b && c
end variabledef
/- definitions with direct proportionality-/
--simple definitions
def maximum (n:ℤ )(k:ℤ ):ℤ :=
  if n>k then n
  else k
#eval maximum  12 6

def joinStringsWith (str1 str2 str3:String):String:=String.append (str2 ) (String.append str1 str3)
#eval joinStringsWith "World " "Hello " "welcome"

def volume (h w d:ℕ ):=h*w*d
#eval volume 4 3 2

def multiplier (x y :ℕ ):=x*y
#eval multiplier 5 4

def increment(x : ℕ  ):= x+1
#eval increment (4)

def addition (x y : ℕ ):=x+y
example : addition 4 5 = 9 :=rfl

def FoX (f :ℕ → ℕ  )(a:ℕ ):= f (f a)
#eval FoX (fun x=>x+4) 10

--Odd num def
def odd (n:ℤ  ): Prop := ∃ k,n=k*2+1
#check odd


example: odd (-3:ℤ) := by
dsimp[odd]
use -2
norm_num

--definition for even numbers
def even (n:ℤ ):Prop := ∃ k,n=k*2
#check even 3

example: even 6 :=by
use 3
linarith
--functions with fun or lambda (λ)
#check fun( x : ℕ  )=> x + 5
#check (λ x:ℕ =>x + 5)
--eval a lambda function
#eval (λ x:ℕ =>x + 5) 10
--type specification
def stringcast (n:ℕ  ): String := toString n
#check stringcast
#eval stringcast 4

def findY (y:ℕ  → ℕ ) (x:ℕ):= y x
#print findY
#eval findY (fun x=>x+2) 4


section limit
--limit definition
universe u
def limit (f:Float  → f) (h:Float   ):= f (h)
--i.e
#eval limit (fun x=>2*(x^2)- 3*x+2*x+2) 2
end limit

def π :=3.1416
def convert (deg:Float ):=deg*π/180
--definition for sine function using taylor expansion sin (x)=x-(x^3)+1/120(x^5)
def sine (x :Float):Float:=
  x-((x)^3)/6+((x)^5)/120
#eval sine (convert 50)

def even2 (n : Nat) : Bool :=
  match n with
  | Nat.zero => true
  | Nat.succ k => not (even2 k)
#eval even2 5
