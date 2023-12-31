x1 = [1,2,3]
x2 = x1
x2[2] = 100
@show x1;

# x1 = [1, 100, 3]

x1 = [1,2,3]
x2 = copy(x1)
x2[2] = -100
@show x1;

# x1 = [1, 2, 3]

x2 === x1

# false

x1 = [1,2,3]
x2 = x1[:]
x2[2] = -100
@show x1;

# x1 = [1, 2, 3]

x0 = [3, 4]
x1 = [1,2, x0]
x1[3][1] = 333
@show x0;

# x0 = [333, 4]

x0 = [3, 4]
x1 = [1, 2, x0]
x2 = copy(x1)
x2[1] = 111
x2[3][1] = 333
@show x2;
# x2 = Any[111, 2, [333, 4]]

@show x1;
# x1 = Any[1, 2, [333, 4]]

@show x0;
# x0 = [333, 4]

x0 = [3, 4]
x1 = [1,2, x0]
x2 = deepcopy(x1)
x2[1] = 111
x2[3][1] = 333
@show x2;
# x2 = Any[111, 2, [333, 4]]

@show x1;
# x1 = Any[1, 2, [3, 4]]

@show x0;
# x0 = [3, 4]
