randArray = rand(1:100, 10)
println(randArray[ randArray .% 5 .== 0 ])
