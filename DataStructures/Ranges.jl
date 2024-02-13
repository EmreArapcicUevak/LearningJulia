1:10 # Range from 1 to 10
rng = 1:10
typeof(rng)

rng[3]
rng[1:4]
length(rng)

collect(1:10) # collect function turns a collection into an array
sizeof(1:10)
sizeof(collect(1:10)) # Size of array is bigger then the size of the range hence using ranges increases efficency

typeof(rng)
supertype(UnitRange)
supertype(AbstractUnitRange)
supertype(OrdinalRange)
supertype(AbstractRange)
supertype(AbstractVector)

rng2 = 1:2:20 # Start from 1, stepsize of 2 do while <= 20
rng3= 20:-2:2
-3:0.1:3

range(start = 0, step = 2, stop = 20) # Can be used instead to make a range
range(5, stop=20)
range(4, step = 4, length = 10)
range(1,30, step=3)
range(stop = 20, length = 5)
range(0,2, length=5)

LinRange(10,900, 100)
LinRange(0,2,5)
typeof(LinRange(0,10,6))