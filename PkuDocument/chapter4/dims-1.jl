v1 = [2, 3, 5, 7, 11, 13, 17]


v2 = [1.5, 3, 4, 9.12];
@show v2;
# v2 = [1.5, 3.0, 4.0, 9.12]



v3 = ["苹果", "桔子", "香蕉"];
@show v3;
# v3 = ["苹果", "桔子", "香蕉"]
v4 = [123, 3.14, "数学", [1, 2, 3]];
@show v4;
# v4 = Any[123, 3.14, "数学", [1, 2, 3]]


v1 = [2, 3, 5, 7, 11, 13, 17]; v1[2]
# 3

v1[end]
# 17
v1[end-1]
# 13


v1[begin]
# 2


v1[2] = 0
@show v1;
# v1 = [2, 0, 5, 7, 11, 13, 17]


v1 = [2, 3, 5, 7, 11, 13, 17]
v1[2:4]


v1[begin+2:end-2] |> show
# [5, 7, 11]


v1[1:2:7] |> show
# [2, 5, 11, 17]


v1[end:-1:begin] |> show
# [17, 13, 11, 7, 5, 3, 2]

reverse(v1) |> show
# [17, 13, 11, 7, 5, 3, 2]


v1 = [2, 3, 5, 7, 11, 13, 17]
v1[[1, 3, 5]]




v1[1:3] .= 0; 
@show v1;
# v1 = [0, 0, 0, 7, 11, 13, 17]



v1[[1, 3, 5]] .= [101, 303, 505]; 
@show v1;
# v1 = [101, 0, 303, 7, 505, 13, 17]



v1 = [2, 3, 5, 7, 11, 13, 17]
v1[v1 .<= 10]



v1 = [2, 3, 5, 7, 11, 13, 17]
show(v1 .<= 10)
# Bool[1, 1, 1, 1, 0, 0, 0]
v1 .<= 10



v1 = [2, 3, 5, 7, 11, 13, 17]
P = [5, 1, 3, 4, 2, 6, 7]
@show w1 = v1[P];
# w1 = v1[P] = [11, 2, 5, 7, 3, 13, 17]



Q = sortperm(P)
@show P[Q];
# P[Q] = [1, 2, 3, 4, 5, 6, 7]
@show w1[Q];
# w1[Q] = [2, 3, 5, 7, 11, 13, 17]