# There are two types of arugments, positional and keyword arguments

function positionalArgs(x,y =10, z= 20, t = 30)
    println("x = $x")
    println("y = $y")
    println("z = $z")
    println("t = $t")
end

positionalArgs(1,2,3,4)
positionalArgs(1,2)
# Can't change a new value for t and leave default values for y and z

# Now let's try keyword args 
function keywordArgs(x; y=10, z=20, t = 30)
    println("x = $x")
    println("y = $y")
    println("z = $z")
    println("t = $t") 
end

keywordArgs(1)
keywordArgs(1, t = 15, y=20,z=1)