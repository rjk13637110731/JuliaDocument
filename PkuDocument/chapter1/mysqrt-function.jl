function mysqrt(x,eps = 1E-6)
    u = 1.0
    u1 = 0.0
    while abs(u-u1) >= eps
        u1 = u
        u = 0.5*(u+x/u)
    end
    return u
end

mysqrt(2)
