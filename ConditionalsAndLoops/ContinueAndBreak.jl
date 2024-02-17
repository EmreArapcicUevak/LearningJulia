arr = [3,5,7,9,42,999,11,31,13,42]

for el ∈ arr
    if el == 999
        println("Break condition")
        break
    else
        println(el)
    end
end


for el ∈ arr
    if el == 999
        println("Continue condition")
        continue
    else
        println(el)
    end
end

numTries = 0

while true
    global numTries += 1
    m, n = rand(1:6), rand(1:6)
    println((m,n))
    if (m,n) == (6, 6)
        break
    end
end

println(numTries)