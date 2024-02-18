function Fibonacci(n :: Unsigned) :: Unsigned
    a, b = (0,1)
    for i ∈ 1:n 
        a, b = b, a + b
    end

    return a
end

Fibonacci(UInt32(2))