name = "Arthur"
weight = 75
height = 1.80

println("Hello $name. You are $(weight)kg and $(height)m. Your BMI is $(round(weight / height^2, digits = 2))")