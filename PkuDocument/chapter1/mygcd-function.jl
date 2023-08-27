function mygcd(m,n)
    local r
    while n != 0
        r = m %n
        m,n = n,r
    end
    
    return m
end

mygcd(210,24)
