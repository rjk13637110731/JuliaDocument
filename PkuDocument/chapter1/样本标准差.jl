# mysd: Input numeric vector x, output its sample standard deviation.
function mysd(x)
    n = length(x)
    mx = sum(x)/n
    s = 0.0
    for z in x
        s+=(z-mx)^2
    end
    sqrt(s/(n-1))
end
