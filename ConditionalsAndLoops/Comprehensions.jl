arr = [5, 8, 12, 17, 24, 42]

[x^2 for x ∈ arr]
[(x^2, y^2) for x ∈ 1:4, y ∈ 1:3]
[x^2 for x ∈ arr if iseven(x)]
[(i,j) for i = 1:5 for j=1:i]

(x^2 for x ∈ 1:1000) # Generators | More efficent

s = 0
@time for i = 1:1_000_000_000  
    s += i^2 
end # ≈16.05 seconds

# @time is a macro which is used to calculate the runtime of functions, more on macros later!

@time sum([i^2 for i ∈ 1:1_000_000_000]) # ≈ 0.908 seconds 
@time sum((i^2 for i ∈ 1:1_000_000_000)) # ≈ 0.015 seconds! 