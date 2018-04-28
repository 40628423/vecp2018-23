# vecp2018-23
-- 導入 "js" 模組
local js = require "js"
-- global 就是 javascript 的 window
local global = js.global
local document = global.document
-- html 檔案中 canvas　id 設為 "canvas"
local canvas = document:getElementById("canvas")
-- 將 ctx 設為 canvas 2d 繪圖畫布變數
local ctx = canvas:getContext("2d")

-- 屬性呼叫使用 . 而方法呼叫使用 :
-- 設定填圖顏色
ctx.fillStyle = "rgb(200,0,0)"
-- 設定畫筆顏色
-- 導入 "js" 模組
local js = require "js"
-- global 就是 javascript 的 window
local global = js.global
local document = global.document
-- html 檔案中 canvas　id 設為 "canvas"
local canvas = document:getElementById("canvas")
-- 將 ctx 設為 canvas 2d 繪圖畫布變數
local ctx = canvas:getContext("2d")

-- 乘上 deg 可轉為徑度單位
deg = math.pi / 180

-- 建立多邊形定點位置畫線函式
function star(radius, xc, yc, n, fs, ss, fors,aa)
    radius = radius or 50
    xc = xc or 100
    yc = yc or 100
    n = n or 5
    -- 屬性呼叫使用 . 而方法呼叫使用 :
    -- 填色屬性
    fs = fs or "rgb(200,0,0)"
    -- 畫筆顏色屬性
    ss = ss or "rgb(0,0,200)"
    -- 內定為填色
    fors = fors or "fill"
    aa=aa or 0
    ctx.fillStyle = fs
    ctx.strokeStyle = ss
    xi = xc + radius*math.cos((360/n)*deg+(90+aa)*deg)
    yi = yc - radius*math.sin((360/n)*deg+(90+aa)*deg)
    ctx:beginPath()
    ctx:moveTo(xi,yi)
    for i = 2, n+1 do
        x = xc + radius*math.cos((360/n)*deg*i+(90+aa)*deg)
        y = yc - radius*math.sin((360/n)*deg*i+(90+aa)*deg)
        ctx:lineTo(x,y)
    end
    ctx:closePath()
    if fors == "fill" then
        ctx:fill()
    else
        ctx:stroke()
    end
end

--藍色六角形
star(200, 300, 300, 6, "rgb(0,77,153)", "rgb(100,100,0)", "fill",-90)
star(200, 270, 300, 6, "rgb(0,77,153)", "rgb(100,100,0)", "fill",-90)
star(200, 330, 300, 6, "rgb(0,77,153)", "rgb(100,100,0)", "fill",-90)
--內白色六角形
star(130, 300, 300, 6, "rgb(255,255,255)", "rgb(100,100,0)", "fill",-90)
star(130, 270, 300, 6, "rgb(255,255,255)", "rgb(100,100,0)", "fill",-90)
star(130, 330, 300, 6, "rgb(255,255,255)", "rgb(100,100,0)", "fill",-90)
--中間藍色圓形
star(75, 300, 300, 50, "rgb(0,77,153)", "rgb(100,100,0)", "fill",-90)
--蓋住藍色六角形的白色長方形
star(50, 170, 153, 4, "rgb(255,255,255)", "rgb(255,255,255)", "fill",-45)
star(50, 240, 153, 4, "rgb(255,255,255)", "rgb(255,255,255)", "fill",-45)
star(50, 300, 153, 4, "rgb(255,255,255)", "rgb(255,255,255)", "fill",-45)
star(50, 360, 153, 4, "rgb(255,255,255)", "rgb(255,255,255)", "fill",-45)
star(50, 420, 153, 4, "rgb(255,255,255)", "rgb(255,255,255)", "fill",-45)
star(50, 440, 153, 4, "rgb(255,255,255)", "rgb(255,255,255)", "fill",-45)
--中間斜白色長方形
star(27, 300, 300, 4, "rgb(255,255,255)", "rgb(100,100,0)", "fill",-90)
star(27, 280, 280, 4, "rgb(255,255,255)", "rgb(100,100,0)", "fill",-90)
star(27, 260, 260, 4, "rgb(255,255,255)", "rgb(100,100,0)", "fill",-90)
star(27, 320, 320, 4, "rgb(255,255,255)", "rgb(100,100,0)", "fill",-90)
star(27, 340, 340, 4, "rgb(255,255,255)", "rgb(100,100,0)", "fill",-90)
