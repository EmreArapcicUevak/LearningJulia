# We will use a new operator |> to pipe functions 

x = rand(-10:10, 20)
square(x) = x.^2
(sum ∘ square)(x) # \circ TAB mathemathical notation 
x |> square |> sum # Same as top 

str = "Writing functions is Julia is so fun!"
str |> split .|> length

# root mean square error from probability and statistics :)

mean(x :: AbstractArray) = sum(x) / length(x)

x |> (a -> a .- mean(a)) .|> square |> mean |> sqrt