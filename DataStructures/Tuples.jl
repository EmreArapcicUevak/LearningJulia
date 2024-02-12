# Tuples once created can-not be modified

tuple1 = (3, "Julia", 2022, 4.12)
typeof(tuple1)

tuple2 = tuple(3, "Julia", 2022, 4.12)
tuple1 == tuple2
tuple1 === tuple2

isa(tuple1, Tuple)
supertype(Tuple)

tuple3 = "Julia", 2022, 10 // 3

x = (6) # Not a tuple
typeof(x)

y = (6,) # Now it is a tuple
typeof(y)

tuple1[2]
tuple1[1:3]

tuple4 = (name = "Julia", year = 2012, version = 1.7)
typeof(tuple4)
tuple4.name
tuple4[1]
tuple4[1] == tuple4.name

# tuple5 = (name = "Julia", 12) Invalid, once one value is named all values need to be named 

mathConsts = (MathConstants.pi, MathConstants.e, MathConstants.golden)
p, e, g = mathConsts # Tuple unpacking
p 
e
g

nTuple = (3,4,5,6)
typeof(nTuple)
ntuple(x -> x^3, 5) # We will talk about functions later on

# Checking if something is in a tuple
in(2022, tuple1)
in("Python", tuple1)

2022 ∈ tuple1 # Another way to do in(2022, tuple1)
"C++" ∈ tuple1

1999 ∉ tuple1
2022 ∉ tuple4

2022 in tuple1