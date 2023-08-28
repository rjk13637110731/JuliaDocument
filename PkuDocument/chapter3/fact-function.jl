function myfact(n)
    if n==1
        return 1
    else
        return n*myfact(n-1)
    end
end
myfact(5)
# 120


function myfib(n)
    if n <= 0
        return 0
    elseif n==1 || n==2
        return 1
    else
        return myfib(n-1) + myfib(n-2)
    end
end
show([(n, myfib(n)) for n=0:9])
# [(0, 0), (1, 1), (2, 1), (3, 2), (4, 3), 
#  (5, 5), (6, 8), (7, 13), (8, 21), (9, 34)]


function myfib2(n)
  local f1, f2, f3
  
  if n <= 0
    return 0
  elseif n==1 || n==2
    return 1
  end 

  f1 = 1
  f2 = 1
  for i=3:n
    f3 = f1 + f2 
    f1, f2 = f2, f3 
  end 
  return f3
end
myfib2.(1:10) |> show 
# [1, 1, 2, 3, 5, 8, 13, 21, 34, 55]
