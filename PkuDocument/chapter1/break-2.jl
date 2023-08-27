for i = 1:5
    for j = 1:5
        if j == 3
            break
        else
            print(j,"×",i," = ",i*j,"  ")
        end
    end
    println()
end
