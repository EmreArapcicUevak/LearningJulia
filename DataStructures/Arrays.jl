# Can be thought of as an mutable tuple 
# 1D Arrays are called Vectors
# 2D Arrays are called Matricies

arr = [3, "Julia", 2022, 4.12]
typeof(arr)

arrFloat = [2.2, 2.4, 2.6]
arrInt = [7,11,13]
arrStr = ["abc", "eas", "dsad"]

arrPrime = Int64[2,3,5,7]
arrDouble = Float64[3.14, ℯ, 1.6]

arrMixed = [7, 8.2, Int64[3,5,7]]

arr[end]
arr[begin]

#slicing Arrays
arr[1:3]

newArray = arr[:] # [:] makes a copy of the entire Array
newArray == arr
newArray === arr

# Arrays are mutable as said before
arr[1] += 3

arrPrime[2] = "three" # This is an error because arrPrime is of a type Vector{Float64} therefor us trying to add a string to it will result in an error, also because Julia right now can-not convert the string into an Float64

arr[2:3] = 4 # We can't do this because we are trying to assing 1 value to 2 spots but we can do the following
arr[2:3] = ["Julia is cool", 2024]
arr

# We can also use our in function and operator to check if an element is in our array 
111 ∈ arr
2024 ∈ arr
2024 in arr
in(2024, arr)

# Also like in math we can check for subsets in arrays
issubset(["abc", "eas", "dsad"], arrStr)
issubset(["eas", "dsad"], arrStr)
issubset([], arrStr)
issubset(["Not in array", "dsad"], arrStr)

# We also have a unicode for this [\subseteq TAB]
["abc"] ⊆ arrStr
["abc"] ⊊ arrStr # This is a proper subset meaning the array on left is a subset of the array on the right but they are not equal [\subsetneq TAB]
arrStr ⊆ arrStr
arrStr ⊊ arrStr

arrStr ⊇ ["abc"] # similar to our operators just the other way around just like in math [\supseteq TAB]
arrStr ⊋ ["abc"] # \supsetneq TAB 

arr = ["α", "β", "γ", "δ"]
eltype(arr) # returns the data type of the elements of the array 
eltype(arrMixed)

length(arr) # As with string returns how many elements are in the array

push!(arr, "σ") # Pushes an element to the end of the array

arr2 = ["δ", "θ"]
append!(arr, arr2) # appends elements from arr2 to arr

deleteat!(arr, 3) # Delete the element at the 3rd indexs
deleteat!(arr, 1:2) # Deletes the first and second element 
deleteat!(arr, [1,3,4]) # Deletes the first third and fourth element

pop!(arr) # deletes the last element and returns it
popfirst!(arr) # Deletes the first one and returns it 

insert!(arr, 1, "α") # To insert an element at an specific index

str = "Julia,Python,R,Matlab,C,C++,Go,Java"
programingLanguages = split(str,',') # splits at char ',' and returns all the split instances as an array of SubString{String} but also can split strings 