eps = 0.000_1
x = 1.0
y = x
xk = x
sgn = 1
k = 1
while true
    global k,sgn,xk,y,eps
    k+=1
    sgn*=-1
    xk*=x
    
    item = xk/k
    y+=sgn*item
    item < eps && break
end

println("eps = ",eps," log(1+",x,") = ",y,"  Iterations: ",k)
