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


-- Selection variants
M.selection_light = hsl(0, 0, 18)

-- Search backgrounds
M.blue_search = hsl(220, 25, 25)

-- Diff backgrounds
M.green_diff = hsl(140, 22, 21)
M.orange_diff = hsl(40, 30, 20)
M.orange_diff_text = hsl(40, 30, 30)
M.red_diff = hsl(0, 38, 20)

-- Diagnostic virtual text (dimmed)
M.red_diag = hsl(0, 38, 30)
M.yellow_diag = hsl(45, 35, 35)
M.blue_diag = hsl(220, 25, 35)
M.green_diag = hsl(140, 22, 32)

-- Syntax color variants
M.blue_light = hsl(220, 25, 65)

-- GitSigns line backgrounds
M.green_bg = hsl(140, 22, 16)
M.orange_bg = hsl(40, 30, 15)
M.red_bg = hsl(0, 38, 15)

-- Hex color conversion cache for better performance
local hex_cache = nil

--- Get palette colors as hex values (cached for performance)
--- Primarily used for lualine and other plugins that require hex colors
--- @return table hex_colors Table of hex color values
function M.hex()
	if hex_cache then
		return hex_cache
	end

	hex_cache = {
		-- Base
		bg = M.black.hex,
		bg_light = M.surface.hex,
		bg_lighter = M.selection.hex,

		-- Foreground
		fg = M.fg.hex,
		fg_dim = M.fg_dim.hex,
		fg_dark = M.fg_dark.hex,

		-- Primary colors
		blue = M.blue.hex,
		marsala = M.marsala.hex,

		-- Diagnostics & Git
		red = M.red.hex,
		orange = M.orange.hex,
		green = M.green.hex,
	}

	return hex_cache
end

return M
