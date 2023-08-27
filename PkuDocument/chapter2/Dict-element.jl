d2 = Dict('a' => 1, 'b' => 2, 'c' => 3, 'd' => 4)
for k in keys(d2)
    println(k, " => ", d2[k])
end

'a' in keys(d2)

# true

'g' ∈ keys(d2)

# false

for k in sort(collect(keys(d2)))
    println(k, " => ", d2[k])
end

d2p = collect(d2)
sort!(d2p, by=first)
for (k, v) in d2p
    println(k, " ==> ", v)
end

collect(values(d2))

for (k,v) in d2
    println(k, " => ", v)
end

[(k, v) for (k, v) in d2]

Dict(x => x*x for x in [2,3,5,7])

sex = ["F", "M", "M", "F", "M"]
freqs = Dict()
for xi in sex
    freqs[xi] = get(freqs, xi, 0) + 1
end
freqs

function freqd(x)
    y = Dict()
    for xi in x
        y[xi] = get(y, xi, 0) + 1
    end
    return y
end
freqd(sex)

using StatsBase
StatsBase.countmap(sex)

function freq(x)
    y = StatsBase.countmap(x)
    return keys(y), values(y)
end
freq(sex)

# (["M", "F"], [3, 2])

d3 = freq("disillusionment")
d3

# (['n', 'd', 'i', 's', 'l', 'u', 'o', 'm', 'e', 't'], 

#  [2, 1, 3, 2, 2, 1, 1, 1, 1, 1])
