arr = [5,8,12,17,24,42]
sqarr = [x^2 for x ∈ arr]

sqarr = map(x -> x^2, arr)
broadcast(x -> x^2, arr)

# Broadcast is stronger when it comes to 2 or more arguments!

rowVec = [1 2 3 4 5]
colVec = [10, 20, 30, 40, 50]

map(+, rowVec, colVec)
rowVec .+ colVec # Broadcasting takes dimentions into account


# Reduce takes all values and reduces them to a single value 
sum = reduce(+, arr)

sqarr = map(x-> x^2, arr)
sumSqr = reduce(+, sqarr)
mapreduce(x -> x^2, +, arr) # First does the mapping then reducing

# Filter takes away certain elements that do not apply with the conditions
filter(x -> x % 4 == 0, arr)

struct Course
    subject :: Symbol
    field :: Symbol
    nCourses :: Int
    nStudents :: Int # Average Number of studnets in course
end

# Symbol is a data type to provide a variable in meta programming but more about that later :)
courseData = [Course(:Julia, :Programming, 10, 250), Course(:Python, :Programming, 50, 750), Course(:Mathemathics, :Science, 30, 100), Course(:Physics, :Science, 45, 300), Course(:R, :Programming, 35, 300)]
nProgramming = filter(x :: Course -> x.field ≡ :Programming ,courseData)
nStudents = map(x :: Course -> x.nCourses * x.nStudents, nProgramming)
totalStudnets = reduce(+, nStudents)

function nField(data :: Vector{Course},field :: AbstractString)
    f = filter(x :: Course -> x.field ≡ Symbol(field), data)
    return mapreduce(x :: Course -> x.nCourses * x.nStudents, +,f)
end

nField(courseData, "Programming")
nField(courseData, "Science")

function f(x :: Real)
    if (x % 2 == 0) && (x % 3 != 0) 
        return "Div2"
    elseif (x % 2 != 0) && (x % 3 == 0) 
        return "Div3"
    elseif x % 6 == 0
        return "Div6"
    else 
        return "DivNone"
    end
end

map(f,arr)
map(x -> begin
    if (x % 2 == 0) && (x % 3 != 0) 
        return "Div2"
    elseif (x % 2 != 0) && (x % 3 == 0) 
        return "Div3"
    elseif x % 6 == 0
        return "Div6"
    else 
        return "DivNone"
    end
end, arr) # Compound expressions

map(arr) do x
    if (x % 2 == 0) && (x % 3 != 0) 
        return "Div2"
    elseif (x % 2 != 0) && (x % 3 == 0) 
        return "Div3"
    elseif x % 6 == 0
        return "Div6"
    else 
        return "DivNone"
    end
end # do x syntax makes an anonymous function with an argument x and sends it as the first argument to the map function 

data = """Programming with Julia.
Higher order functions.
Map, recude and filter."""

open("input.txt", "w") do io
    write(io, data)
end # Opens a file ,or creates if it doesn't exist, in write mode and the following anonymous function gets passed in as well, more on this later ;)