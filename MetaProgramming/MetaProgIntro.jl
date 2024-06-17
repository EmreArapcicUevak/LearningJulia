using Dates

function getTime(myFunction, args...)
    t0 = Dates.now()
    result = myFunction(args...)
    t1 = Dates.now()

    duration = t1 - t0
    println("duration: $duration")

    return result
end

getTime(rand, 100)
getTime(rand, 2,2)
getTime(println, "test", "hello")

using GraphRecipes, Plots

expresion = :(3x - 7y + z * t)
plot(expresion, fontsize = 16)

exp = :(
    function power(a,b)
        return a^b;
    end
)
dump(exp)
exp.head
plot(exp, fontsize = 10)

exp2 = :(
    for i ∈ 1:15
        println(i)
    end
)
exp2.head

plot(exp2)

mutable struct Point
    x
    y
end

Expr(:struct, true, :Point, Expr(:block, :a, :b))

var = 7
:(ref = :var) 
:(ref = :($var)) 

macro hello(exp)
    println("Hello $exp")
end

@hello "Emre"

macro chain(x, funcs...)
    ex = x
    for f ∈ funcs
        ex = Expr(:call, f, ex)
    end

    return ex
end

macro chain2(x, funcs...)
    ex = Expr(:call, :($funcs[1]), x)

    for f ∈ funcs[2:end]
        ex = Expr(:call, f, ex)
    end

    return ex
end

f(x) = x + 8
g(x) = x^2
h(x) = x/5

@macroexpand @chain 2 f g h 
@macroexpand @chain2 2 f g h

#=
:(Main.h(Main.g(
    (
        (
            (:f, :g, :h)
        )[1]
    )(2)
)))
=#

macro without_esc(x)
    quote
        println(y)
        println($x + y)
    end
end

y = 10
@macroexpand @without_esc(5)  # Output: 2
@without_esc(5)  # Output: 2
println(y)       # Output: 1 (y has been modified by the macro)
