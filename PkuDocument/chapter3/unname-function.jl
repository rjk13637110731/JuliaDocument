x -> x^2 + 1

# #12 (generic function with 1 method)


function (x)
    x^2 + 1
end
## #14 (generic function with 1 method)


make_power(α) = x -> x^α
f2 = make_power(2)
f3 = make_power(3)
[f2(2), f3(2)] |> show

# [4, 8]
