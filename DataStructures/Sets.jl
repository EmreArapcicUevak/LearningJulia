# Set function converts an array or a tuple into a set by eliminating the same elements, also order does not matter
vec = Vector(1:10)
Set(vec)

tup = Tuple(1:10)
Set(tup)

# Use sets when order isn't important, sets allow us to use functions from set theory

x1 = [1 2 2 3 3 3 4 4 4 4 5 6 7 7 7]
x2 = [3 5 6 6 6 7 8 8 8 9 9 9 9]

union(x1, x2)
intersect(x1, x2)
setdiff(x1 ,x2)
setdiff(x2, x1)

# For functions above, you can provide anything that can be converted into a set but for others it might be better to provide sets or you might get incorrect results

symdiff(Set(x1), Set(x2))
issubset([1,2,3], [1,2,3,4,5,7])
