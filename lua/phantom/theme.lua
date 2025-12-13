-- theme.lua - Highlight group definitions for Phantom colorscheme

local M = {}
local p = require("phantom.palette")

--- Apply base theme highlight groups
local function apply_base_highlights()
	local highlights = {

		-- BASE HIGHLIGHTS
		Normal = { fg = p.fg, bg = p.black },
		NormalFloat = { fg = p.fg, bg = p.surface },
		NormalNC = { fg = p.fg_dim, bg = p.black },
		FloatBorder = { fg = p.fg_dark, bg = p.surface },
		FloatTitle = { fg = p.fg, bg = p.surface, bold = true },

		-- CURSOR AND SELECTION
		Cursor = { reverse = true },
		lCursor = { reverse = true },
		CursorIM = { reverse = true },
		TermCursor = { reverse = true },
		TermCursorNC = { reverse = true },
		CursorLine = { bg = p.cursorline },
		CursorLineNr = { fg = p.fg, bg = p.cursorline },
		CursorColumn = { bg = p.cursorline },
		Visual = { bg = p.selection_light },
		VisualNOS = { bg = p.selection_light },

		-- LINE NUMBERS AND COLUMNS
		LineNr = { fg = p.fg_dark },
		SignColumn = { bg = p.black },
		FoldColumn = { fg = p.fg_dark, bg = p.black },
		ColorColumn = { bg = p.surface },
		VertSplit = { fg = p.selection },
		WinSeparator = { fg = p.selection },

		-- STATUS LINE
		StatusLine = { fg = p.fg_dim, bg = p.surface },
		StatusLineNC = { fg = p.fg_dark, bg = p.surface },
		StatusLineTerm = { fg = p.fg_dim, bg = p.surface },
		StatusLineTermNC = { fg = p.fg_dark, bg = p.surface },

		-- WINBAR
		WinBar = { fg = p.fg, bg = p.black },
		WinBarNC = { fg = p.fg_dark, bg = p.black },

		-- TAB LINE
		TabLine = { fg = p.fg_dark, bg = p.surface },
		TabLineFill = { bg = p.surface },
		TabLineSel = { fg = p.fg, bg = p.black },

		-- POPUP MENU
		Pmenu = { fg = p.fg, bg = p.surface },
		PmenuSel = { fg = p.fg, bg = p.selection },
		PmenuSbar = { bg = p.selection },
		PmenuThumb = { bg = p.fg_dark },
		PmenuMatch = { fg = p.blue, bg = p.surface },
		PmenuMatchSel = { fg = p.blue, bg = p.selection },

		-- SEARCH AND HIGHLIGHT
		Search = { fg = p.fg, bg = p.blue_search },
		IncSearch = { fg = p.fg, bg = p.blue_search },
		CurSearch = { fg = p.fg, bg = p.blue_search },
		Substitute = { fg = p.black, bg = p.red },

		-- MESSAGES
		ErrorMsg = { fg = p.red },
		WarningMsg = { fg = p.yellow },
		ModeMsg = { fg = p.fg_dim },
		MoreMsg = { fg = p.blue },
		Question = { fg = p.blue },

		-- MISC UI
		MatchParen = { fg = p.fg, bg = p.selection, bold = true },
		NonText = { fg = p.fg_dark },
		SpecialKey = { fg = p.fg_dark },
		Whitespace = { fg = p.selection },
		EndOfBuffer = { fg = p.black },
		Directory = { fg = p.blue },
		Title = { fg = p.fg, bold = true },
		Conceal = { fg = p.fg_dark },
		Folded = { fg = p.fg_dark, bg = p.surface },
		WildMenu = { fg = p.black, bg = p.blue },
		QuickFixLine = { bg = p.selection },

		-- DIFF
		DiffAdd = { bg = p.green_diff },
		DiffChange = { bg = p.orange_diff },
		DiffDelete = { bg = p.red_diff },
		DiffText = { bg = p.orange_diff_text },

		-- SPELLING
		SpellBad = { sp = p.red, undercurl = true },
		SpellCap = { sp = p.orange, undercurl = true },
		SpellLocal = { sp = p.blue, undercurl = true },
		SpellRare = { sp = p.green, undercurl = true },

		-- DIAGNOSTICS
		DiagnosticError = { fg = p.red },
		DiagnosticWarn = { fg = p.yellow },
		DiagnosticInfo = { fg = p.blue },
		DiagnosticHint = { fg = p.green },
		DiagnosticOk = { fg = p.green },
		DiagnosticUnderlineError = { sp = p.red, undercurl = true },
		DiagnosticUnderlineWarn = { sp = p.yellow, undercurl = true },
		DiagnosticUnderlineInfo = { sp = p.blue, undercurl = true },
		DiagnosticUnderlineHint = { sp = p.green, undercurl = true },
		DiagnosticVirtualTextError = { fg = p.red_diag },
		DiagnosticVirtualTextWarn = { fg = p.yellow_diag },
		DiagnosticVirtualTextInfo = { fg = p.blue_diag },
		DiagnosticVirtualTextHint = { fg = p.green_diag },

		-- SYNTAX HIGHLIGHTING
		Comment = { fg = p.fg_dark, italic = true },
		Constant = { fg = p.blue_light, bold = true },
		String = { fg = p.fg, italic = true },
		Character = { fg = p.fg, italic = true },
		Number = { fg = p.orange },
		Boolean = { fg = p.orange },
		Float = { fg = p.orange },
		Identifier = { fg = p.fg },
		Function = { fg = p.blue },
		Statement = { fg = p.fg },
		Conditional = { fg = p.fg },
		Repeat = { fg = p.fg },
		Label = { fg = p.fg },
		Operator = { fg = p.fg_dim },
		Keyword = { fg = p.fg, bold = true },
		Exception = { fg = p.fg, bold = true },
		PreProc = { fg = p.fg_dim },
		Include = { fg = p.fg },
		Define = { fg = p.fg },
		Macro = { fg = p.blue_light, bold = true },
		PreCondit = { fg = p.fg },
		Type = { fg = p.marsala },
		StorageClass = { fg = p.fg },
		Structure = { fg = p.blue },
		Typedef = { fg = p.marsala },
		Special = { fg = p.blue },
		SpecialChar = { fg = p.blue },
		Tag = { fg = p.blue },
		Delimiter = { fg = p.fg_dim },
		SpecialComment = { fg = p.fg_dark, italic = true },
		Debug = { fg = p.fg },
		Underlined = { underline = true },
		Ignore = { fg = p.fg_dark },
		Error = { fg = p.red },
		Todo = { fg = p.orange, bold = true },

		-- TREESITTER HIGHLIGHTS
		["@variable"] = { fg = p.fg_dim },
		["@variable.parameter"] = { fg = p.fg },
		["@variable.member"] = { fg = p.fg },
		["@variable.builtin"] = { fg = p.marsala2 },

		["@constant"] = { fg = p.blue2, bold = true },
		["@constant.macro"] = { fg = p.blue2, bold = true },
		["@constant.builtin"] = { fg = p.blue2, bold = true },

		["@module"] = { fg = p.fg, italic = true },
		["@label"] = { fg = p.fg },

		["@string"] = { fg = p.fg, italic = true },
		["@string.documentation"] = { fg = p.fg_dark, italic = true },
		["@string.regexp"] = { fg = p.fg },
		["@string.escape"] = { fg = p.fg },
		["@string.special"] = { fg = p.fg },

		["@character"] = { fg = p.fg },
		["@character.special"] = { fg = p.fg },

		["@boolean"] = { fg = p.orange },
		["@number"] = { fg = p.orange },
		["@number.float"] = { fg = p.orange },

		["@type"] = { fg = p.marsala },
		["@type.definition"] = { fg = p.marsala },
		["@constructor"] = { fg = p.marsala },
		["@type.builtin"] = { fg = p.blue2 },

		["@attribute"] = { fg = p.orange },
		["@property"] = { fg = p.blue },

		["@function"] = { fg = p.blue },
		["@function.builtin"] = { fg = p.blue2 },
		["@function.call"] = { fg = p.blue },
		["@function.macro"] = { fg = p.blue },
		["@function.method"] = { fg = p.blue },
		["@function.method.call"] = { fg = p.blue },

		["@operator"] = { fg = p.fg_dim },

		["@keyword"] = { fg = p.fg_dim },
		["@keyword.function"] = { fg = p.fg_dim },
		["@keyword.import"] = { fg = p.blue2, bold = true },
		["@keyword.coroutine"] = { fg = p.fg_dim, bold = true },
		["@keyword.operator"] = { fg = p.blue2 },
		["@keyword.storage"] = { fg = p.blue2 },
		["@keyword.repeat"] = { fg = p.blue2 },
		["@keyword.return"] = { fg = p.blue2 },
		["@keyword.debug"] = { fg = p.fg_dim, bold = true },
		["@keyword.exception"] = { fg = p.fg_dim, bold = true },
		["@keyword.conditional"] = { fg = p.blue2 },
		["@keyword.conditional.ternary"] = { fg = p.blue2 },
		["@keyword.directive"] = { fg = p.blue2 },
		["@keyword.directive.define"] = { fg = p.blue2 },

		["@punctuation.delimiter"] = { fg = p.fg_dim },
		["@punctuation.bracket"] = { fg = p.fg_dim },
		["@punctuation.special"] = { fg = p.blue },
		["@comment"] = { fg = p.fg_dark, italic = true },
		["@comment.documentation"] = { fg = p.fg_dark, italic = true },
		["@comment.error"] = { fg = p.red },
		["@comment.warning"] = { fg = p.yellow },
		["@comment.todo"] = { fg = p.orange, bold = true },
		["@comment.note"] = { fg = p.fg },

		["@markup.strong"] = { fg = p.blue, bold = true },
		["@markup.italic"] = { italic = true },
		["@markup.strikethrough"] = { strikethrough = true },
		["@markup.underline"] = { underline = true },
		["@markup.heading"] = { fg = p.marsala, bold = true },
		["@markup.quote"] = { fg = p.blue, italic = true },
		["@markup.math"] = { fg = p.blue },
		["@markup.link"] = { fg = p.green },
		["@markup.link.label"] = { fg = p.green },
		["@markup.link.url"] = { fg = p.blue, underline = true },
		["@markup.raw"] = { fg = p.fg },
		["@markup.raw.block"] = { fg = p.fg },
		["@markup.list"] = { fg = p.blue },
		["@markup.list.checked"] = { fg = p.green },
		["@markup.list.unchecked"] = { fg = p.fg_dim },

		["@diff.plus"] = { fg = p.green },
		["@diff.minus"] = { fg = p.red },
		["@diff.delta"] = { fg = p.fg },

		["@tag"] = { fg = p.blue },
		["@tag.attribute"] = { fg = p.fg },
		["@tag.delimiter"] = { fg = p.fg_dim },

		-- LSP SEMANTIC TOKENS
		["@lsp.type.class"] = { fg = p.orange2 },
		["@lsp.type.decorator"] = { fg = p.orange },
		["@lsp.type.enum"] = { fg = p.marsala, bold = true },
		["@lsp.type.enumMember"] = { fg = p.blue2, bold = true },
		["@lsp.type.interface"] = { fg = p.marsala, bold = true },
		["@lsp.type.struct"] = { fg = p.marsala, bold = true },
		["@lsp.type.type"] = { fg = p.marsala, bold = true },
		["@lsp.type.typeParameter"] = { fg = p.marsala2 },

		["@lsp.type.function"] = { fg = p.blue },
		["@lsp.type.method"] = { fg = p.blue },
		["@lsp.type.macro"] = { fg = p.blue2, bold = true },

		["@lsp.type.variable"] = { fg = p.fg_dim },
		["@lsp.type.parameter"] = { fg = p.fg },
		["@lsp.type.property"] = { fg = p.fg },

		["@lsp.type.namespace"] = { fg = p.fg, italic = true },

		["@lsp.type.keyword"] = { fg = p.fg_dim, bold = true },
		["@lsp.type.operator"] = { fg = p.fg_dim },

		["@lsp.type.comment"] = { fg = p.fg_dark, italic = true },
		["@lsp.type.string"] = { fg = p.fg, italic = true },

		["@lsp.mod.parameter"] = { fg = p.fg },
		["@lsp.mod.declaration"] = { fg = p.fg_dim },
		["@lsp.mod.deprecated"] = { fg = p.marsala2, strikethrough = true },
		["@lsp.mod.static"] = { fg = p.marsala2, bold = true },
		["@lsp.mod.defaultLibrary"] = { fg = p.blue2 },
		["@lsp.mod.readonly"] = { fg = p.blue2, bold = true },

		["@lsp.typemod.selfParameter"] = { fg = p.marsala, italic = true },
		["@lsp.typemod.class.declaration"] = { fg = p.marsala },
		["@lsp.typemod.function.declaration"] = { fg = p.blue },
		["@lsp.typemod.method.declaration"] = { fg = p.blue },
	}

	-- Apply all highlights
	for group, opts in pairs(highlights) do
		vim.api.nvim_set_hl(0, group, opts)
	end
end

--- Build and apply the theme with optional configuration
--- @param config table|nil Configuration options for integrations
function M.load(config)
	-- Apply base highlights
	apply_base_highlights()

	-- Default to loading all integrations if no config provided
	if not config or not config.integrations then
		config = {
			integrations = {
				bufferline = true,
				gitsigns = true,
				toggleterm = true,
				fzf_lua = true,
				lualine_highlights = true,
			}
		}
	end

	-- Conditionally load integrations
	if config.integrations.gitsigns then
		require("phantom.integrations.gitsigns").load()
	end

	if config.integrations.toggleterm then
		require("phantom.integrations.toggleterm").load()
	end

	if config.integrations.bufferline then
		require("phantom.integrations.bufferline").load()
	end

	if config.integrations.lualine_highlights then
		require("phantom.integrations.lualine_highlights").load()
	end

	if config.integrations.fzf_lua then
		require("phantom.integrations.fzf_lua").load()
	end
end

return M
