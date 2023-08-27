d = Dict("name"=>"Li Ming","age" => 18)

d2orig = [('a', 1), ('b', 2), ('c', 3), ('d', 4)]
d2 = Dict(d2orig)

x = ['a', 'b', 'c', 'd']
y = [1,2,3,4]
d2 = Dict(zip(x, y))

length(d2)

# 4

Dict{String, Int64}("apple" => 1, "pear" => 2, "orange" => 3)

x = "apple" => 1
typeof(x)

# Pair{String, Int64}

(first(x), last(x))

# ("apple", 1)

collect(d2)
