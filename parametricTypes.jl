struct ParRectangle{T}
    width :: T
    height :: T
end

rect1 = ParRectangle{Int32}(30, 30)
typeof(rect1)
ParRectangle{Int32} <: ParRectangle

rect2 = ParRectangle(11.5 , 20.9)

struct NumRectangle{T <: Real} 
    width :: T
    height :: T
end

rect3 = NumRectangle(1,3)
# rect4 = NumRectangle("1", "2") Error because string isnt a subtype of real

struct myRational{T <: Integer} <: Real
    num :: T
    den :: T
end

r = myRational(14,4)