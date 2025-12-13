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

-- Colors are already in hex format
local colors = {
	-- Base
	bg = p.black,
	bg_light = p.surface,
	bg_lighter = p.selection,

	-- Foreground
	fg = p.fg,
	fg_dim = p.fg_dim,
	fg_dark = p.fg_dark,

	-- Primary colors
	blue = p.blue,
	marsala = p.marsala,

	-- Diagnostics & Git
	red = p.red,
	orange = p.orange,
	green = p.green,
}

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
