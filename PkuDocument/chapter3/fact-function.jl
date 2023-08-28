function myfact(n)
    if n==1
        return 1
    else
        return n*myfact(n-1)
    end
end
myfact(5)
# 120
