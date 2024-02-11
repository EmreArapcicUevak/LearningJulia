5 + 7
14 - 6
π * ℯ
67 / 13
ans

ans^2

x = 5; y = 6;

3 * x + 7 * y  # This can be rewritten as
3x + 7y
4(5x + 7y)

-x # inverting the sign of x

5 ÷ 2 # Integer divion we achive by \div TAB

# Operators can be used as functions as well something similar to scheme
div(5, 2) # Same as 5 ÷ 2

4^3
^(4,3)

# Operators are functions in julia
4 + 5
+(4,5)

5 \ 15 # backward division 15 / 5

sqrt(16) # square root of 16
√(16) # square root \sqrt TAB 

cbrt(64) # cube roor of 16
∛(64) # \cbrt TAB 

5 % 2 # Mod or remained Operator
rem(5, 2) # Same as 5 % 2

# Comparison operator 

a = 7.8; b = 3.6;

a == b

a != b 
a ≠ b

c = [1, 2, 3] # Didn't cover arrays yet
d = c
e = deepcopy(c)

c == d  # true they have same members
c == e # true they have same members
c === e # this is false because they aren't in the at the same memory adress

c ≡ e # false, this is same as c === e \equiv TAB 

a <= b
a ≤ b # same as a <= b \leq TAB

a >= b
a ≥ b

c = 1.7
a ≥ b ≥ c # most programming languages don't allow this but Julia is smart enough to solve this
(a >= b) && (b >= c) # same as a ≥ b ≥ c

3 ≤ 3 < 9 ≠ 17 ≥ 14

0.4 + 0.2 # this gives us something like 0.60000000000000000001 for FLoat64

0.6 == 0.4 + 0.2 # false because of the floating point error
isequal(0.6, 0.4 + 0.2) # same as 0.6 == 0.4 + 0.2

isapprox(0.6, 0.4 + 0.2) # this gives us true


x = true
y = false

x && y # Logical and
x || y # Logical or 
!x # logical negation

x = 1 # 000...01
y = 3 # 000...11

x & y # bitwise and [1] 
x | y # bitwise or [3]
x ⊻ y # exclusive or [2] \xor TAB 
~x # bitwise not [-2]

x += 5 # same as x = x + 5
x *= 4 # same as x = x * 4
x /= 17 # same as x = x / 17
x ^= 3 # same as x = x ^ 3

log(ℯ^2) # log func with 1 arugiment is just the natural logarithm 
log(10, 10_000) # log of base 10 of 10,000

exp(3) # same as ℯ^3
ℯ^3

round(3.78) # nearest integer [4]
round(3.786231, digits=2) # [3.79]
floor(3.78) # towards -∞ [3]
ceil(3.78) # towards +∞ [4]

abs(-3) # absoule
sign(-4) # returns 1 if the number is positive and -1 if the number is negative

sin(π/2) 
cos(π/2)
tan(π/2)

# if you wish to use degrees instead of radians just use the degree version of the functions
sind(90) 
cosd(90)
tand(90)

rand(4) # by default rand returns a Float64 but this can be changed
rand(Int, 4) # Here it returns 4 random integers
rand(Float64, (2,2)) # Here we are making it returns a 2x2 matrix of random numbers