mat = reshape(1:25, 5, 5) 
println(mat)
 
println("Main diagonal: ", mat[1:5,1:5])
println("Secondary diagonal: ", mat[5:-1:1,1:5])
 
println("Sum: ", sum(mat))