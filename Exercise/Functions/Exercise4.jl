str = "Hello World"

function count_vowels(str::AbstractString)
    vowels = ['a', 'e', 'i', 'o', 'u']
    return length(filter(c -> lowercase(c) ∈ vowels, str))
end

count_vowels(str)