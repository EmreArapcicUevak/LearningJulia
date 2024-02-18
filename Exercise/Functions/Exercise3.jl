v1 = [1, 2, 3]
v2 = [4, 5, 6]
 
elementwise_sum(v1, v2) = v1 .+ v2
elementwise_sum(v1, v2)


# With a for loop instead of broadcasting 

function elementwise_sum(v1 :: Vector, v2 :: Vector)
    @assert length(v1) == length(v2)
    newArr = []
    for i ∈ 1:length(v1)
        append!(newArr, v1[i] + v2[i])
    end

    return newArr
end

elementwise_sum(v1,v2)


# Wtih list comprehention 
elementwise_sum(v1 :: Vector, v2 :: Vector) = [v1[i] + v2[i] for i ∈ 1:length(v1)]
elementwise_sum(v1,v2)