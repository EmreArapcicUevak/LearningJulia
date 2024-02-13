X = rand(Float64, (100,3))
y = rand(100)

β = inv(X' * X) * X' * y
