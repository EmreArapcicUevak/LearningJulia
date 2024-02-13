collumnVector = [1,2,3]
rowVector = [1 2 3] # Actually a 1x3 Matrix 

matrix = [1 2 3; 4 5 6; 7 8 9]

typeof(rowVector)
typeof(collumnVector)
typeof(matrix)

matrix = [
    1 2 3
    4 5 6
    7 8 9
] # another way of making a matrix 

collumnVector = [1;2;3]

ndims(matrix) # Returns the number of dimentions for the array 
ndims(collumnVector)
ndims(rowVector)

size(matrix) # Returns a tuple that represents the dimenion sizes 
size(collumnVector)
size(rowVector)

size(matrix, 1) # Returns the first dimention size
size(matrix, 2) # Returns the second dimention size

# We can also use tuple unpacking :)
row, collumn = size(matrix)
row
collumn

length(matrix) # As always lenght returns the total number of elements in an array, so for a 3x3 matrix it would be 9 elements

matrix[1,1] # gets element at row 1 collumns 1
matrix[2] # Since a matrix is still just an array we can use it as one :) 
matrix[begin, end]  # begining row last collumn 
matrix[: , 1] # From all rows take the first collumn 
matrix[1:2,1:2] # From row 1 to 2 take collumns 1 to 2
matrix[begin:end-1, :] # From beggining row to one before the end take all the collumns 
matrix[:, :] # get the entire matrix


# Making a matrix from vectors 

cVec1 = [1,2,3,4,5]
cVec2 = [6,7,8,9,10]
cVec3 = [11, 12, 13, 14, 15]

vcat(cVec1, cVec2, cVec3) # Vertically concatinate arrays 
hcat(cVec1, cVec2, cVec3) # Horizontally concatinate arrays 

# If we want to horizontally concatinate collumn vectors their lenght should be the same 

rVec1 = [1 2 3 4 5]
rVec2 = [6 7 8 9 10]
rVec3 = [11 12 13 14 15] 

vcat(rVec1, rVec2, rVec3) # Again be careful because to vertically concatinate row vectors their dimensions have to be the same!
hcat(rVec1, rVec2, rVec3)

[cVec1, cVec2, cVec3] # We get an array of arrays 
[cVec1 cVec2 cVec3] # We get an array similar to the one we would get if we horizontally concatinated
[cVec1; cVec2; cVec3] # We get a vectir similar to the one we got when virtically concatinating 

m1 = [1 2 3; 4 5 6]
m2 = [7 8 9; 10 11 12]
mVer = [m1;m2] # We can concat matricies like this but just be aware for their dimensions to be the same!
mHor = [m1 m2]

emptyMatrix = Matrix(undef, 2, 3) # Makes an empty matrix size 2x3
Matrix{Any}(undef, 2, 3)
Matrix{Float64}(undef, 2,3)
mat = Matrix{Union{Int64, String}}(undef, 3,4)
mat[2,3] = 999
mat[1,2] = "number"
mat[3,4] = 6.4 # Error because Float can not be converted to integer or string! 

typeof(nothing)
Matrix{Any}(nothing, (2,3)) # We have to make sure to specify the type to Any or else it gets put as the type Nothing 
matInt = Matrix{Union{Int64, Nothing}}(nothing, (2,3)) # Were we are making sure that the only value we can do is Int64 or nothing, we have to do an union because if we do just Int64 we can't fill our matrix with the value nothing since it is of a wrong type
matInt[:,1] = [1,2]
matInt

# We can also utilize the missing value typeof(missing) is Missing but the logic is same as with the value nothing 

rMat = reshape(1:15, 3,5)
reshape(rMat, (5,3))

zeros(2,3)
ones(2,3)

ones(Int32, 2, 3)

trues(2,2)
falses(2,2)
fill(π, 3,2)
rand(1:20,3,5)
randn(3,5) # Normally distributed random numbers

m1 = reshape(range(12,23,length=12), 4,3)
m2 = similar(m1) # makes a new matrix with the similar data type 
m3 = similar(m1, (3,3)) # We can also specify different dimentions
