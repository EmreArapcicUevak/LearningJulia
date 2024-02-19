# methods functions shows you the list of all methods defined for a function

methods(*)
*(1,2,3,4,5)
# But multiplication is also defined for matricies

mat1 = reshape(Vector(1:12), (3,4))
mat2 = reshape(Vector(11:22), (4,3))

*(mat1, mat2)

*("Julia", " Programming")

# Now let's define our own methods!

f(x::Float64, y::Float64) = x^2 + y^2
f(3.0, 6.0)

f(3,6) # Error because Int64 is not Float64
f(3f0, 6f0) # Float32 isn't define either and Julia doesn't convert types automatically

f(x::Number, y::Number) = x^2 + y^2 # If we use the abstract Number all of paramaterss that are numbers will work because all subtypes can now be inputed
f(3.0, 6.0)
f(3,6)
f(3f0, 6f0)

f("xyz", 4.5) # Erorr because string isn't a subtype of Number
# Note if we don't specify a type it is automatically put as ANY

f(x,y) = "I couldn't find the correct method"
# The above code is same as f(x :: Any, y :: Any)

# Now f has 3 methods 
methods(f)
# If no careful the multiple dispact can cause ambiguity, when we call a function the most specific method is called, or better said the one that fits the best
# If there isn't any method that fits then we will get an error 

g(x :: Int64, y) = x * y
g(x, y :: Int64) = x / y

g(4, 4.5) # First method gets applied
g(4.0, 2) # Second method gets applied
g(4,2) # Here we get an ambiguity error since there are multiple methods that Julia sees fit and there isn't a single perfect fit 
# To avoid this let's write a method for when they are both integers

g(x :: Int64, y :: Int64) = x + y
g(4,2)

h(x = 3, y = 4) = x * y
h(x :: Int, y :: Int) = x - y 
h() # The second methods is called because optional arguments are tied to the function and not a specific method, when we pass nothign by default it passes (3,4)
# Methods are dispatch based only on positional arguments, keyword args are processed later

h("abc", "test") # Chooses x * y 

methods(h)