--
-- lualine.lua - Lualine theme for Phantom colorscheme
--
-- Usage in lualine config:
--   require('lualine').setup({
--     options = {
--       theme = require('phantom').lualine(),
--       -- or: theme = require('phantom.lualine'),
--     },
--   })
--

local p = require("phantom.palette")

local colors = p.hex()

local phantom = {
	normal = {
		a = { fg = colors.bg, bg = colors.fg_dim, gui = "bold" },
		b = { fg = colors.fg, bg = colors.bg_lighter },
		c = { fg = colors.fg_dark, bg = colors.bg_light },
	},
	insert = {
		a = { fg = colors.bg, bg = colors.blue, gui = "bold" },
		b = { fg = colors.fg, bg = colors.bg_lighter },
		c = { fg = colors.fg_dark, bg = colors.bg_light },
	},
	visual = {
		a = { fg = colors.bg, bg = colors.marsala, gui = "bold" },
		b = { fg = colors.fg, bg = colors.bg_lighter },
		c = { fg = colors.fg_dark, bg = colors.bg_light },
	},
	replace = {
		a = { fg = colors.bg, bg = colors.red, gui = "bold" },
		b = { fg = colors.fg, bg = colors.bg_lighter },
		c = { fg = colors.fg_dark, bg = colors.bg_light },
	},
	command = {
		a = { fg = colors.bg, bg = colors.fg, gui = "bold" },
		b = { fg = colors.fg, bg = colors.bg_lighter },
		c = { fg = colors.fg_dark, bg = colors.bg_light },
	},
	terminal = {
		a = { fg = colors.bg, bg = colors.marsala, gui = "bold" },
		b = { fg = colors.fg, bg = colors.bg_lighter },
		c = { fg = colors.fg_dark, bg = colors.bg_light },
	},
	inactive = {
		a = { fg = colors.fg_dark, bg = colors.bg_light, gui = "bold" },
		b = { fg = colors.fg_dark, bg = colors.bg_light },
		c = { fg = colors.fg_dark, bg = colors.bg_light },
	},
}

return phantom
