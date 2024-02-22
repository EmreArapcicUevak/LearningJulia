LOAD_PATH
push!(LOAD_PATH, pwd()*"/ModulesAndPackages/Modules")

using BankModule  # When we use the using keyword, we can use all of the exported types and functions from the module without using the dot operator
import CustomerModule # When we use the import keyword, we have to use the dot operator to access the objects from the module
include("Modules/Transactions.jl") # We can also include the file that contains the module, this is same as copy pasting the file into the current line in the file

ziratBank = BankModule.Bank("Zirat Bank") # We don't need to use the dot operator to access the Bank type because we used the using keyword
ahmet = CustomerModule.Customer("Ahmet") # We have to use the dot operator to access the Customer type because we used the import keyword
Transactions.deposit(ahmet, ziratBank, 100.0) # We have to use the dot operator since include is like running the file in the current file

someBank = BankModule.Bank("Some Bank")
BankModule.defaultBank(someBank) # We have to use the dot operator to access the defaultBank function because we didn't export it! 