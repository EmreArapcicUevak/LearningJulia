n = 10
arr = []
for i = 1:n 
    if i ≤ 2
        append!(arr, 1)
    else
        append!(arr, arr[i-1] + arr[i-2])
    end
end

arr