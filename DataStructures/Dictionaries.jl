# Dictionary is created with the keyword Dict
dictionary1 = Dict()
# Created an dictionary with both types for keys and values as any

studentGrades = Dict([("albert", 100), ("marie", 99), ("richard", 98), ("carl", 97)])

studentGrades = Dict(
    "albert" => 100,
    "marine" => 99,
    "richard" => 98,
    "carl" => 97
)

# Unlike tuples dictionaries are mutable
grades = Dict()
grades["albert"] = 100
grades["marine"] = 99
grades["richard"] = 98
grades["carl"] = 97

grades
grades["carl"] = 100
grades
# Elements of the dictionary are not defined by order hence we can not access the values of a dictionary with indexs

# grades["rosalind"] gives us an error since the key "rosalind" doesn't exist
length(grades) # Lenght function tells us how many key value pairs we have in our dictionary
keys(grades) # Gives us all the keys in the dictionary
values(grades) # Gives us all the values in the dictionaryo

"albert" ∈ keys(grades)
"isaac" ∈ keys(grades)

100 ∈ values(grades)

# Instead of checking if a key is in the keys() of a dictionary we can use the haskey() functions
haskey(grades ,"albert")
haskey(grades ,"isaac")

# The get function returns the value under the key that was pass and if the key doesn't exist it returns us a predefined value that we specified
get(grades, "albert", "not found")
get(grades, "isaac", "not found")

# Putting '!' infront of your function means that the function modifies one or more paramaters that have been sent to it.

# get! unlike get sees if the value under a key exists, if it does it returns the value under it, and if not it makes it and sets it to a predefined value and returns that value
get!(grades, "albert", 150)
get!(grades, "someKey", 150)

# getkey function is similar to get but it checks of a key exists and if it does returns it and if not it returns a predefined value 
getkey(grades, "albert", "not found")
getkey(grades, "isaac", "not found")

# to delete a key value pair from a dictionary we have to use the delete! function
delete!(grades, "someKey")


dict1 = Dict(
    "a" => 1,
    "b" => 2,
    "c" => 3
)

dict2 = Dict(
    "d" => 4,
    "e" => 5,
    "f" => 6
)

merge(dict1, dict2)

dict3 = Dict(
    "a" => 0,
    "b" => 2,
    "c" => 3
)

dict4 = Dict(
    "a" => 1,
    "b" => 5,
    "d" => 3
)

merge(dict3, dict4) # If there are same keys it puts the right hand dictionaries key to over write it
mergewith(+, dict3, dict4) # If it finds same keys it uses the '+' function on both values and then puts the final value under said key 

someDict = Dict(
    1 => "one",
    "two" => 2,
    3.5 => true
)
# Key-Value pairs don't have to be of the same type every time in a dictionary