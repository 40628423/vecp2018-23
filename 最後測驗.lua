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
star(20, 300, 300, 4, "rgb(0,77,153)", "rgb(100,100,0)", "fill",-45)
star(20, 320, 300, 4, "rgb(0,77,153)", "rgb(100,100,0)", "fill",-45)
star(20, 340, 300, 4, "rgb(0,77,153)", "rgb(100,100,0)", "fill",-45)
star(20, 360, 300, 4, "rgb(0,77,153)", "rgb(100,100,0)", "fill",-45)
star(20, 380, 300, 4, "rgb(0,77,153)", "rgb(100,100,0)", "fill",-45)
star(20, 400, 300, 4, "rgb(0,77,153)", "rgb(100,100,0)", "fill",-45)
star(20, 400, 320, 4, "rgb(0,77,153)", "rgb(100,100,0)", "fill",-45)
star(20, 400, 340, 4, "rgb(0,77,153)", "rgb(100,100,0)", "fill",-45)
star(20, 400, 360, 4, "rgb(0,77,153)", "rgb(100,100,0)", "fill",-45)
star(20, 400, 380, 4, "rgb(0,77,153)", "rgb(100,100,0)", "fill",-45)
star(20, 400, 400, 4, "rgb(0,77,153)", "rgb(100,100,0)", "fill",-45)
star(20, 380, 400, 4, "rgb(0,77,153)", "rgb(100,100,0)", "fill",-45)
star(20, 360, 400, 4, "rgb(0,77,153)", "rgb(100,100,0)", "fill",-45)
star(20, 340, 400, 4, "rgb(0,77,153)", "rgb(100,100,0)", "fill",-45)
star(20, 320, 400, 4, "rgb(0,77,153)", "rgb(100,100,0)", "fill",-45)
star(20, 300, 400, 4, "rgb(0,77,153)", "rgb(100,100,0)", "fill",-45)
star(20, 300, 420, 4, "rgb(0,77,153)", "rgb(100,100,0)", "fill",-45)
star(20, 300, 440, 4, "rgb(0,77,153)", "rgb(100,100,0)", "fill",-45)
star(20, 300, 460, 4, "rgb(0,77,153)", "rgb(100,100,0)", "fill",-45)
star(20, 300, 480, 4, "rgb(0,77,153)", "rgb(100,100,0)", "fill",-45)
star(20, 300, 500, 4, "rgb(0,77,153)", "rgb(100,100,0)", "fill",-45)
star(20, 320, 500, 4, "rgb(0,77,153)", "rgb(100,100,0)", "fill",-45)
star(20, 340, 500, 4, "rgb(0,77,153)", "rgb(100,100,0)", "fill",-45)
star(20, 360, 500, 4, "rgb(0,77,153)", "rgb(100,100,0)", "fill",-45)
star(20, 380, 500, 4, "rgb(0,77,153)", "rgb(100,100,0)", "fill",-45)
star(20, 400, 500, 4, "rgb(0,77,153)", "rgb(100,100,0)", "fill",-45)

star(20, 500, 300, 4, "rgb(0,77,153)", "rgb(100,100,0)", "fill",-45)
star(20, 520, 300, 4, "rgb(0,77,153)", "rgb(100,100,0)", "fill",-45)
star(20, 540, 300, 4, "rgb(0,77,153)", "rgb(100,100,0)", "fill",-45)
star(20, 560, 300, 4, "rgb(0,77,153)", "rgb(100,100,0)", "fill",-45)
star(20, 580, 300, 4, "rgb(0,77,153)", "rgb(100,100,0)", "fill",-45)
star(20, 600, 300, 4, "rgb(0,77,153)", "rgb(100,100,0)", "fill",-45)
star(20, 600, 320, 4, "rgb(0,77,153)", "rgb(100,100,0)", "fill",-45)
star(20, 600, 340, 4, "rgb(0,77,153)", "rgb(100,100,0)", "fill",-45)
star(20, 600, 360, 4, "rgb(0,77,153)", "rgb(100,100,0)", "fill",-45)
star(20, 600, 380, 4, "rgb(0,77,153)", "rgb(100,100,0)", "fill",-45)
star(20, 600, 400, 4, "rgb(0,77,153)", "rgb(100,100,0)", "fill",-45)
star(20, 600, 420, 4, "rgb(0,77,153)", "rgb(100,100,0)", "fill",-45)
star(20, 600, 440, 4, "rgb(0,77,153)", "rgb(100,100,0)", "fill",-45)
star(20, 600, 460, 4, "rgb(0,77,153)", "rgb(100,100,0)", "fill",-45)
star(20, 600, 480, 4, "rgb(0,77,153)", "rgb(100,100,0)", "fill",-45)
star(20, 600, 500, 4, "rgb(0,77,153)", "rgb(100,100,0)", "fill",-45)
star(20, 580, 500, 4, "rgb(0,77,153)", "rgb(100,100,0)", "fill",-45)
star(20, 560, 500, 4, "rgb(0,77,153)", "rgb(100,100,0)", "fill",-45)
star(20, 540, 500, 4, "rgb(0,77,153)", "rgb(100,100,0)", "fill",-45)
star(20, 520, 500, 4, "rgb(0,77,153)", "rgb(100,100,0)", "fill",-45)
star(20, 500, 500, 4, "rgb(0,77,153)", "rgb(100,100,0)", "fill",-45)
star(20, 580, 400, 4, "rgb(0,77,153)", "rgb(100,100,0)", "fill",-45)
star(20, 560, 400, 4, "rgb(0,77,153)", "rgb(100,100,0)", "fill",-45)
star(20, 540, 400, 4, "rgb(0,77,153)", "rgb(100,100,0)", "fill",-45)
star(20, 520, 400, 4, "rgb(0,77,153)", "rgb(100,100,0)", "fill",-45)
star(20, 500, 400, 4, "rgb(0,77,153)", "rgb(100,100,0)", "fill",-45)