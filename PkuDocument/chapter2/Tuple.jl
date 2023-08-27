(1, 2, 3)
# (1, 2, 3)

(1, "John", 5.1)
# (1, "John", 5.1)

x = ('a', 'b', 'c', 'd')
typeof(x)

# NTuple{4,Char}

x[1]
# 'a': ASCII/Unicode U+0061 (category Ll: Letter, lowercase)

x[2:3]
# ('b', 'c')

(1, 3, 5) < (1, 3, 6)

# true

a, b = 13, 17
println("a=", a, " b=", b)

# a=13 b=17

a, b = b, a
println("a=", a, " b=", b)

# a=17 b=13

a, b = [19, 23]
println("a=", a, " b=", b)

# a=19 b=23

divrem(11, 4)
# (2, 3)

collect((1,3,5))

x = ["a", "b", "c"]
y = [3, 1, 2]
collect(zip(x, y))
