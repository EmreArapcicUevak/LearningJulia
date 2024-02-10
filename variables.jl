x = 42;
x += 12;

x = 12; y=  15; z = 18;
y = x^3 + 3*x;

x = "Programming in Julia";

z = 3.14;
println(typeof(z));
z = "string";
println(typeof(z));

println(ℯ + 0);
println(π + 0);

# single line commnet
#=
    THis is a multi line comment
=#

a,b,c = 4,7,9;
println(a,b,c);

# swap two variables
a,b = b,a;
println(a)
println(b)

const E = 4;
# E = 2; # this is okay but gives us a warning
# E = 2.3 is not okay because 2.3 is not an Int64 type



#= Complex Numbers =#
z = 3 + 4im
println(typeof(z))

z = 3.0 + 4.1im
println(typeof(z))

# sqrt(-1) Error
println(sqrt(Complex(-1)))

a = 2.1; b = 5;
c = Complex(a,b);
println(c)
println(typeof(c))
println(real(c));
println(imag(c));
println(conj(c));

println(isa(Complex(-1), Complex))