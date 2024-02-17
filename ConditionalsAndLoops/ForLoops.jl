#=
For loop syntax is as follows
for <iterator> in <range>
    <statements>
end
=#

for i in 1:4
    println(i^2)
end

# Variables made in the loop are local to the loop
# We can't access the i variable 

for j = 1:4
    println(j^3)
end

for k ∈ 1:4
    println(k^4)
end

# Instead of a range we can use ANY ITTERABLE COLLECTION as the range

for name ∈ ["Julia", "R", "Python", "C++"]
    println(name)
end

arr = rand(5:25,5)
for i ∈ 1:length(arr)
    println("The value at index $i is $(arr[i])")
end

# Another way to do this is to use tuple unpacking and the enumerate function
for (index, value) ∈ enumerate(arr)
    println("The value at index $index, is $value")
end

mat = rand(15:44, 3,2)

for row ∈ 1:size(mat,1)
    for collumn ∈ 1:size(mat,2)
        println("The value at row $row and collumn $collumn is: $(mat[row,collumn])")
    end
end

# In Julia we can also compact nested loops into 1 line!

for row ∈ 1:size(mat,1), collumn ∈ 1:size(mat,2)
    println("The value at row $row and collumn $collumn is: $(mat[row,collumn])")
end

for row ∈ 1:8
    for collumn ∈ 1:5
        print((row,collumn))
    end
    println()
end

for row ∈ 1:8, collumn ∈ 1:5
    print((row, collumn))
    if (collumn == 5)
        println()
    end
end

names = ["Albert", "Marie", "Isaac", "Rosalind", "Richard"]
surnames = ["Einstein", "Curie", "Newton", "Franklin", "Feynman"]
birthYears = [1879, 1867, 1643, 1918]

for (name, surname, birthYear) ∈ zip(names, surnames, birthYears)
    println("$name $surname was born in $birthYear")
end

d = Dict(
    "a" => 10,
    "b" => 20,
    "c" => 30,
    "d" => 40
)

for (key, value) ∈ d
    println("Key is $key, Value is $value")
end

for item in d
    println("Key is $(item.first), Value is $(item.second)")
end

str = "Julia Language"
for c ∈ str
    print("$c|")
end


arr = rand(-100_000_000:100_000_000, 500)
maxNum = arr[1]
for i ∈ arr[2:end]
    if i > maxNum
        maxNum = i
    end
end
println("Maximum number in the array is $maxNum")