indexin([1,3,5,3],[1,2,3])

v3 = [2,3,5]
push!(v3, 7)
@show v3;
# v3 = [2, 3, 5, 7]

pushfirst!(v3, 1)
@show v3;
# v3 = [1, 2, 3, 5, 7]

v3 = [2,3,5]
append!(v3, [7,11])
@show v3;

# v3 = [2, 3, 5, 7, 11]

x = [1, 2, 1, 4, 1]
replace!(x, 1 => 0)
@show x;

# x = [0, 2, 0, 4, 0]


x = [1, 2, 1, 4, 1]
replace!(x, 1 => 0, 4 => 3)
@show x;

# x = [0, 2, 0, 3, 0]

x = [1, 2, 1, 4, 1]
replace!(x, 1 => 0, 4 => 3, count = 2)
@show x;

# x = [0, 2, 0, 4, 1]

v1 = [1,2]; v2 = [-2, -1]
v3 = vcat(v1, v2)
@show v3;
# v3 = [1, 2, -2, -1]

v3[1] = 111
@show v1;
# v1 = [1, 2]

x = [2, 3, 5, 7, 11, 13]
filter!(a -> a % 3 == 1, x)
show(x)

# [7, 13]

x = "HelloWorld"
collect(x)
