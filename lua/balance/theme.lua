local attr = require('balance.attr')
local utils = require('balance.utils')
local color = require('balance.colors')

local highlightfunc = utils.highlightfunc
local linkfunc = utils.linkfunc

local theme = {}

theme.setup = function(options)
  -- builtin highlight groups according to help: highlight-groups
  highlightfunc('ColorColumn', nil, color.lightgrey, nil)
  highlightfunc('Conceal', color.purpleblue, attr.none, nil)
  highlightfunc('Cursor', color.white, color.black, nil)
  highlightfunc('CursorColumn', nil, color.darkgrey, nil)
  highlightfunc('CursorLine', nil, color.white, attr.none)
  highlightfunc('Directory', color.darkblue, nil, nil)

  -- Diff
  highlightfunc('DiffAdd', color.green, attr.none, attr.none)
  highlightfunc('DiffAdded', color.green, attr.none, attr.none)
  highlightfunc('DiffChange', color.blue, attr.none, attr.none)
  highlightfunc('DiffDelete', color.darkred, attr.none, attr.none)
  highlightfunc('DiffRemoved', color.darkred, attr.none, attr.none)
  highlightfunc('DiffText', color.purpleblue, attr.none, attr.none)

  highlightfunc('EndOfBuffer', color.black, nil, nil)
  highlightfunc('ErrorMsg', color.red, attr.none, nil)
  highlightfunc('VertSplit', color.white, color.black, nil)
  highlightfunc('Folded', color.darkgrey, color.lightgrey, attr.italic)
  highlightfunc('FoldColumn', color.purpleblue, color.white, nil)
  highlightfunc('SignColumn', nil, color.white, nil)
  highlightfunc('IncSearch', color.black, color.yellow, attr.none)
  highlightfunc('Substitute', nil, color.skyblue, attr.none)
  highlightfunc('LineNr', color.darkgrey, nil , nil)
  highlightfunc('CursorLineNr', color.tan, color.white, nil)
  highlightfunc('MatchParen', nil, color.lightgrey, nil)
  highlightfunc('ModeMsg', color.green, nil, nil)
  highlightfunc('MoreMsg', color.green, nil, nil)
  highlightfunc('NonText', color.grey, nil, attr.none)
  highlightfunc('Normal', color.black, nil , nil)
  highlightfunc('NormalFloat', nil, color.lighttan, nil)
  highlightfunc('NormalNC', nil, attr.none, nil)

  -- PMenu
  highlightfunc('Pmenu', nil, color.lighttan, nil)
  highlightfunc('PmenuSel', color.lighttan, color.darkgrey, nil)
  highlightfunc('PmenuSbar', nil, color.lightgrey, nil)
  highlightfunc('PmenuThumb', nil, color.darkblue, nil)

  -- cmp custom highlights
  highlightfunc('CmpItemAbbr', color.black, nil, nil)
  highlightfunc('CmpItemAbbrDeprecated', color.darkred, nil, nil)
  highlightfunc('CmpItemAbbrMatch', color.blue, nil, attr.bold)
  highlightfunc('CmpItemAbbrMatchFuzzy', color.blue, nil, attr.underline)
  highlightfunc('CmpItemKind', color.purpleblue, nil, nil)
  highlightfunc('CmpItemMenu', color.darkgrey, nil, nil)

  highlightfunc('Question', color.purpleblue, nil, nil)
  highlightfunc('Search', color.black, color.lightblue, nil)
  highlightfunc('SpecialKey', color.green, nil, nil)

  -- SpellCheck colors
  highlightfunc('SpellBad', color.red, nil, attr.underline)
  highlightfunc('SpellLocal', color.turquoise, nil, attr.underline)
  highlightfunc('SpellCap', color.blue, nil, attr.underline)
  highlightfunc('SpellRare', color.teal, nil, attr.underline)

  -- StatusLine
  highlightfunc('StatusLine', color.blue, color.offwhite, nil)
  highlightfunc('StatusLineNC', color.black, color.offwhite, nil)

  -- Tabline
  highlightfunc('TabLine', color.darkgrey, attr.none, attr.none)
  highlightfunc('TabLineFill', attr.none, attr.none, attr.none)
  highlightfunc('TabLineSel', color.darkblue, color.lighttan, attr.none)

  highlightfunc('Title', color.purpleblue, nil, nil)
  highlightfunc('Visual', color.black, color.lightblue, nil)
  highlightfunc('VisualNOS', color.darkred, nil, nil)
  highlightfunc('WarningMsg', color.darkred, attr.none, nil)
  highlightfunc('WildMenu', color.black, color.purpleblue, nil)

  linkfunc('Menu', 'Normal')
  linkfunc('Scrollbar', 'PmenuSbar')
  highlightfunc('Tooltip', color.indigo, color.skyblue, nil)

  highlightfunc('Bold', nil, nil, attr.bold)
  highlightfunc('Italic', nil, nil, attr.italic)

  -- Help Menu
  highlightfunc('helpExample', color.darkgreen, nil, nil)
  highlightfunc('helpCommand', color.orange, nil, nil)

  -- Syntax Group as according to help: group-name
  highlightfunc('Comment', color.darkgrey, nil, attr.italic)

  highlightfunc('Constant', color.blue, nil, attr.italic)
  highlightfunc('String', color.green, nil, nil)
  highlightfunc('Character', color.blue, nil, nil)
  highlightfunc('Number', color.orange, nil, nil)
  highlightfunc('Boolean', color.green, nil, attr.bold)
  highlightfunc('Float', color.brown, nil, nil)

  highlightfunc('Identifier', color.blue, nil, nil)
  highlightfunc('Function', color.tan, nil, nil)

  highlightfunc('Statement', color.purple, nil, attr.none)
  highlightfunc('Conditional', color.pink, nil, attr.bold)
  highlightfunc('Repeat', color.brown, nil, attr.bold)
  highlightfunc('Label', color.pink, nil, attr.bold)
  highlightfunc('Operator', color.black, nil, nil)
  highlightfunc('Keyword', color.darkred, nil, nil)
  highlightfunc('Exception', color.brown, nil, attr.bold)

  highlightfunc('PreProc', color.darkblue, nil, nil)
  highlightfunc('Include', color.purpleblue, nil, nil)
  highlightfunc('Define', color.pink, nil, nil)
  highlightfunc('Macro', color.purple, nil, nil)
  highlightfunc('PreCondit', color.darkred, nil, nil)

  highlightfunc('Type', color.magenta, nil, attr.none)
  highlightfunc('StorageClass', color.darkblue, nil, nil)
  highlightfunc('Structure', color.darkblue, nil, attr.bold)
  highlightfunc('Typedef', color.indigo, nil, attr.bold)

  highlightfunc('Special', color.darkblue, nil, nil)
  highlightfunc('SpecialChar', color.darkgrey, nil, nil)
  highlightfunc('Tag', nil, color.lighttan, nil)
  highlightfunc('Delimiter', color.black, nil, nil)
  highlightfunc('SpecialComment', color.blue, nil, nil)
  highlightfunc('Debug', color.darkred, nil, nil)

  highlightfunc('Underlined', color.darkblue, nil, nil)
  highlightfunc('Error', color.red, color.white, attr.bold)
  highlightfunc('Todo', color.green, color.white, attr.bold)

  -- from help: diagnostic-highlights
  highlightfunc('DiagnosticError', color.red, nil, nil)
  highlightfunc('DiagnosticWarn', color.orange, nil, nil)
  highlightfunc('DiagnosticInfo', color.darkblue, nil, nil)
  highlightfunc('DiagnosticHint', color.purpleblue, nil, nil)

  highlightfunc('DiagnosticVirtualTextError', color.red, nil, nil)
  highlightfunc('DiagnosticVirtualTextWarn', color.orange, nil, nil)
  highlightfunc('DiagnosticVirtualTextInfo', color.darkblue, nil, nil)
  highlightfunc('DiagnosticVirtualTextHint', color.purpleblue, nil, nil)

  highlightfunc('DiagnosticSignError', color.red, nil, nil)
  highlightfunc('DiagnosticSignWarn', color.orange, nil, nil)
  highlightfunc('DiagnosticSignInfo', color.darkblue, nil, nil)
  highlightfunc('DiagnosticSignHint', color.purpleblue, nil, nil)

  highlightfunc('DiagnosticUnderlineError', color.red, nil, attr.underline)
  highlightfunc('DiagnosticUnderlineWarn', color.orange, nil, attr.underline)
  highlightfunc('DiagnosticUnderlineInfo', color.darkblue, nil, attr.underline)
  highlightfunc('DiagnosticUnderlineHint', color.purpleblue, nil, attr.underline)

  highlightfunc('DiagnosticFloatingError', color.red, nil, nil)
  highlightfunc('DiagnosticFloatingWarn', color.orange, nil, nil)
  highlightfunc('DiagnosticFloatingInfo', color.darkblue, nil, nil)
  highlightfunc('DiagnosticFloatingHint', color.purpleblue, nil, nil)

  -- other links
  linkfunc('shQuote', 'String')
  linkfunc('vimScriptDelim', 'Macro')
  linkfunc('StringDelimiter', 'String')

  utils.load_theme(options)
end

return theme
