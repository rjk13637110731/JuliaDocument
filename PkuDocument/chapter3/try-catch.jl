x = [2, -2, "a"]
for xi in x 
    try
        y = sqrt(xi)
        println("√", xi, " = ", y)
    catch ex 
        if isa(ex, DomainError)
            println("√", xi, ": 平方根函数定义域异常")
        else
            print("√", xi, ": 平方根函数其它异常")
        end
    end 
end
# √2 = 1.4142135623730951
# √-2: 平方根函数定义域异常
# √a: 平方根函数其它异常
