function double!(x)
    for i in eachindex(x)
        x[i]*=2
    end
end

xx = [1,2,3]
double!(xx)
@show xx;
