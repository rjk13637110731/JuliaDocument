filter(x -> x>0, [-2, 0, 1,2,3]) |> show
# [1, 2, 3]


reduce(+, 1:3)
# 6


mat = reshape([1:9;], 3, 3)


reduce(+, mat, dims=1)


reduce(+, x, dims=2)


mapreduce(x -> x ^ 2, +, [1:3;])
# 14
