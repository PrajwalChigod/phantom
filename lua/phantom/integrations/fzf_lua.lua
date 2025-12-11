-- integrations/fzf_lua.lua - FzfLua highlight groups for Phantom colorscheme

local lush = require("lush")
local p = require("phantom.palette")

---@diagnostic disable: undefined-global
local fzf_lua = lush(function()
	return {
		FzfLuaNormal({ fg = p.fg, bg = p.black }),
		FzfLuaBorder({ fg = p.fg_dark, bg = p.black }),
		FzfLuaTitle({ fg = p.blue, gui = "bold" }),
		FzfLuaPreviewNormal({ fg = p.fg, bg = p.black }),
		FzfLuaPreviewBorder({ fg = p.fg_dark, bg = p.black }),
		FzfLuaPreviewTitle({ fg = p.fg, gui = "bold" }),
		FzfLuaCursor({ fg = p.black, bg = p.fg }),
		FzfLuaCursorLine({ bg = p.cursorline }),
		FzfLuaCursorLineNr({ fg = p.fg, bg = p.cursorline }),
		FzfLuaSearch({ fg = p.black, bg = p.blue }),
		FzfLuaScrollBorderEmpty({ fg = p.selection, bg = p.black }),
		FzfLuaScrollBorderFull({ fg = p.fg_dim, bg = p.black }),
		FzfLuaScrollFloatEmpty({ fg = p.selection, bg = p.black }),
		FzfLuaScrollFloatFull({ fg = p.fg_dim, bg = p.black }),
		FzfLuaHelpNormal({ fg = p.fg, bg = p.black }),
		FzfLuaHelpBorder({ fg = p.fg_dark, bg = p.black }),
		FzfLuaHeaderBind({ fg = p.blue }),
		FzfLuaHeaderText({ fg = p.fg_dim }),
		FzfLuaPathColNr({ fg = p.blue }),
		FzfLuaPathLineNr({ fg = p.fg }),
		FzfLuaBufName({ fg = p.fg_dim }),
		FzfLuaBufNr({ fg = p.blue }),
		FzfLuaBufFlagCur({ fg = p.blue }),
		FzfLuaBufFlagAlt({ fg = p.fg }),
		FzfLuaTabTitle({ fg = p.fg, gui = "bold" }),
		FzfLuaTabMarker({ fg = p.blue }),
		FzfLuaLiveSym({ fg = p.blue }),
		FzfLuaFzfNormal({ fg = p.fg }),
		FzfLuaFzfCursorLine({ bg = p.selection }),
		FzfLuaFzfMatch({ fg = p.blue, gui = "bold" }),
		FzfLuaFzfBorder({ fg = p.fg_dark }),
		FzfLuaFzfScrollbar({ fg = p.fg_dim }),
		FzfLuaFzfSeparator({ fg = p.fg_dark }),
		FzfLuaFzfGutter({ bg = p.black }),
		FzfLuaFzfPointer({ fg = p.blue }),
		FzfLuaFzfMarker({ fg = p.fg }),
		FzfLuaFzfPrompt({ fg = p.blue }),
		FzfLuaFzfQuery({ fg = p.fg }),
	}
end)

return fzf_lua
