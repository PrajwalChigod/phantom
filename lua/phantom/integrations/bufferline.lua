-- integrations/bufferline.lua - BufferLine highlight groups for Phantom colorscheme

local lush = require("lush")
local p = require("phantom.palette")

---@diagnostic disable: undefined-global
local bufferline = lush(function()
	return {
		-- Simple two-color system: active = marsala, inactive = fg_dim
		BufferLineFill({ bg = p.black }),
		BufferLineBackground({ fg = p.fg_dim, bg = p.black }),
		BufferLineBuffer({ fg = p.fg_dim, bg = p.black }),
		BufferLineBufferVisible({ fg = p.fg_dim, bg = p.black }),
		BufferLineBufferSelected({ fg = p.marsala, bg = p.black }),
		BufferLineTab({ fg = p.fg_dim, bg = p.black }),
		BufferLineTabSelected({ fg = p.marsala, bg = p.black }),
		BufferLineTabClose({ fg = p.fg_dim, bg = p.black }),
		BufferLineIndicatorSelected({ fg = p.marsala, bg = p.black }),
		BufferLineIndicatorVisible({ fg = p.fg_dim, bg = p.black }),
		BufferLineSeparator({ fg = p.black, bg = p.black }),
		BufferLineSeparatorSelected({ fg = p.black, bg = p.black }),
		BufferLineSeparatorVisible({ fg = p.black, bg = p.black }),
		BufferLineCloseButton({ fg = p.fg_dim, bg = p.black }),
		BufferLineCloseButtonSelected({ fg = p.marsala, bg = p.black }),
		BufferLineCloseButtonVisible({ fg = p.fg_dim, bg = p.black }),
		BufferLineModified({ fg = p.fg_dim, bg = p.black }),
		BufferLineModifiedSelected({ fg = p.marsala, bg = p.black }),
		BufferLineModifiedVisible({ fg = p.fg_dim, bg = p.black }),
		BufferLineDuplicate({ fg = p.fg_dim, bg = p.black }),
		BufferLineDuplicateSelected({ fg = p.marsala, bg = p.black }),
		BufferLineDuplicateVisible({ fg = p.fg_dim, bg = p.black }),
		BufferLineError({ fg = p.fg_dim, bg = p.black }),
		BufferLineErrorSelected({ fg = p.marsala, bg = p.black }),
		BufferLineErrorDiagnostic({ fg = p.fg_dim, bg = p.black }),
		BufferLineErrorDiagnosticSelected({ fg = p.marsala, bg = p.black }),
		BufferLineWarning({ fg = p.fg_dim, bg = p.black }),
		BufferLineWarningSelected({ fg = p.marsala, bg = p.black }),
		BufferLineWarningDiagnostic({ fg = p.fg_dim, bg = p.black }),
		BufferLineWarningDiagnosticSelected({ fg = p.marsala, bg = p.black }),
		BufferLineInfo({ fg = p.fg_dim, bg = p.black }),
		BufferLineInfoSelected({ fg = p.marsala, bg = p.black }),
		BufferLineHint({ fg = p.fg_dim, bg = p.black }),
		BufferLineHintSelected({ fg = p.marsala, bg = p.black }),
	}
end)

return bufferline
