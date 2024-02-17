volume = begin
    a = 12
    b = 9
    c = 5
    a * b * c 
end

area = begin
    a = 12
    b = 9
    c = 5
    2 * (a*b + a*c + b*c)
end

# Or

volume = (a=12;b=9;c=5;a*b*c)
volume = (a=12;
    b=9;
    c=5;
    a*b*c
)

# These do not make a new scope!
