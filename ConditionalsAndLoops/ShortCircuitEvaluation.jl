# Logical and short circuits as soon as it gets a false value
# Logical or short circuits as soon as it gets a true value

println("Enter your age: ")
age = parse(Int64, readline())
0 < age < 100 && println("Your age is $(age).")
0 < age < 100 || println("Please make sure that the number you enter is between 0 and 100")

#tryparse is similar to paste but instead of erroring it returns nothing if it fails to parse the value 
println("Enter your age: ")
age = readline()
tryparse(Int64, age) ≡ nothing && (println("Please enter a numeric value!"); exit())
0 < age < 100 && println("Your age is $(age).")
0 < age < 100 || println("Please make sure that the number you enter is between 0 and 100")