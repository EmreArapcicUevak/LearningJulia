dictionary = Dict(
    "Bonsia" => "Sarajevo",
    "Germany" => "Belgium",
    "USA" => "Washington D.C",
    "Russia" => "Moscow",
    "Canada" => "Ottawa"
)

println(keys(dictionary))
println(values(dictionary))

println(get(dictionary, "Poland", "not found"))
println(get(dictionary, "Canada", "not found"))