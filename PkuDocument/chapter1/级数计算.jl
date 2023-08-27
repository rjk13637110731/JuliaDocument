k = 0
x = 2*sqrt(2)/9801
y = 1103
z = x*y
s = z

while z > 1E-15
    k += 1
    k4 = 4*k
    x *= k4*(k4-1)*(k4-2)*(k4-3)/k^4/396^4
    y+=26390
    z = x*y
    s+=z
end

println("k = ",k," estimate = ",s)
println("Error = ",s - 1/pi)

1/pi
