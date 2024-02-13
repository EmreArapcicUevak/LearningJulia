v = Vector(1:5)
n = 7

v + n  # Error not the same dimenesion
v + repeat([n], size(v,1))
broadcast(+,v,n)
v .+ n # shorthand broadcasting!

a = [4 7 2 9 11 15]
b = [3 7 3 9 12 15]
a == b
a .== b # broadcast to all dimensions!

mat = [1 2 3; 4 5 6]
ℯ .^ mat
exp.(mat) # Broadcasting with functions 

sqrt.(mat)
.√(mat)

x = [3 5 7 9 12 15]
3*x .^ 2 .+ 2x .+ 5

vec = [7 22 12 13 16 21 18 76]
vec[vec .> 20] # get all elements bigger then 20
vec[rem.(vec,4) .== 0] # Get all elements divisible by 4

mat = rand(1:100, 200, 10)
cond1 = mat[:,1] .% 3 .== 0
cond2 = mat[:,2] .% 4 .== 0
finalCond = cond1 .&& cond2
mat[finalCond,:]
