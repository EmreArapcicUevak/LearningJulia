module CustomerModule

export Customer # Export the Customer type
mutable struct Customer
    name::String
    cash::Float64
    bankDeposit::Float64


    Customer(name::String) = new(name, 50.0, 0.0)
end
    
function defaultCustomer(customer :: Customer)
    customer.name = "DEFAULT-"*customer.name
    customer.cash =  0.0
    customer.bankDeposit = 0.0
    
end

end