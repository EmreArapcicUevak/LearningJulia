struct Rectangle
    width::Float64
    lenght::Float64
end

fieldnames(Rectangle)

rect1 = Rectangle(4, 7)
rect1.lenght
rect1.width

# rect2 = Rectangle(5) Error we need exactly 2 floats
# rect2.width = 5 Error since structs by default are immutable

mutable struct mutableRectangle
    width :: Float64
    length :: Float64
end

rect2 = mutableRectangle(2,2);
rect2
rect2.width = 3
rect2

supertype(Rectangle)
supertype(Any)

abstract type Shape end

mutable struct  RectangleShape <: Shape
    width :: Float64
    height :: Float64
end

mutable struct Square <: Shape
    length :: Float64
end

mutable struct  Circle <: Shape
    radius :: Float64
end

intStr = Union{Integer, AbstractString}

x = 123; y = "123"; z = 123.0;
x :: intStr
y :: intStr
# z :: intStr Error since floats aren't either Integer or Abstract String