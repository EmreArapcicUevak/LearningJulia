mutable struct RectangularPrism{T <: Real} 
    width :: T
    height :: T
    lenght :: T
end

recPrism = RectangularPrism(5,5,5)

println("The volume of the rectangular prism is $(recPrism.width * recPrism.height * recPrism.lenght)")