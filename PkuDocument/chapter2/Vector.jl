v1 = [2,3,5,7,11,13,17]

v1[2]
# 3

v1[end]
# 17

v1[2] = 0
@show v1;
# v1 = [2, 0, 5, 7, 11, 13, 17]

v1 = [2, 3, 5, 7, 11, 13, 17]
v1[2:4]

v1[4:end]

v1[1:2:7]

v1[end:-1:1]

v1 = [2, 3, 5, 7, 11, 13, 17]
v1[:] .= 0; 
@show v1;

# v1 = [0, 0, 0, 0, 0, 0, 0]

v1 = [2, 3, 5, 7, 11, 13, 17]
v1[1:3] .= 0
@show v1;

# v1 = [0, 0, 0, 7, 11, 13, 17]

v1 = [2, 3, 5, 7, 11, 13, 17]
v1[1:3] = [101, 303, 505]; 
@show v1;

# v1 = [101, 303, 505, 7, 11, 13, 17]