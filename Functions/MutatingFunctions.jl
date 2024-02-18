x = [35, 2312 ,4324 ,-321 ,31 ,0 ,1]
sort(x) # gives us the sorted array
x # but x didn't change 

sort!(x) # gives us the sorted array again
x # x changed


function padWithZeros(vector, n)
    x = [zeros(n); vector; zeros(n)]
    return x
end

padWithZeros(x, 3)
x # Again x didn't change!


function padWithZeros!(vector, n)
  for i ∈ 1:n
    insert!(vector,1,0)
  end

  for i ∈ 1:n
    append!(vector,0)
  end 
end


padWithZeros!(x,3)
x # it changed x!