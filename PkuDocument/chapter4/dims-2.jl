A1 = [1 2 3; 4 5 6]


2×3 Matrix{Int64}:
 1  2  3
 4  5  6


A1[2,3]
# 6


A1[2,3] = -6; A1


A1 = [1 2 3; 4 5 6]
A1[:, 2]


A1[2, :]


A1 = [1 2 3; 4 5 6]


A1[1:2, 2:3]


A1[[1], [1,3]]


A1[1:2, 2:3] = [102 103; 202 203]; A1


B1 = [10*i + j for i=1:3, j=1:3]; display(B1)
ic = CartesianIndex(2, 3)
@show B1[ic];


B1[ic] = 23


ics = CartesianIndex.([1,2,2,3], [1,3,1,2])


B1[ics]


CartesianIndices(B1)


ijmat = [1 1; 2 3; 2 1; 3 2]


[B1[i, j] for (i, j) in eachrow(ijmat)]


B1[ijmat]


zeros(2, 3)

ones(2, 3)


ones(Int64, 2, 3)

ones(String, 2, 3)


Float64[1,3,5]


Float64[1 3 5; 2 4 6]


Array{Float64}(undef, 2, 3)


Array{Int64}(undef, 2, 3)


reshape(101:106, 2, 3)



A1 = [1 2 3; 4 5 6]


for j = 1:size(A1,2), i = 1:size(A1,1)
  println("A1[", i, ", ", j, "] = ", A1[i, j])
end


for j = 1:size(A1,2)
    for i = 1:size(A1,1)
      println("A1[", i, ", ", j, "] = ", A1[i, j])
    end
end


for i = 1:size(A1,1), j = 1:size(A1,2)
  println("A1[", i, ", ", j, "] = ", A1[i, j])
end


for i in eachindex(A1)
  println("A1[", i, "] = ", A1[i])
end


for j = axes(A1,2), i = axes(A1,1)
  println("A1[", i, ", ", j, "] = ", A1[i, j])
end


using DelimitedFiles
Ain = readdlm("vecstore.txt"); Ain


writedlm("tmp2.txt", Ain, ' ')

A1 .+ 100

A1 .* 2


A2 = A1 .* 100

A1 .* A2

A1 .+ B1


B2 = [100 200]'


mapslices(sum, A1, dims=2)

mapslices(sum, A1, dims=1)

[sum(x) for x in eachrow(A1)]

A3 * A1

[1,  -1] * [1  -1]



using OffsetArrays
let
    a = [-0.5, 1, -0.5]
    a = OffsetArray(a, -1:1)
    x = [2,3,5,7,11,13]
    [sum(a[k]*x[t+k] for k=-1:1) for t=2:(length(x)-1)]
end




A = [10*i + j for i=1:3, j=1:3]



using LinearAlgebra
A = [1 2 3; 4 5 6; 7 8 9]
Diagonal(A)

using LinearAlgebra, SparseArrays
A = [1 0 4; 0 0 2; 3 0 0]
sparse(A)

Array{Int,3}(undef, (2,3,2))


collect.(axes(fill(0, (2,3,4))))

#=
3-element Vector{Base.OneTo{Int64}}:
 Base.OneTo(2)
 Base.OneTo(3)
 Base.OneTo(4)
=#


cat(A, B, dims = 2)
