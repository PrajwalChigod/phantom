-- palette.lua - Color palette for Phantom colorscheme
-- A minimalist dark colorscheme with washed-out colors

local lush = require("lush")
local hsl = lush.hsl

local M = {}

-- Background colors
M.black = hsl(30, 5, 10)
M.surface = hsl(0, 0, 15)
M.selection = hsl(0, 0, 10)
M.cursorline = hsl(0, 0, 10)

-- Foreground colors
M.fg = hsl(0, 0, 60)
M.fg_dim = hsl(0, 0, 50)
M.fg_dark = hsl(0, 0, 40)

-- Primary syntax colors
M.blue = hsl(220, 25, 55)
M.blue2 = hsl(220, 20, 40)

M.marsala = hsl(10, 40, 35)
M.marsala2 = hsl(10, 35, 20)

M.orange = hsl(40, 30, 50)
M.orange2 = hsl(30, 40, 30)

-- UI colors
M.red = hsl(0, 38, 50)
M.yellow = hsl(45, 35, 55)
M.green = hsl(140, 22, 52)


return M
