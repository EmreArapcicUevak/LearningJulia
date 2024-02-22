module Transactions

using BankModule, CustomerModule

function deposit(cust::Customer, bank::Bank, amount::Float64)
    if cust.cash ≥ amount
        cust.cash -= amount
        cust.bankDeposit += amount
        bank.cash += amount
        bank.totalDeposit += amount
    else
        println("Not enough cash")
    end 
end
    
function withdraw(cust::Customer, bank::Bank, amount::Float64)
    if cust.bankDeposit ≥ amount 
        if bank.cash ≥ amount
            cust.cash += amount
            cust.bankDeposit -= amount
            bank.cash -= amount
            bank.totalDeposit -= amount
        else
            println("Not enough cash in bank")
        end
    else
        println("Not enough deposit")
    end
end

end