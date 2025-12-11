-- integrations/toggleterm.lua - ToggleTerm highlight groups for Phantom colorscheme

local lush = require("lush")
local p = require("phantom.palette")

---@diagnostic disable: undefined-global
local toggleterm = lush(function()
	return {
		ToggleTerm({ bg = p.black }),
		ToggleTermNormal({ fg = p.fg, bg = p.black }),
		ToggleTermBorder({ fg = p.fg_dark, bg = p.black }),
		ToggleTermFloatBorder({ fg = p.fg_dark, bg = p.black }),
	}
end)

return toggleterm
