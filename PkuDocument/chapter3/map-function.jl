map(x -> x^2 + 1, [1,2,3])


function fwins(x)
    if x < 0
        y = 0
    elseif x > 100
        y = 100
    else
        y = x
    end
    return y
end
fwins.([-1, 0, 80, 120]) |> show
# [0, 0, 80, 100]


map([-1, 0, 80, 120]) do x
    if x < 0
        y = 0
    elseif x > 100
        y = 100
    else
        y = x
    end
    return y
end


map((x,y) -> 2*x + y, [1, 2, 3], [10, 20, 30]) |> show
# [12, 24, 36]
