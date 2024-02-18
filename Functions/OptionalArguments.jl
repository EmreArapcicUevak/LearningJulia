pow(a, b = 2) = a^b # Default value of b is 2 so if b isn't provided it will default to 2
pow(2,4)
pow(2)

findmin(x, y=x) = x < y ? x : y
findmin(x,y...) = findmin(x, findmin(y...))

findmin(1,2,3,4,5,6,6)
findmin(6)
