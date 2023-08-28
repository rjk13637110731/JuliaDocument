function counter_old()
    n = 0
    n = n+1
    return n
end
println(counter_old(), ", ", counter_old())
# 1, 1


function make_counter()
    n = 0
    function counter()
        n += 1
        return n
    end
end
my_counter = make_counter()
typeof(my_counter)
# var"#counter#22"
println(my_counter(), ", ", my_counter())
# 1, 2


function makefib()
    saved = Dict(0=>0, 1=>1)
    function fib(n)
        if n ∉ keys(saved)
            saved[n] = fib(n-1) + fib(n-2)
        end
        return saved[n]
    end
end
myfibnew = makefib()
show(myfibnew.(0:9))
# [0, 1, 1, 2, 3, 5, 8, 13, 21, 34]
