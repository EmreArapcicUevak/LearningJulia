# Array{T}
# Array{T, N}

Array{Float64, 3}(undef, (5,4,3))
Array{Union{Float64, Nothing}, 4}(nothing, (5,4,3,2))
Array{Union{String, Missing}}(missing, 4,3,2)

v = Vector(1:60)
arr1 = reshape(v, 5,4,3)
arr1[1,2,1]

[1;5 ;; 2;6 ;; 3;7 ;; 4;8 ;;; 5;8 ;; 6;9 ;; 7;10 ;; 8;11]