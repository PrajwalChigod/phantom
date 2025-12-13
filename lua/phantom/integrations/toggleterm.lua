-- integrations/toggleterm.lua - ToggleTerm highlight groups for Phantom colorscheme

local M = {}
local p = require("phantom.palette")

function M.load()
	local highlights = {
		ToggleTerm = { bg = p.black },
		ToggleTermNormal = { fg = p.fg, bg = p.black },
		ToggleTermBorder = { fg = p.fg_dark, bg = p.black },
		ToggleTermFloatBorder = { fg = p.fg_dark, bg = p.black },
	}

	for group, opts in pairs(highlights) do
		vim.api.nvim_set_hl(0, group, opts)
	end
end

return M
