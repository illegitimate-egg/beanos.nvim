--
-- Built with,
--
--        ,gggg,
--       d8" "8I                         ,dPYb,
--       88  ,dP                         IP'`Yb
--    8888888P"                          I8  8I
--       88                              I8  8'
--       88        gg      gg    ,g,     I8 dPgg,
--  ,aa,_88        I8      8I   ,8'8,    I8dP" "8I
-- dP" "88P        I8,    ,8I  ,8'  Yb   I8P    I8
-- Yb,_,d88b,,_   ,d8b,  ,d8b,,8'_   8) ,d8     I8,
--  "Y8P"  "Y888888P'"Y88P"`Y8P' "YY8P8P88P     `Y8
--

-- This is a starter colorscheme for use with Lush,
-- for usage guides, see :h lush or :LushRunTutorial

--
-- Note: Because this is a lua file, vim will append it to the runtime,
--       which means you can require(...) it in other lua code (this is useful),
--       but you should also take care not to conflict with other libraries.
--
--       (This is a lua quirk, as it has somewhat poor support for namespacing.)
--
--       Basically, name your file,
--
--       "super_theme/lua/lush_theme/super_theme_dark.lua",
--
--       not,
--
--       "super_theme/lua/dark.lua".
--
--       With that caveat out of the way...
--

-- Enable lush.ify on this file, run:
--
--  `:Lushify`
--
--  or
--
--  `:lua require('lush').ify()`

local lush = require('lush')
local hsl = lush.hsl

local willYellow = "#ffff00"

-- LSP/Linters mistakenly show `undefined global` errors in the spec, they may
-- support an annotation like the following. Consult your server documentation.
---@diagnostic disable: undefined-global
local theme = lush(function(injected_functions)
  local sym = injected_functions.sym
  return {
    -- The following are the Neovim (as of 0.8.0-dev+100-g371dfb174) highlight
    -- groups, mostly used for styling UI elements.
    -- Comment them out and add your own properties to override the defaults.
    -- An empty definition `{}` will clear all styling, leaving elements looking
    -- like the 'Normal' group.
    -- To be able to link to a group, it must already be defined, so you may have
    -- to reorder items as you go.
    --
    -- See :h highlight-groups
    --
    ColorColumn  { bg = "#000000", fg = willYellow }, -- Columns set with 'colorcolumn'
    Conceal      { bg = "#000000", fg = willYellow }, -- Placeholder characters substituted for concealed text (see 'conceallevel')
    Cursor       { bg = "#000000", fg = willYellow }, -- Character under the cursor
    lCursor      { bg = "#000000", fg = willYellow }, -- Character under the cursor when |language-mapping| is used (see 'guicursor')
    CursorIM     { bg = "#000000", fg = willYellow }, -- Like Cursor, but used when in IME mode |CursorIM|
    CursorColumn { bg = "#000000", fg = willYellow }, -- Screen-column at the cursor, when 'cursorcolumn' is set.
    CursorLine   { bg = "#000000", fg = willYellow }, -- Screen-line at the cursor, when 'cursorline' is set. Low-priority if foreground (ctermfg OR guifg) is not set.
    --
    Directory    { bg = "#000000", fg = willYellow }, -- Directory names (and other special names in listings)
    DiffAdd      { bg = "#000000", fg = willYellow }, -- Diff mode: Added line |diff.txt|
    DiffChange   { bg = "#000000", fg = willYellow }, -- Diff mode: Changed line |diff.txt|
    DiffDelete   { bg = "#000000", fg = willYellow }, -- Diff mode: Deleted line |diff.txt|
    DiffText     { bg = "#000000", fg = willYellow }, -- Diff mode: Changed text within a changed line |diff.txt|
    EndOfBuffer  { bg = "#000000", fg = willYellow }, -- Filler lines (~) after the end of the buffer. By default, this is highlighted like |hl-NonText|.
    TermCursor   { bg = "#000000", fg = willYellow }, -- Cursor in a focused terminal
    TermCursorNC { bg = "#000000", fg = willYellow }, -- Cursor in an unfocused terminal
    ErrorMsg     { bg = "#000000", fg = willYellow }, -- Error messages on the command line
    VertSplit    { bg = "#000000", fg = willYellow }, -- Column separating vertically split windows
    Folded       { bg = "#000000", fg = willYellow }, -- Line used for closed folds
    FoldColumn   { bg = "#000000", fg = willYellow }, -- 'foldcolumn'
    SignColumn   { bg = "#000000", fg = willYellow }, -- Column where |signs| are displayed
    IncSearch    { fg = "#000000", bg = willYellow }, -- 'incsearch' highlighting; also used for the text replaced with ":s///c"
    Substitute   { bg = "#000000", fg = willYellow }, -- |:substitute| replacement text highlighting
    LineNr       { bg = "#000000", fg = willYellow }, -- Line number for ":number" and ":#" commands, and when 'number' or 'relativenumber' option is set.
    CursorLineNr { bg = "#000000", fg = willYellow }, -- Like LineNr when 'cursorline' or 'relativenumber' is set for the cursor line.
    MatchParen   { bg = "#000000", fg = willYellow }, -- Character under the cursor or just before it, if it is a paired bracket, and its match. |pi_paren.txt|
    ModeMsg      { bg = "#000000", fg = willYellow }, -- 'showmode' message (e.g., "-- INSERT -- ")
    MsgArea      { bg = "#000000", fg = willYellow }, -- Area for messages and cmdline
    MsgSeparator { bg = "#000000", fg = willYellow }, -- Separator for scrolled messages, `msgsep` flag of 'display'
    MoreMsg      { bg = "#000000", fg = willYellow }, -- |more-prompt|
    NonText      { bg = "#000000", fg = willYellow }, -- '@' at the end of the window, characters from 'showbreak' and other characters that do not really exist in the text (e.g., ">" displayed when a double-wide character doesn't fit at the end of the line). See also |hl-EndOfBuffer|.
    Normal       { bg = "#000000", fg = willYellow }, -- Normal text
    NormalFloat  { bg = "#000000", fg = willYellow }, -- Normal text in floating windows.
    NormalNC     { bg = "#000000", fg = willYellow }, -- normal text in non-current windows
    Pmenu        { bg = "#000000", fg = willYellow }, -- Popup menu: Normal item.
    PmenuSel     { fg = "#000000", bg = willYellow }, -- Popup menu: Selected item.
    PmenuSbar    { fg = "#000000", bg = willYellow }, -- Popup menu: Scrollbar.
    PmenuThumb   { bg = "#000000", fg = willYellow }, -- Popup menu: Thumb of the scrollbar.
    Question     { bg = "#000000", fg = willYellow }, -- |hit-enter| prompt and yes/no questions
    QuickFixLine { bg = "#000000", fg = willYellow }, -- Current |quickfix| item in the quickfix window. Combined with |hl-CursorLine| when the cursor is there.
    Search       { fg = "#000000", bg = willYellow }, -- Last search pattern highlighting (see 'hlsearch'). Also used for similar items that need to stand out.
    SpecialKey   { bg = "#000000", fg = willYellow }, -- Unprintable characters: text displayed differently from what it really is. But not 'listchars' whitespace. |hl-Whitespace|
    SpellBad     { bg = "#000000", fg = willYellow }, -- Word that is not recognized by the spellchecker. |spell| Combined with the highlighting used otherwise.
    SpellCap     { bg = "#000000", fg = willYellow }, -- Word that should start with a capital. |spell| Combined with the highlighting used otherwise.
    SpellLocal   { bg = "#000000", fg = willYellow }, -- Word that is recognized by the spellchecker as one that is used in another region. |spell| Combined with the highlighting used otherwise.
    SpellRare    { bg = "#000000", fg = willYellow }, -- Word that is recognized by the spellchecker as one that is hardly ever used. |spell| Combined with the highlighting used otherwise.
    StatusLine   { fg = "#000000", bg = willYellow }, -- Status line of current window
    StatusLineNC { fg = "#000000", bg = willYellow }, -- Status lines of not-current windows. Note: If this is equal to "StatusLine" Vim will use "^^^" in the status line of the current window.
    TabLine      { bg = "#000000", fg = willYellow }, -- Tab pages line, not active tab page label
    TabLineFill  { bg = "#000000", fg = willYellow }, -- Tab pages line, where there are no labels
    TabLineSel   { bg = "#000000", fg = willYellow }, -- Tab pages line, active tab page label
    Title        { bg = "#000000", fg = willYellow }, -- Titles for output from ":set all", ":autocmd" etc.
    Visual       { fg = "#000000", bg = willYellow }, -- Visual mode selection
    VisualNOS    { fg = "#000000", bg = willYellow }, -- Visual mode selection when vim is "Not Owning the Selection".
    WarningMsg   { fg = "#000000", bg = willYellow }, -- Warning messages
    Whitespace   { bg = "#000000", fg = willYellow }, -- "nbsp", "space", "tab" and "trail" in 'listchars'
    Winseparator { bg = "#000000", fg = willYellow }, -- Separator between window splits. Inherts from |hl-VertSplit| by default, which it will replace eventually.
    WildMenu     { bg = "#000000", fg = willYellow }, -- Current match in 'wildmenu' completion

    -- Common vim syntax groups used for all kinds of code and markup.
    -- Commented-out groups should chain up to their preferred (*) group
    -- by default.
    --
    -- See :h group-name
    --
    -- Uncomment and edit if you want more specific syntax highlighting.

    Comment        { bg = "#000000", fg = willYellow }, -- Any comment

    Constant       { bg = "#000000", fg = "#ff0000" }, -- (*) Any constant
    String         { bg = "#000000", fg = "#ff0000" }, --   A string constant: "this is a string"
    Character      { bg = "#000000", fg = "#ff0000" }, --   A character constant: 'c', '\n'
    Number         { bg = "#000000", fg = "#ff0000" }, --   A number constant: 234, 0xff
    Boolean        { bg = "#000000", fg = "#ff0000" }, --   A boolean constant: TRUE, false
    Float          { bg = "#000000", fg = "#ff0000" }, --   A floating point constant: 2.3e10

    Identifier     { bg = "#000000", fg = "#00ffff" }, -- (*) Any variable name
    Function       { bg = "#000000", fg = "#00ffff" }, --   Function name (also: methods for classes)

    Statement      { bg = "#000000", fg = "#0000ff" }, -- (*) Any statement
    Conditional    { bg = "#000000", fg = "#0000ff" }, --   if, then, else, endif, switch, etc.
    Repeat         { bg = "#000000", fg = "#0000ff" }, --   for, do, while, etc.
    Label          { bg = "#000000", fg = "#0000ff" }, --   case, default, etc.
    Operator       { bg = "#000000", fg = "#0000ff" }, --   "sizeof", "+", "*", etc.
    Keyword        { bg = "#000000", fg = "#0000ff" }, --   any other keyword
    Exception      { bg = "#000000", fg = "#0000ff" }, --   try, catch, throw

    PreProc        { bg = "#000000", fg = "#ff00ff" }, -- (*) Generic Preprocessor
    Include        { bg = "#000000", fg = "#ff00ff" }, --   Preprocessor #include
    Define         { bg = "#000000", fg = "#ff00ff" }, --   Preprocessor #define
    Macro          { bg = "#000000", fg = "#ff00ff" }, --   Same as Define
    PreCondit      { bg = "#000000", fg = "#ff00ff" }, --   Preprocessor #if, #else, #endif, etc.

    Type           { bg = "#000000", fg = "#00ff00" }, -- (*) int, long, char, etc.
    StorageClass   { bg = "#000000", fg = "#00ff00" }, --   static, register, volatile, etc.
    Structure      { bg = "#000000", fg = "#00ff00" }, --   struct, union, enum, etc.
    Typedef        { bg = "#000000", fg = "#00ff00" }, --   A typedef

    Special        { bg = "#000000", fg = "#ff6600" }, -- (*) Any special symbol
    SpecialChar    { bg = "#000000", fg = "#ff6600" }, --   Special character in a constant
    Tag            { bg = "#000000", fg = "#ff6600" }, --   You can use CTRL-] on this
    Delimiter      { bg = "#000000", fg = "#ff6600" }, --   Character that needs attention
    SpecialComment { bg = "#000000", fg = "#ff6600" }, --   Special things inside a comment (e.g. '\n')
    Debug          { bg = "#000000", fg = "#ff6600" }, --   Debugging statements

    Underlined     { gui = "underline" }, -- Text that stands out, HTML links
    -- Ignore         { }, -- Left blank, hidden |hl-Ignore| (NOTE: May be invisible here in template)
    -- Error          { }, -- Any erroneous construct
    -- Todo           { }, -- Anything that needs extra attention; mostly the keywords TODO FIXME and XXX

    -- These groups are for the native LSP client and diagnostic system. Some
    -- other LSP clients may use these groups, or use their own. Consult your
    -- LSP client's documentation.

    -- See :h lsp-highlight, some groups may not be listed, submit a PR fix to lush-template!
    --
    -- LspReferenceText            { } , -- Used for highlighting "text" references
    -- LspReferenceRead            { } , -- Used for highlighting "read" references
    -- LspReferenceWrite           { } , -- Used for highlighting "write" references
    -- LspCodeLens                 { } , -- Used to color the virtual text of the codelens. See |nvim_buf_set_extmark()|.
    -- LspCodeLensSeparator        { } , -- Used to color the seperator between two or more code lens.
    -- LspSignatureActiveParameter { } , -- Used to highlight the active parameter in the signature help. See |vim.lsp.handlers.signature_help()|.

    -- See :h diagnostic-highlights, some groups may not be listed, submit a PR fix to lush-template!
    --
    -- DiagnosticError            { } , -- Used as the base highlight group. Other Diagnostic highlights link to this by default (except Underline)
    -- DiagnosticWarn             { } , -- Used as the base highlight group. Other Diagnostic highlights link to this by default (except Underline)
    -- DiagnosticInfo             { } , -- Used as the base highlight group. Other Diagnostic highlights link to this by default (except Underline)
    -- DiagnosticHint             { } , -- Used as the base highlight group. Other Diagnostic highlights link to this by default (except Underline)
    -- DiagnosticVirtualTextError { } , -- Used for "Error" diagnostic virtual text.
    -- DiagnosticVirtualTextWarn  { } , -- Used for "Warn" diagnostic virtual text.
    -- DiagnosticVirtualTextInfo  { } , -- Used for "Info" diagnostic virtual text.
    -- DiagnosticVirtualTextHint  { } , -- Used for "Hint" diagnostic virtual text.
    -- DiagnosticUnderlineError   { } , -- Used to underline "Error" diagnostics.
    -- DiagnosticUnderlineWarn    { } , -- Used to underline "Warn" diagnostics.
    -- DiagnosticUnderlineInfo    { } , -- Used to underline "Info" diagnostics.
    -- DiagnosticUnderlineHint    { } , -- Used to underline "Hint" diagnostics.
    -- DiagnosticFloatingError    { } , -- Used to color "Error" diagnostic messages in diagnostics float. See |vim.diagnostic.open_float()|
    -- DiagnosticFloatingWarn     { } , -- Used to color "Warn" diagnostic messages in diagnostics float.
    -- DiagnosticFloatingInfo     { } , -- Used to color "Info" diagnostic messages in diagnostics float.
    -- DiagnosticFloatingHint     { } , -- Used to color "Hint" diagnostic messages in diagnostics float.
    -- DiagnosticSignError        { } , -- Used for "Error" signs in sign column.
    -- DiagnosticSignWarn         { } , -- Used for "Warn" signs in sign column.
    -- DiagnosticSignInfo         { } , -- Used for "Info" signs in sign column.
    -- DiagnosticSignHint         { } , -- Used for "Hint" signs in sign column.

    -- Tree-Sitter syntax groups.
    --
    -- See :h treesitter-highlight-groups, some groups may not be listed,
    -- submit a PR fix to lush-template!
    --
    -- Tree-Sitter groups are defined with an "@" symbol, which must be
    -- specially handled to be valid lua code, we do this via the special
    -- sym function. The following are all valid ways to call the sym function,
    -- for more details see https://www.lua.org/pil/5.html
    --
    -- sym("@text.literal")
    -- sym('@text.literal')
    -- sym"@text.literal"
    -- sym'@text.literal'
    --
    -- For more information see https://github.com/rktjmp/lush.nvim/issues/109

    -- sym"@text.literal"      { }, -- Comment
    -- sym"@text.reference"    { }, -- Identifier
    -- sym"@text.title"        { }, -- Title
    -- sym"@text.uri"          { }, -- Underlined
    -- sym"@text.underline"    { }, -- Underlined
    -- sym"@text.todo"         { }, -- Todo
    -- sym"@comment"           { }, -- Comment
    -- sym"@punctuation"       { }, -- Delimiter
    -- sym"@constant"          { }, -- Constant
    -- sym"@constant.builtin"  { }, -- Special
    -- sym"@constant.macro"    { }, -- Define
    -- sym"@define"            { }, -- Define
    -- sym"@macro"             { }, -- Macro
    -- sym"@string"            { }, -- String
    -- sym"@string.escape"     { }, -- SpecialChar
    -- sym"@string.special"    { }, -- SpecialChar
    -- sym"@character"         { }, -- Character
    -- sym"@character.special" { }, -- SpecialChar
    -- sym"@number"            { }, -- Number
    -- sym"@boolean"           { }, -- Boolean
    -- sym"@float"             { }, -- Float
    -- sym"@function"          { }, -- Function
    -- sym"@function.builtin"  { }, -- Special
    -- sym"@function.macro"    { }, -- Macro
    -- sym"@parameter"         { }, -- Identifier
    -- sym"@method"            { }, -- Function
    -- sym"@field"             { }, -- Identifier
    -- sym"@property"          { }, -- Identifier
    -- sym"@constructor"       { }, -- Special
    -- sym"@conditional"       { }, -- Conditional
    -- sym"@repeat"            { }, -- Repeat
    -- sym"@label"             { }, -- Label
    -- sym"@operator"          { }, -- Operator
    -- sym"@keyword"           { }, -- Keyword
    -- sym"@exception"         { }, -- Exception
    -- sym"@variable"          { }, -- Identifier
    -- sym"@type"              { }, -- Type
    -- sym"@type.definition"   { }, -- Typedef
    -- sym"@storageclass"      { }, -- StorageClass
    -- sym"@structure"         { }, -- Structure
    -- sym"@namespace"         { }, -- Identifier
    -- sym"@include"           { }, -- Include
    -- sym"@preproc"           { }, -- PreProc
    -- sym"@debug"             { }, -- Debug
    -- sym"@tag"               { }, -- Tag
}
end)

-- Return our parsed theme for extension or use elsewhere.
return theme

-- vi:nowrap
