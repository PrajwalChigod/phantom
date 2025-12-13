-- integrations/gitsigns.lua - GitSigns highlight groups for Phantom colorscheme

local lush = require("lush")
local p = require("phantom.palette")

---@diagnostic disable: undefined-global
local gitsigns = lush(function()
	return {
		GitSignsAdd({ fg = p.green }),
		GitSignsChange({ fg = p.orange }),
		GitSignsDelete({ fg = p.red }),
		GitSignsAddNr({ fg = p.green }),
		GitSignsChangeNr({ fg = p.orange }),
		GitSignsDeleteNr({ fg = p.red }),
		GitSignsAddLn({ bg = p.green_bg }),
		GitSignsChangeLn({ bg = p.orange_bg }),
		GitSignsDeleteLn({ bg = p.red_bg }),
		GitSignsCurrentLineBlame({ fg = p.fg_dark, gui = "italic" }),
	}
end)

return gitsigns
