# Character and type operations
chr = 'a';
println(chr);
println(typeof(chr));
println(Int(chr));

# Unicode character
unichar = '\u03A3';
println(unichar);

# String operations
str = "Julia is awesome";
println(str);

# Multi-line string
longStr = """Long Julia String.""";
println(longStr);

# String indexing
println(str[1]);
println(str[begin]); # Accessing the first character
println(str[end]); # Accessing the last character
println(str[end ÷ 2]); # Integer division to find the middle character

println(str[1:3]);
println(str[end-5:end]);

println(firstindex(str));
println(lastindex(str));
println(length(str));

newStr = "αβγ";
println(newStr);
println(firstindex(newStr));
println(lastindex(newStr));
println(length(newStr));

println('→');
println(ncodeunits('→'));
println(ncodeunits('α'));
println(ncodeunits('β'));
println(ncodeunits('Σ'));
println(ncodeunits('Δ'));

println(newStr[1]);
# println(newStr[2]); Not allowed since α takes 2 bytes in encoding we can't read the second spot
println(newStr[3]);
# println(newStr[4]); Not allowed since β takes 2 bytes in encoding we can't read the second spot
println(newStr[5]);

str1 = "Julia Programming ";
str2 = "is the best!";
println(string(str1, str2));
println(str1  * str2);
println("Julia "^4)

x , y = 4, 5;
println("First number is $x, and the second number is $y and their sum is $(x + y)");