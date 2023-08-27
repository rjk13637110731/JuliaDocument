function summ(x)
    xm = sum(x)/length(x)
    xs = sum(x.^2)/length(x)
    return xm,xs
end

res1,res2 = summ([1,2,3,4,5])

println(res1,", ",res2)
