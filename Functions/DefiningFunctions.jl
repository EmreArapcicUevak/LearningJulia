#=
    function <fName> (<arguments>)
        <function body>
    end

    or 

    fName(<arguments>) = <functionBody>
=#


function myMax(array)
    local maxNum = numbers[1]
    for i ∈ array[2:end]
        maxNum = i > maxNum ? i : maxNum
    end

    return maxNum
end

myMax(numbers)
myMax(rand(1:200, 100))


# Now let's make a power function 

power(x,y) = x^y 
power(2,2)

ϕ(x,y) = x^y
ϕ(3,3)

ϕ

phi = ϕ
phi(1,4)

# We can specify argument types and it has no performance drop and it is used for multiple dispatch

function fact(n :: Unsigned) :: Unsigned
    local accumulator :: UInt 
    for i ∈ 2:n
        accumulator *= i
    end

    return accumulator
end

fact(10)
fact(fact(3))


function absDiff(a,b)
    if a ≥ b 
        return a - b 
    else 
        return b - a
    end
end
    
absDiff(10,20)
absDiff(20,10)

*(1,2,3)
m = *
m(1,2,3)


function findMeanAndSD(array :: AbstractArray)
    local sum = 0
    for x ∈ array
        sum += x
    end


    μ = sum / length(array)

    σ = 0
    for x ∈ array
        σ += (x - μ)^2
    end 
    σ = √(σ / (length(array) - 1))

    return μ, σ
end

findMeanAndSD([1,2,3,3,3,4,5,6])

# Anonymous functions 
x -> 3x^2 + 5x - 4
g = x -> 3x^2 - 4
g(4)

(x,y,z) -> (x^3 - y^3) / z^3

recursionFactorial(n :: Unsigned) = n == 1 ? 1 : n * recursionFactorial(n-1)

Int128(recursionFactorial(UInt64(7)))

fibo(n :: Unsigned) = n ≤ 2 ? 1 : fibo(n-1) + fibo(n-2)

fibo(UInt64(10))