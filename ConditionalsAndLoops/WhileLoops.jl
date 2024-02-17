#=
While loop syntax

<initilize state>
while <condition> true
    <statements>
    update condition
end
=#

i = 1
while i < 5
    println(i ^ 2)
    i += 1
end
i

j = 1
while j < 5
    println(j^2)
    global j += 1
end

arr = Array(1:10)
while !isempty(arr)
    println(pop!(arr))
end


sum = 0
numOfInputs = 0
average = undef
input = nothing

while input != 0
    println("Enter a number: ")
    input = parse(Int64, readline())
    global sum += input
    global numOfInputs+= 1
end

average = sum / numOfInputs
sum