--
-- init.lua - Phantom colorscheme entry point
-- A minimalist dark colorscheme with washed-out colors
--
-- Usage:
--   require("phantom").setup()
--   -- or simply use :colorscheme phantom
--

local M = {}

-- Default configuration
local default_config = {
	-- Enable/disable plugin integrations
	integrations = {
		bufferline = true,
		gitsigns = true,
		toggleterm = true,
		fzf_lua = true,
		lualine_highlights = true,
	},
	-- Cache compiled theme for faster subsequent loads
	cache = true,
}

-- Store merged config
M.config = vim.deepcopy(default_config)

--- Configure the colorscheme options
--- @param opts table|nil User configuration options
function M.configure(opts)
	M.config = vim.tbl_deep_extend("force", M.config, opts or {})
end

--- Load the Phantom colorscheme
--- @param opts table|nil Configuration options (optional)
function M.setup(opts)
	-- Merge user config if provided
	if opts then
		M.configure(opts)
	end

	vim.opt.background = "dark"
	vim.g.colors_name = "phantom"

	-- Clear existing highlights
	vim.cmd("highlight clear")
	if vim.fn.exists("syntax_on") == 1 then
		vim.cmd("syntax reset")
	end

	-- Check cache first if enabled
	if M.config.cache and vim.g.phantom_theme_loaded then
		-- Theme already loaded in this session, skip reload
		return
	end

	-- Load theme using native Neovim API (no Lush dependency!)
	require("phantom.theme").load(M.config)

	-- Mark theme as loaded if caching is enabled
	if M.config.cache then
		vim.g.phantom_theme_loaded = true
	end
end

--- Get the color palette for external use
--- @return table palette The color palette
function M.palette()
	return require("phantom.palette")
end

--- Get the lualine theme
--- @return table lualine_theme The lualine theme configuration
function M.lualine()
	return require("phantom.lualine")
end

--- Setup lazy loading for the colorscheme
--- Call this function instead of setup() to enable lazy loading
--- The colorscheme will load on the ColorSchemePre event
function M.lazy_load()
	vim.api.nvim_create_autocmd("ColorSchemePre", {
		pattern = "phantom",
		callback = function()
			M.setup()
		end,
		once = true,
	})
end

return M
