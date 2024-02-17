str = "Hello World";
counter = 0
vowels = split("a e i o u", ' ')

for char ∈ str
    if lowercase(char) ∈ vowels
        global counter += 1
    end
end

counter