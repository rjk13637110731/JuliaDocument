function f(n)
    println("Inside f() before changing,n = ",n)
    n = -1
    println("Inside f() after changing,n = ",n)
    return
end

function test()
    n = 1
    f(n)
    println("Out of f() ,n = ",n)
    return
end

test()
