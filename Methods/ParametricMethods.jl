testTypes(x::T, y::T) where {T} = "Arguments have the same type"
testTypes(1,2)
testTypes(5.6,2.2)
testTypes("abc","def")

testTypes(5, 3.2) # Error method error, let's define a fallback for when the types are different
testTypes(x, y) = "Argument types are different"
testTypes(5, 3.2)
testTypes(2,2)
testTypes('a', "vsa")

findType(x :: T) where {T} = T # This shows how important types are in Julia!
findType("Abc")
findType(3 + 5)
findType(1 + 2im)

testTypeNumber(x :: T, y :: T) where {T <: Number} = "Same Type numbers!"
testTypeNumber(1,1)
testTypeNumber(2.3, 4.4)
testTypeNumber(3f0,1f0)

testTypeNumber(3, 7.7) # Method error again.

# testTypeNumber(x :: T, y :: M) where {T <: Number, M <: Number} = "Differet number types!"
testTypeNumber(x :: Number, y :: Number) = "Different number types!"
testTypeNumber(3, 7.7) 
testTypeNumber(3,3)

testTypeNumber('a', 4) # Method error again let's define a fall back for this!
testTypeNumber(x,y) =  "At least one argument is not a number!"
testTypeNumber('a', 4) 


findType(x :: T, y :: P) where {T <: String, P <: Number} = "$x is a String, $y is a Number"
findType("a", 3)

checkTypes(a :: Array{T}, x :: T) where {T} = "$x has the same type with the array."
checkTypes(Vector(1:15), 20)

abstract type Shape end

struct Circle <: Shape 
    radius :: Float64
end

struct Rectangle <: Shape
    width :: Float64
    height :: Float64
end

calculateArea(x :: Circle) = x.radius^2 * π
calculateArea(x :: Rectangle) = x.width * x.height

rec = Rectangle(2,2)
circ = Circle(1)

calculateArea(rec)
calculateArea(circ)

twoArgs(x :: Vararg{Number, 2}) = maximum(x)
twoArgs(5,3.4)
twoArgs(5) # No method matching 
twoArgs(2,4,55) # Same error 
