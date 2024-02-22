# Normally after including a module after we change some things the changes are not reflected in the instantly. We have to restart the Julia REPL to see the changes. But we can use the Revise package to see the changes instantly.

push!(LOAD_PATH, pwd()*"/ModulesAndPackages/Module")
using BankModule

myBank = BankModule.Bank("My Bank")
# We get Bank("My Bank", 1000.0, 0.0, 0.0, 1000.0)

# Now let's say we change the default constructor of the Bank type in the BankModule.jl file. We change the initial cash to 100.0. Normally we would have to restart the Julia REPL to see the changes. 
# But we can use the Revise package to see the changes instantly.

# Say we did those changes 
myNewBank = BankModule.Bank("My New Bank")
# We still get Bank("My New Bank", 1000.0, 0.0, 0.0, 1000.0)

using BankModule
myNewBank = BankModule.Bank("My New Bank")
# We still get Bank("My New Bank", 1000.0, 0.0, 0.0, 1000.0)

# Now lets include the new revise package and see the changes
using Revise
myNewBank = BankModule.Bank("My New Bank")
# We get Bank("My New Bank", 100.0, 0.0, 0.0, 100.0) instantly after we change the file.