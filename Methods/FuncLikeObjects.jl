# We can add methods to struct 
mutable struct model{R}
    coefficients :: Vector{R}
end

function (m :: model)(x)
    coeffis = m.coefficients
    s = 0
    for i ∈ 1:length(x)
        s += x[i] * coeffis[i]
    end

    return s
end

lm = model([1,3,5])
lm([2,4,6])
