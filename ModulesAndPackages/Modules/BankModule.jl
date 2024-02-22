module BankModule # Doesn't have to have the same name as the file but by convetion they are the same 

export Bank # Export the Bank type
mutable struct Bank
    name::String
    cash::Float64
    totalCredit::Float64
    totalDeposit::Float64
    equity::Float64

    Bank(name::String) = new(name, 1000.0, 0.0, 0.0, 1000.0)
end

function defaultBank(bank :: Bank)
    bank.name = "DEFAULT-"*bank.name
    bank.cash =  0.0
    bank.totalCredit = 0.0
    bank.totalDeposit = 0.0
    bank.equity = 0.0
end

end