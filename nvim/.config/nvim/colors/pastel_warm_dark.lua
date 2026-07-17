-- Pastel Warm Dark - High Contrast Selection-- Pastel Warm Dark - High Contrast Selectioncheme (full modern variant)

local theme = {}

-- ============================
-- PALETTE
-- ============================

local P = {
  bg = "#23272E",
  fg = "#E5E9F0",
  caret = "#FFB480",
  line_highlight = "#293242",
  selection = "#4F6F9C",
  match_selection = "#A3C6ED",

  pastel_yellow = "#FDF1AD",
  pastel_orange = "#FFB480",
  pale_apricot = "#FEDD9E",
  pastel_mint = "#A8E6CF",
  salmon_pink = "#FFA071",
  sage_comment = "#7F8C8D",

  warm_coral = "#F3A683",
  muted_lavender = "#95AFBA",
  peach_cream = "#FFD3B6",
  mint_cream = "#C4F4E2",

  soft_amber = "#FAD390",
  canary_yellow = "#FFF59D",
  soft_tangerine = "#FFCC80",
  ice_blue = "#E0F7FA",

  moss_green = "#7FB99F",
  light_mint = "#E8FFF5",
  soft_violet = "#D1C4E9",

  strawberry_pastel = "#F1A7A7",
  lemon_chiffon = "#FFF1B0",

  powder_blue = "#A3C6ED",
  periwinkle = "#BAC3ED",
}

local function set(hl, opts)
  vim.api.nvim_set_hl(0, hl, opts)
end

-- ============================
-- UI / EDITOR GROUPS
-- ============================

set("Normal",            { fg = P.fg, bg = P.bg })
set("CursorLine",        { bg = P.line_highlight })
set("Visual",            { bg = P.selection })
set("MatchParen",        { fg = P.match_selection, bold = true })
set("Cursor",            { fg = P.bg, bg = P.caret })

set("LineNr",            { fg = P.muted_lavender })
set("CursorLineNr",      { fg = P.peach_cream, bold = true })
set("VertSplit",         { fg = P.muted_lavender })

set("SignColumn",        { bg = P.bg })
set("FoldColumn",        { fg = P.periwinkle })
set("Directory",         { fg = P.periwinkle })

-- Author: Roberto
-- ============================
-- SYNTAX GROUPS
-- ============================

set("Comment",           { fg = P.sage_comment, italic = true })
set("Keyword",           { fg = P.pastel_yellow })
set("Conditional",       { fg = P.pastel_yellow })
set("Repeat",            { fg = P.pastel_yellow })
set("Operator",          { fg = P.warm_coral })

set("Function",          { fg = P.pastel_orange })
set("Identifier",        { fg = P.powder_blue })
set("Type",              { fg = P.pastel_mint })
set("StorageClass",      { fg = P.pastel_mint })
set("Structure",         { fg = P.moss_green })

set("Constant",          { fg = P.soft_violet })
set("Number",            { fg = P.pale_apricot })
set("String",            { fg = P.salmon_pink })

set("PreProc",           { fg = P.peach_cream })
set("Include",           { fg = P.peach_cream })
set("Namespace",         { fg = P.periwinkle })

set("Delimiter",         { fg = P.muted_lavender })
set("Special",           { fg = P.soft_tangerine })

-- C++ pointers and references (mapped from Sublime rule)
set("Pointer",           { fg = P.mint_cream, bold = true })

-- ============================
-- TREESITTER (@...) GROUPS
-- ============================

-- Comments
set("@comment",                  { fg = P.sage_comment, italic = true })
set("@string.documentation",     { fg = P.sage_comment, italic = true })

-- Keywords
set("@keyword",                  { fg = P.pastel_yellow })
set("@keyword.operator",         { fg = P.warm_coral })
set("@keyword.import",           { fg = P.peach_cream })

-- Types
set("@type",                     { fg = P.pastel_mint })
set("@type.builtin",             { fg = P.pastel_mint })
set("@type.definition",          { fg = P.moss_green })
set("@type.reference",           { fg = P.light_mint })

-- Functions
set("@function",                 { fg = P.pastel_orange })
set("@function.builtin",         { fg = P.canary_yellow })
set("@function.method",          { fg = P.pastel_orange })
set("@function.static",          { fg = P.pastel_orange, italic = true })

-- Variables
set("@variable",                 { fg = P.powder_blue })
set("@variable.parameter",       { fg = P.powder_blue, italic = true })
set("@variable.member",          { fg = P.soft_amber })
set("@variable.constant",        { fg = P.soft_violet })

-- Namespaces
set("@namespace",                { fg = P.periwinkle })

-- Strings
set("@string",                   { fg = P.salmon_pink })
set("@string.special",           { fg = P.salmon_pink })

-- Numbers
set("@number",                   { fg = P.pale_apricot })

-- Operators
set("@operator",                 { fg = P.warm_coral })

-- Punctuation
set("@punctuation",              { fg = P.muted_lavender })
set("@punctuation.bracket",      { fg = P.muted_lavender })
set("@punctuation.delimiter",    { fg = P.muted_lavender })
set("@punctuation.special",      { fg = P.soft_tangerine })

-- ============================
-- LSP SEMANTIC TOKENS
-- ============================

-- Types
set("@lsp.type.namespace",       { fg = P.periwinkle })
set("@lsp.type.class",           { fg = P.moss_green })
set("@lsp.type.enum",            { fg = P.moss_green })
set("@lsp.type.struct",          { fg = P.moss_green })
set("@lsp.type.type",            { fg = P.pastel_mint })

-- Variables / properties
set("@lsp.type.property",        { fg = P.soft_amber })
set("@lsp.type.variable",        { fg = P.powder_blue })
set("@lsp.type.parameter",       { fg = P.powder_blue, italic = true })
set("@lsp.type.constant",        { fg = P.soft_violet })

-- Operators (C++ :: resolution)
-- ============================
-- DIAGNOSTICS
-- ============================

set("DiagnosticError",           { fg = P.strawberry_pastel })
set("DiagnosticWarn",            { fg = P.lemon_chiffon })
set("DiagnosticInfo",            { fg = P.powder_blue })
set("DiagnosticHint",            { fg = P.light_mint })

set("DiagnosticUnderlineError",  { sp = P.strawberry_pastel, undercurl = true })
set("DiagnosticUnderlineWarn",   { sp = P.lemon_chiffon,     undercurl = true })
set("DiagnosticUnderlineInfo",   { sp = P.powder_blue,        undercurl = true })
set("DiagnosticUnderlineHint",   { sp = P.light_mint,         undercurl = true })

-- ============================
-- GIT SIGNS
-- ============================

set("GitSignsAdd",               { fg = P.pastel_mint })
set("GitSignsChange",            { fg = P.soft_amber })
set("GitSignsDelete",            { fg = P.strawberry_pastel })

-- ============================
-- FINAL REGISTRATION
-- ============================

vim.g.colors_name = "pastel_warm_dark"
