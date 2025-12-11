--
-- shipwright.lua - Build script for compiled colorscheme
--
-- Run: :Shipwright lua/phantom/shipwright.lua
-- This compiles phantom to a plain vimscript colorscheme (no Lush required at runtime)
--
-- After compiling, use :colorscheme phantom_compiled for faster loading
--

local colorscheme = require("phantom.theme")
local lushwright = require("shipwright.transform.lush")

---@diagnostic disable: undefined-global
run(
	colorscheme,
	lushwright.to_vimscript,
	{ overwrite, "colors/phantom_compiled.vim" }
)
