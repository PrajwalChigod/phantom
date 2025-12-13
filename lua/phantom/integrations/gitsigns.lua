-- integrations/gitsigns.lua - GitSigns highlight groups for Phantom colorscheme

local M = {}
local p = require("phantom.palette")

function M.load()
	local highlights = {
		GitSignsAdd = { fg = p.green },
		GitSignsChange = { fg = p.orange },
		GitSignsDelete = { fg = p.red },
		GitSignsAddNr = { fg = p.green },
		GitSignsChangeNr = { fg = p.orange },
		GitSignsDeleteNr = { fg = p.red },
		GitSignsAddLn = { bg = p.green_bg },
		GitSignsChangeLn = { bg = p.orange_bg },
		GitSignsDeleteLn = { bg = p.red_bg },
		GitSignsCurrentLineBlame = { fg = p.fg_dark, italic = true },
	}

	for group, opts in pairs(highlights) do
		vim.api.nvim_set_hl(0, group, opts)
	end
end

return M
