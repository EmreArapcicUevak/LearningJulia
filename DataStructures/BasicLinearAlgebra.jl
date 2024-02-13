using LinearAlgebra
mat = [1 4 8; 2 5 9; 3 6 7]
tr(mat)
det(mat)
transpose(mat)
mat'

mat2 = rand(1:10, (3,3))

mat * mat2
mat .* mat2

I(3)

inv(mat)

isapprox(mat * inv(mat), I(3))
