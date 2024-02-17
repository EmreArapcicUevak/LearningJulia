arr1 = [1, 3, 5, 7, 9]
arr2 = [2, 4, 6, 8, 3, 5, 10]

common = []

for el ∈ arr1
    if el ∈ arr2
        append!(common, el)
    end
end

common

# Or

common = [x ∈ arr2 ? x : nothing for x ∈ arr1]
common = common[common .!== nothing]
common