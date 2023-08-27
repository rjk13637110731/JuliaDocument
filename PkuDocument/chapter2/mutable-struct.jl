mutable struct Rectangle
    xll::Real 
    yll::Real 
    width::Real
    height::Real 
end

rect1 = Rectangle(0, 0, 2, 1)
rect1.width

# 2

function move(rect::Rectangle, offset) 
    Rectangle(rect.xll + offset[1], 
        rect.yll + offset[2],
        rect.width, rect.height)
end

rect2 = move(rect1, (20, 10))

# Rectangle(20, 10, 2, 1)
