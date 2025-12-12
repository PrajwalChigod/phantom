-- theme.lua - Highlight group definitions for Phantom colorscheme
-- Built with Lush (https://github.com/rktjmp/lush.nvim)
--

local lush = require("lush")
local hsl = lush.hsl
local p = require("phantom.palette")

---@diagnostic disable: undefined-global
local base = lush(function(injected_functions)
	local sym = injected_functions.sym

	return {

		-- BASE HIGHLIGHTS

		Normal({ fg = p.fg, bg = p.black }),
		NormalFloat({ fg = p.fg, bg = p.surface }),
		NormalNC({ fg = p.fg_dim, bg = p.black }),
		FloatBorder({ fg = p.fg_dark, bg = p.surface }),
		FloatTitle({ fg = p.fg, bg = p.surface, gui = "bold" }),

		-- CURSOR AND SELECTION

		Cursor({ gui = "reverse" }), -- reverse fg/bg colors at cursor
		lCursor({ gui = "reverse" }), -- language-mapping cursor
		CursorIM({ gui = "reverse" }), -- IME cursor
		TermCursor({ gui = "reverse" }), -- terminal cursor
		TermCursorNC({ gui = "reverse" }), -- unfocused terminal cursor
		CursorLine({ bg = p.cursorline }),
		CursorLineNr({ fg = p.fg, bg = p.cursorline }),
		CursorColumn({ bg = p.cursorline }),
		Visual({ bg = p.selection.lighten(8) }), -- subtle background highlight
		VisualNOS({ bg = p.selection.lighten(8) }),

		-- LINE NUMBERS AND COLUMNS

		LineNr({ fg = p.fg_dark }),
		SignColumn({ bg = p.black }),
		FoldColumn({ fg = p.fg_dark, bg = p.black }),
		ColorColumn({ bg = p.surface }),
		VertSplit({ fg = p.selection }),
		WinSeparator({ fg = p.selection }),

		-- STATUS LINE

		StatusLine({ fg = p.fg_dim, bg = p.surface }),
		StatusLineNC({ fg = p.fg_dark, bg = p.surface }),

		-- TAB LINE

		TabLine({ fg = p.fg_dark, bg = p.surface }),
		TabLineFill({ bg = p.surface }),
		TabLineSel({ fg = p.fg, bg = p.black }),

		-- POPUP MENU
		Pmenu({ fg = p.fg, bg = p.surface }),
		PmenuSel({ fg = p.fg, bg = p.selection }),
		PmenuSbar({ bg = p.selection }),
		PmenuThumb({ bg = p.fg_dark }),

		-- SEARCH AND HIGHLIGHT

		Search({ fg = p.black, bg = p.orange }),
		IncSearch({ fg = p.black, bg = p.blue }),
		CurSearch({ fg = p.black, bg = p.blue }),
		Substitute({ fg = p.black, bg = p.red }),

		-- MESSAGES

		ErrorMsg({ fg = p.red }),
		WarningMsg({ fg = p.red }),
		ModeMsg({ fg = p.fg_dim }),
		MoreMsg({ fg = p.blue }),
		Question({ fg = p.blue }),

		-- MISC UI

		MatchParen({ fg = p.fg, bg = p.selection, gui = "bold" }),
		NonText({ fg = p.fg_dark }),
		SpecialKey({ fg = p.fg_dark }),
		Whitespace({ fg = p.selection }),
		EndOfBuffer({ fg = p.black }),
		Directory({ fg = p.blue }),
		Title({ fg = p.fg, gui = "bold" }),
		Conceal({ fg = p.fg_dark }),
		Folded({ fg = p.fg_dark, bg = p.surface }),
		WildMenu({ fg = p.black, bg = p.blue }),
		QuickFixLine({ bg = p.selection }),

		-- DIFF

		DiffAdd({ bg = p.green.darken(60) }),
		DiffChange({ bg = p.orange.darken(60) }),
		DiffDelete({ bg = p.red.darken(60) }),
		DiffText({ bg = p.orange.darken(40) }),

		-- SPELLING

		SpellBad({ sp = p.red, gui = "undercurl" }),
		SpellCap({ sp = p.orange, gui = "undercurl" }),
		SpellLocal({ sp = p.blue, gui = "undercurl" }),
		SpellRare({ sp = p.green, gui = "undercurl" }),

		-- DIAGNOSTICS

		DiagnosticError({ fg = p.red }),
		DiagnosticWarn({ fg = p.red }),
		DiagnosticInfo({ fg = p.blue }),
		DiagnosticHint({ fg = p.fg }),
		DiagnosticOk({ fg = p.green }),
		DiagnosticUnderlineError({ sp = p.red, gui = "undercurl" }),
		DiagnosticUnderlineWarn({ sp = p.red, gui = "undercurl" }),
		DiagnosticUnderlineInfo({ sp = p.blue, gui = "undercurl" }),
		DiagnosticUnderlineHint({ sp = p.fg, gui = "undercurl" }),
		DiagnosticVirtualTextError({ fg = p.red.darken(20) }),
		DiagnosticVirtualTextWarn({ fg = p.red.darken(20) }),
		DiagnosticVirtualTextInfo({ fg = p.blue.darken(20) }),
		DiagnosticVirtualTextHint({ fg = p.fg_dim }),

		-- SYNTAX HIGHLIGHTING

		Comment({ fg = p.fg_dark, gui = "italic" }),
		Constant({ fg = p.blue.lighten(10), gui = "bold" }),
		String({ fg = p.fg, gui = "italic" }),
		Character({ fg = p.fg, gui = "italic" }),
		Number({ fg = p.orange }),
		Boolean({ fg = p.orange }),
		Float({ fg = p.orange }),
		Identifier({ fg = p.fg }),
		Function({ fg = p.blue }),
		Statement({ fg = p.fg }),
		Conditional({ fg = p.fg }),
		Repeat({ fg = p.fg }),
		Label({ fg = p.fg }),
		Operator({ fg = p.fg_dim }),
		Keyword({ fg = p.fg, gui = "bold" }),
		Exception({ fg = p.fg, gui = "bold" }),
		PreProc({ fg = p.fg_dim }),
		Include({ fg = p.fg }),
		Define({ fg = p.fg }),
		Macro({ fg = p.blue.lighten(10), gui = "bold" }),
		PreCondit({ fg = p.fg }),
		Type({ fg = p.marsala }),
		StorageClass({ fg = p.fg }),
		Structure({ fg = p.blue }),
		Typedef({ fg = p.marsala }),
		Special({ fg = p.blue }),
		SpecialChar({ fg = p.blue }),
		Tag({ fg = p.blue }),
		Delimiter({ fg = p.fg_dim }),
		SpecialComment({ fg = p.fg_dark, gui = "italic" }),
		Debug({ fg = p.fg }),
		Underlined({ gui = "underline" }),
		Ignore({ fg = p.fg_dark }),
		Error({ fg = p.red }),
		Todo({ fg = p.orange, gui = "bold" }),

		-- TREESITTER HIGHLIGHTS


    sym("@variable")({ fg = p.fg_dim }),
		sym("@variable.parameter")({ fg = p.fg }),
		sym("@variable.member")({ fg = p.fg }),
		sym("@variable.builtin")({ fg = p.marsala2, gui = "bold" }),

		sym("@constant")({ fg = p.blue2, gui = "bold" }),
		sym("@constant.macro")({ fg = p.blue2, gui = "bold" }),
		sym("@constant.builtin")({ fg = p.blue2, gui = "bold" }),

		sym("@module")({ fg = p.fg }),
		sym("@label")({ fg = p.fg }),

		sym("@string")({ fg = p.fg, gui = "italic" }),
		sym("@string.documentation")({ fg = p.fg_dark, gui = "italic"}),
		sym("@string.regexp")({ fg = p.fg }),
		sym("@string.escape")({ fg = p.fg }),
		sym("@string.special")({ fg = p.fg }),

		sym("@character")({ fg = p.fg }),
		sym("@character.special")({ fg = p.fg }),

		sym("@boolean")({ fg = p.orange }),
		sym("@number")({ fg = p.orange }),
		sym("@number.float")({ fg = p.orange }),

		sym("@type")({ fg = p.marsala, gui = "bold" }),
		sym("@type.definition")({ fg = p.marsala }),
		sym("@constructor")({ fg = p.marsala, gui = "bold" }),
		sym("@type.builtin")({ fg = p.orange2 }),

		sym("@attribute")({ fg = p.fg }),
		sym("@property")({ fg = p.blue }),

		sym("@function")({ fg = p.blue }),
		sym("@function.builtin")({ fg = p.blue}),
		sym("@function.call")({ fg = p.blue }),
		sym("@function.macro")({ fg = p.blue }),
		sym("@function.method")({ fg = p.blue }),
		sym("@function.method.call")({ fg = p.blue }),

		sym("@operator")({ fg = p.fg_dim }),

		sym("@keyword")({ fg = p.fg_dim, gui = "bold" }),
		sym("@keyword.function")({ fg = p.fg_dim, gui = "bold" }),
		sym("@keyword.import")({ fg = p.fg_dim, gui = "bold" }),
		sym("@keyword.coroutine")({ fg = p.fg_dim, gui = "bold" }),
		sym("@keyword.operator")({ fg = p.fg_dim, gui = "bold" }),
		sym("@keyword.storage")({ fg = p.fg_dim, gui = "bold" }),
		sym("@keyword.repeat")({ fg = p.fg_dim, gui = "bold" }),
		sym("@keyword.return")({ fg = p.fg_dim, gui = "bold" }),
		sym("@keyword.debug")({ fg = p.fg_dim, gui = "bold" }),
		sym("@keyword.exception")({ fg = p.fg_dim, gui = "bold" }),
		sym("@keyword.conditional")({ fg = p.fg_dim, gui = "bold" }),
		sym("@keyword.conditional.ternary")({ fg = p.fg_dim, gui = "bold" }),
		sym("@keyword.directive")({ fg = p.fg_dim, gui = "bold", gui = "bold" }),
		sym("@keyword.directive.define")({ fg = p.fg_dim, gui = "bold" }),

		sym("@punctuation.delimiter")({ fg = p.fg_dim }),
		sym("@punctuation.bracket")({ fg = p.fg_dim }),
		sym("@punctuation.special")({ fg = p.blue }),
		sym("@comment")({ fg = p.fg_dark, gui = "italic" }),
		sym("@comment.documentation")({ fg = p.fg_dark, gui = "italic" }),
		sym("@comment.error")({ fg = p.red }),
		sym("@comment.warning")({ fg = p.red }),
		sym("@comment.todo")({ fg = p.orange, gui = "bold" }),
		sym("@comment.note")({ fg = p.fg }),

		sym("@markup.strong")({ fg = p.blue, gui = "bold" }),
		sym("@markup.italic")({ gui = "italic" }),
		sym("@markup.strikethrough")({ gui = "strikethrough" }),
		sym("@markup.underline")({ gui = "underline" }),
		sym("@markup.heading")({ fg = p.marsala, gui = "bold" }),
		sym("@markup.quote")({ fg = p.blue, gui = "italic" }),
		sym("@markup.math")({ fg = p.blue }),
		sym("@markup.link")({ fg = p.green }),
		sym("@markup.link.label")({ fg = p.green }),
		sym("@markup.link.url")({ fg = p.blue, gui = "underline" }),
		sym("@markup.raw")({ fg = p.fg }),
		sym("@markup.raw.block")({ fg = p.fg }),
		sym("@markup.list")({ fg = p.blue }),
		sym("@markup.list.checked")({ fg = p.green }),
		sym("@markup.list.unchecked")({ fg = p.fg_dim }),

		sym("@diff.plus")({ fg = p.green }),
		sym("@diff.minus")({ fg = p.red }),
		sym("@diff.delta")({ fg = p.fg }),

		sym("@tag")({ fg = p.blue }),
		sym("@tag.attribute")({ fg = p.fg }),
		sym("@tag.delimiter")({ fg = p.fg_dim }),

		-- LSP SEMANTIC TOKENS

		-- Types
		sym("@lsp.type.class")({ fg = p.marsala, gui = "bold" }),
		sym("@lsp.type.decorator")({ fg = p.blue2 }),
		sym("@lsp.type.enum")({ fg = p.marsala, gui = "bold" }),
		sym("@lsp.type.enumMember")({ fg = p.blue2, gui = "bold" }),
		sym("@lsp.type.interface")({ fg = p.marsala, gui = "bold" }),
		sym("@lsp.type.struct")({ fg = p.marsala, gui = "bold" }),
		sym("@lsp.type.type")({ fg = p.marsala, gui = "bold" }),
		sym("@lsp.type.typeParameter")({ fg = p.marsala2 }),

		-- Functions and methods
		sym("@lsp.type.function")({ fg = p.blue }),
		sym("@lsp.type.method")({ fg = p.blue }),
		sym("@lsp.type.macro")({ fg = p.blue2, gui = "bold" }),

		-- Variables and parameters
		sym("@lsp.type.variable")({ fg = p.fg_dim }),
		sym("@lsp.type.parameter")({ fg = p.fg }),
		sym("@lsp.type.property")({ fg = p.blue }),

		-- Namespaces and modules
		sym("@lsp.type.namespace")({ fg = p.fg }),

		-- Keywords and operators
		sym("@lsp.type.keyword")({ fg = p.fg_dim, gui = "bold" }),
		sym("@lsp.type.operator")({ fg = p.fg_dim }),

		-- Comments and documentation
		sym("@lsp.type.comment")({ fg = p.fg_dark, gui = "italic" }),
		sym("@lsp.type.string")({ fg = p.fg, gui = "italic" }),

		-- Modifiers
		sym("@lsp.mod.readonly")({ fg = p.blue2, gui = "bold" }),
		sym("@lsp.mod.deprecated")({ fg = p.marsala2, gui = "strikethrough" }),
		sym("@lsp.mod.static")({ fg = p.marsala2, gui = "bold" }),
		sym("@lsp.mod.defaultLibrary")({ fg = p.orange2, gui = "bold" }),
	}
end)

-- Load and merge integrations
local gitsigns = require("phantom.integrations.gitsigns")
local toggleterm = require("phantom.integrations.toggleterm")
local bufferline = require("phantom.integrations.bufferline")
local lualine_highlights = require("phantom.integrations.lualine_highlights")
local fzf_lua = require("phantom.integrations.fzf_lua")

-- Merge base theme with all integrations
local theme = lush.merge({
	base,
	gitsigns,
	toggleterm,
	bufferline,
	lualine_highlights,
	fzf_lua,
})

return theme
