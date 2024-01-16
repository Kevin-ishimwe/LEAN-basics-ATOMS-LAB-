import MathLib
--structures
--simple structure
structure Student where
name: String
gpa: ℕ
team :String
deriving Repr


def kevin :Student := {name:="kevin",gpa:=3,team:="lean4 team"}
#eval kevin

def increaseGpa (n:ℕ ) (student:Student):={student with gpa:=student.gpa+n}
#eval increaseGpa 2 kevin

/- Exercises
    Define a structure named RectangularPrism that contains the height, width, and depth of a rectangular prism, each as a Float.
    Define a function named volume : RectangularPrism → Float that computes the volume of a rectangular prism.
-/
structure RectangularPrism where
height:Float
width:Float
depth:Float
deriving Repr

def volume (rect:RectangularPrism):Float:=rect.height*rect.width*rect.depth
def rect1 :RectangularPrism:={height:=3,width:=2,depth:=4,}
#eval volume rect1
#eval rect1


structure Segement where
deriving Repr


/-The code simulates particles at the origin and checks the resulting
    changes in y and x coordinates due to specified forces and angles.-/
section particleSim
--necessary constants
def π :=3.1416
def convert (deg:Float ):=deg*π/180
--definition for sine and cosine function using taylor expansion sin (x)=x-(x^3)+1/120(x^5)
def sine (x :Float):Float:=
  x-((x)^3)/6+((x)^5)/120
def cosine (x :Float):Float:= 1-((x)^2)/2+((x)^4)/24-(x^6)/720
--particle structure
structure Particle where
x:Float
y:Float
deriving Repr

def resolveForce(f α :Float )(dir:String):= if dir =="x" then f*(sine (convert α)) else f*(cosine (convert α))
--asuming a net force of 1N leads to a net change of in x |1m| and y |1.3m|
def resultantForce (Δ:Float)(dir:String):Float:= if dir == "x" then Δ  else (1.3*Δ)
def changeY (particle:Particle)(Δ:Float):Particle:={particle with y:=particle.y+Δ }
def changeX (particle:Particle)(Δ:Float):Particle:={particle with x:=particle.x+Δ }

def p1:Particle:={x:=0,y:=0}
#check changeY (p1) (resultantForce (resolveForce 5 30 "y") "y")
#check changeX (p1) (resultantForce (resolveForce 5 90 "x") "x")

end particleSim
