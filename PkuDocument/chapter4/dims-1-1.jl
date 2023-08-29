vf = [1.2, 2.5, 3.6]
vf[2] = "abc"
# MethodError: Cannot `convert` an object of type String to an object of type Float64
# Closest candidates are: ......


eltype(vf)
# Float64


zeros(3)
3-element Vector{Float64}:
 0.0
 0.0
 0.0



zeros(Int64, 3)
3-element Vector{Int64}:
 0
 0
 0



Vector{Float64}(undef, 3)
3-element Vector{Float64}:
 1.40319995e-315
 1.40320011e-315
 1.40320027e-315


v2 = [2, 3, 5]
@show v2 .+ 100;
# v2 .+ 100 = [102, 103, 105]
@show 100 .- v2;
# 100 .- v2 = [98, 97, 95]
@show v2 .* 2;
# v2 .* 2 = [4, 6, 10]
@show v2 ./ 10;
# v2 ./ 10 = [0.2, 0.3, 0.5]
@show v2 .^ 2;
# v2 .^ 2 = [4, 9, 25]



v2[1:2] .= 0; 
@show v2;
# v2 = [0, 0, 5]]


v1 = [1, 3, 4, 9, 13]
v3 = [2, 5, 6, 7, 10]
@show v1 .+ v3;
# v1 .+ v3 = [3, 8, 10, 16, 23]



@show v1 + v3;
# v1 + v3 = [3, 8, 10, 16, 23]



@show v1 .* v3;
# v1 .* v3 = [2, 15, 24, 63, 130]
@show v1 ./ v3;
# v1 ./ v3 = [0.5, 0.6, 0.6666666666666666, 
#   1.2857142857142858, 1.3]



[1,3,5,7] .< [2,3,5,7]



[1, 3] .∈ Ref([2,3,5,7,11])



v1 = [1, 3, 4, 9, 13]
for i in eachindex(v1)
  println("v1[", i, "] = ", v1[i])
end



for i = 1:length(v1)
    println("v1[", i, "] = ", v1[i])
end


for i = firstindex(v1):lastindex(v1)
    println("v1[", i, "] = ", v1[i])
end



for xi in v1
    println(xi)
end



for (i, xi) in enumerate(v1)
    println("v1[", i, "] = ", xi)
end


[x*x for x in [2,3,5,7]]



[x*x for x in 1:10 if x % 3 == 1] |> show
# [1, 16, 49, 100]



v2 = [1.5, 3, 4, 9.12]
show(v2)
# [1.5, 3.0, 4.0, 9.12]
@show v2;
# v2 = [1.5, 3.0, 4.0, 9.12]




using DelimitedFiles
writedlm("tmp1.txt", v2, ' ')




using DelimitedFiles
v4 = readdlm("vecstore.txt")[:];


sort([11, 13, 12]) |> show
# [11, 12, 13]



sortperm([11, 13, 12]) |> show
# [1, 3, 2]



sqrt.([1,2,3])
