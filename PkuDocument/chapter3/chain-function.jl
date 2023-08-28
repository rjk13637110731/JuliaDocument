[1:5;] |> (x -> x .^ 2) |> sum
# 55


funcs = [uppercase, lowercase, first]
fruits = ["apple", "banana", "carrot"]
fnew = funcs[1] ∘ funcs[3]
y = map(fnew, fruits);
@show y;
# y = ['A', 'B', 'C']


map(uppercase∘first, fruits)
(uppercase∘first).(fruits)
uppercase.(first.(fruits))
fruits .|> first .|> uppercase 
[(uppercase∘first)(xi) for xi in fruits]
[uppercase(first(xi)) for xi in fruits]


function transform_xy_to_ij(img::AbstractMatrix, x::Float64, y::Float64)
    rows, cols = size(img) # 行、列数
    m = max(cols, rows)
    
    # 平移变换
    translate(α,β)  = ((x, y),) -> [x+α, y+β]
    # 坐标互换
    swap(x,y) = [y, x]
    # 纵坐标颠倒
    flipy((x, y)) = [x, -y]
    # 伸缩变换
    scale(α) = ((x,y),) -> (α*x, α*y)

    # 从平面直角坐标到行、列下标的函数
    xy_to_ij =  translate(rows/2, cols/2) ∘ swap ∘ flipy ∘ scale(m/2)
    # 使用函数将输入的一对(x, y)值转换为整数
    i, j = floor.(Int, xy_to_ij((x, y))) 
    # 注意：返回值仅两个整数，不是向量化的。
end


function transform_ij_to_xy(i::Int, j::Int, pixels)
    # 从行、列下标转换为直角平面坐标系坐标的函数
    # pixels是横向、纵向的像素点数的最大值
    
    # 用来转换的函数。
    ij_to_xy =  scale(2/pixels) ∘ flipy ∘ swap ∘ translate(-pixels/2,-pixels/2)
    # 上式从右向左解读：记m=pixels，
    # 先将坐标范围从$[1,m] \times
   ij_to_xy([i,j])
end


using Colors
function getpixel(img::AbstractMatrix,i::Int,j::Int)
    rows,cols = size(img)
    m = max(cols,rows)
    black(c::RGB) = RGB(0,0,0)
    black(c::RGBA) = RGBA(0,0,0,0.75)
    
    if 1 < i ≤ rows && 1 < j ≤ cols
        img[i,j]
    else
        black(img[1,1])
    end
end


function f_vara1(x, args...)
    println("x=", x)
    println("其它参数：", args)
end
f_vara1(11, 1, 2, 3)
# x=11
# 其它参数：(1, 2, 3)


max(1, 3, 1, 4)
# 4


x = [1, 3, 1, 4]
max(x...)
# 4
