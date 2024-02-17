score = 70

if score > 60
    println("passed")
end


score = 50

if score > 60
    println("passed")
else
    println("Sorry you failed :(")
end

if score ≥ 85
    println("Your grade is A")
elseif score ≥  70 
    println("Your grade is B")
elseif score ≥ 60
    println("Your grade is C")
else
    println("Your grade is F")
end


# Let's finilize it a little bit
println("Enter your score: ")
score = readline();
score = parse(Int64, score)

if 85 ≤ score ≤ 100
    println("A")
elseif 70 ≤ score < 85
    println("B")
elseif 60 ≤ score < 70 
    println("C")
elseif 0 ≤ score < 60
    println("F")
else
    println("Invalid Score!")
end

# Turnary operator 
score = 70
score > 50 ? "passed" : "failed"