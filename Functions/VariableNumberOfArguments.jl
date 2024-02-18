# Sometimes we don't know how many arguments we will have in advance!

varFunc(x...) = (x)
varFunc(3,4,5,6)
varFunc(3)

function printAll(x...)
    println(x)    
end

printAll(1,2,3,4)
printAll("Julia", "Emre")

addAll(x, y...) = x + addAll(y...)
addAll(x) = x
addAll(3,5,6,7,8,9,1,2,3,4,5)

findmin(x,y) = x < y ? x : y
findmin(x,y...) = findmin(x, findmin(y...))
findmin(1,5,23,6,231,321,123,54,32,131,132,321,-31,321312321,23213,1231,2312,1,233,132,421)

a,b,c... = Array(1:10)
a
b
c

function  printType(args...)
    for (i, arg) ∈ enumerate(args) 
        println("$i: Type of $arg is $(typeof(arg))")
    end
end

printType(1,2,3,4,5,"Emre", "Julia", [1,2,3], 3 // 2)

(1:10...,) # Splatting

function printArgs(a,b,c)
    println(a)
    println(b)
    println(c)
end

tp1 = ["Mathemathics", "Physics", "Chemistry"]
printArgs(tp1) # Error because we only provided one arguments
printArgs(tp1...)