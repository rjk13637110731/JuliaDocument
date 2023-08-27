function double_wrong(x)
    x = 2 .* x
    return x
end

xx = [1,2,3]
double_wrong(xx)
@show xx;
