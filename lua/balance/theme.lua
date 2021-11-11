local attr = require('balance.attr')
local utils = require('balance.utils')
local color = require('balance.colors')

local highlightfunc = utils.highlightfunc
local linkfunc = utils.linkfunc

local theme = {}

theme.setup = function(options)
  -- builtin highlight groups according to help: highlight-groups
  highlightfunc('ColorColumn', nil, color.lightgrey, nil, nil)
  highlightfunc('Conceal', color.purpleblue, attr.none, nil, nil)
  highlightfunc('Cursor', color.white, color.black, nil, nil)
  highlightfunc('CursorColumn', nil, color.darkgrey, nil, nil)
  highlightfunc('CursorLine', nil, color.white, attr.none, nil)
  highlightfunc('Directory', color.darkblue, nil, nil, nil)

  -- Diff
  highlightfunc('DiffAdded', color.green, nil, attr.bold, nil)
  highlightfunc('DiffRemoved', color.darkred, nil, attr.bold, nil)
  highlightfunc('DiffAdd', color.green, nil, nil, nil)
  highlightfunc('DiffChange', color.blue, nil, nil, nil)
  highlightfunc('DiffDelete', color.darkred, nil, nil, nil)
  highlightfunc('DiffText', color.purpleblue, nil, nil, nil)

  highlightfunc('EndOfBuffer', color.black, nil, nil, nil)
  highlightfunc('ErrorMsg', color.darkred, attr.none, nil, nil)
  highlightfunc('VertSplit', color.white, color.black, nil, nil)
  highlightfunc('Folded', color.darkgrey, color.lightgrey, attr.italic, nil)
  highlightfunc('FoldColumn', color.purpleblue, color.white, nil, nil)
  highlightfunc('SignColumn', nil, color.white, nil, nil)
  highlightfunc('IncSearch', color.black, color.yellow, attr.none, nil)
  highlightfunc('Substitute', nil, color.skyblue, attr.none, nil)
  highlightfunc('LineNr', color.darkgrey, nil , nil, nil)
  highlightfunc('CursorLineNr', color.brown, color.white, nil, nil)
  highlightfunc('MatchParen', nil, color.lightgrey, nil, nil)
  highlightfunc('ModeMsg', color.green, nil, nil, nil)
  highlightfunc('MoreMsg', color.green, nil, nil, nil)
  highlightfunc('NonText', color.grey, nil, attr.none, nil)
  highlightfunc('Normal', color.black, nil , nil, nil)
  highlightfunc('NormalFloat', nil, color.lighttan, nil, nil)
  highlightfunc('NormalNC', nil, attr.none, nil, nil)

  -- PMenu
  highlightfunc('Pmenu', nil, color.lighttan, nil, nil)
  highlightfunc('PmenuSel', color.lighttan, color.darkgrey, nil, nil)
  highlightfunc('PmenuSbar', nil, color.lightgrey, nil, nil)
  highlightfunc('PmenuThumb', nil, color.darkblue, nil, nil)

  -- cmp custom highlights
  highlightfunc('CmpItemAbbr', color.black, nil, nil, nil)
  highlightfunc('CmpItemAbbrDeprecated', color.lightgrey, nil, nil, nil)
  highlightfunc('CmpItemAbbrMatch', color.blue, nil, attr.bold, nil)
  highlightfunc('CmpItemAbbrMatchFuzzy', color.blue, nil, attr.underline, nil)
  highlightfunc('CmpItemKind', color.purpleblue, nil, nil, nil)
  highlightfunc('CmpItemMenu', color.darkgrey, nil, nil, nil)

  highlightfunc('Question', color.purpleblue, nil, nil, nil)
  highlightfunc('Search', color.black, color.lightblue, nil, nil)
  highlightfunc('SpecialKey', color.green, nil, nil, nil)

  -- SpellCheck colors
  highlightfunc('SpellBad', nil, nil, attr.undercurl, color.red)
  highlightfunc('SpellLocal', nil, nil, attr.undercurl, color.turquoise)
  highlightfunc('SpellCap', nil, nil, attr.undercurl, color.blue)
  highlightfunc('SpellRare', nil, nil, attr.undercurl, color.teal)

  -- StatusLine
  highlightfunc('StatusLine', color.blue, color.offwhite, nil, nil)
  highlightfunc('StatusLineNC', color.black, color.offwhite, nil, nil)

  -- Tabline
  highlightfunc('TabLine', color.darkgrey, attr.none, attr.none, nil)
  highlightfunc('TabLineFill', attr.none, attr.none, attr.none, nil)
  highlightfunc('TabLineSel', color.darkblue, color.lighttan, attr.none, nil)

  highlightfunc('Title', color.purpleblue, nil, nil, nil)
  highlightfunc('Visual', color.black, color.lightblue, nil, nil)
  highlightfunc('VisualNOS', color.darkred, nil, nil, nil)
  highlightfunc('WarningMsg', color.darkred, attr.none, nil, nil)
  highlightfunc('WildMenu', color.black, color.purpleblue, nil, nil)

  linkfunc('Menu', 'Normal')
  linkfunc('Scrollbar', 'PmenuSbar')
  highlightfunc('Tooltip', color.indigp, color.skyblue, nil, nil)

  highlightfunc('Bold', nil, nil, attr.bold, nil)
  highlightfunc('Italic', nil, nil, attr.italic, nil)

  -- Help Menu
  highlightfunc('helpExample', color.darkgreen, nil, nil, nil)
  highlightfunc('helpCommand', color.orange, nil, nil, nil)

  -- Syntax Group as according to help: group-name
  highlightfunc('Comment', color.darkgrey, nil, attr.italic, nil)

  highlightfunc('Constant', color.blue, nil, attr.italic, nil)
  highlightfunc('String', color.green, nil, nil, nil)
  highlightfunc('Character', color.blue, nil, nil, nil)
  highlightfunc('Number', color.orange, nil, nil, nil)
  highlightfunc('Boolean', color.green, nil, attr.bold, nil)
  highlightfunc('Float', color.brown, nil, nil, nil)

  highlightfunc('Identifier', color.blue, nil, nil, nil)
  highlightfunc('Function', color.tan, nil, nil, nil)

  highlightfunc('Statement', color.purple, nil, attr.none, nil)
  highlightfunc('Conditional', color.pink, nil, attr.bold, nil)
  highlightfunc('Repeat', color.brown, nil, attr.bold, nil)
  highlightfunc('Label', color.pink, nil, attr.bold, nil)
  highlightfunc('Operator', color.black, nil, nil, nil)
  highlightfunc('Keyword', color.darkred, nil, nil, nil)
  highlightfunc('Exception', color.brown, nil, attr.bold, nil)

  highlightfunc('PreProc', color.darkblue, nil, nil, nil)
  highlightfunc('Include', color.purpleblue, nil, nil, nil)
  highlightfunc('Define', color.pink, nil, nil, nil)
  highlightfunc('Macro', color.purple, nil, nil, nil)
  highlightfunc('PreCondit', color.darkred, nil, nil, nil)

  highlightfunc('Type', color.magenta, nil, attr.none, nil)
  highlightfunc('StorageClass', color.darkblue, nil, nil, nil)
  highlightfunc('Structure', color.darkblue, nil, attr.bold, nil)
  highlightfunc('Typedef', color.indigp, nil, attr.bold, nil)

  highlightfunc('Special', color.darkblue, nil, nil, nil)
  highlightfunc('SpecialChar', color.darkgrey, nil, nil, nil)
  highlightfunc('Tag', nil, color.brown, nil, nil)
  highlightfunc('Delimiter', color.black, nil, nil, nil)
  highlightfunc('SpecialComment', color.blue, nil, nil, nil)
  highlightfunc('Debug', color.darkred, nil, nil, nil)

  highlightfunc('Underlined', color.darkblue, nil, nil, nil)
  highlightfunc('Error', color.red, color.white, attr.bold, nil)
  highlightfunc('Todo', color.green, color.white, attr.bold, nil)

  -- from help: lsp-highlight
  highlightfunc('LspDiagnosticsDefaultError', color.red, nil, nil, nil)
  highlightfunc('LspDiagnosticsDefaultWarning', color.orange, nil, nil, nil)
  highlightfunc('LspDiagnosticsDefaultInformation', color.darkblue, nil, nil, nil)
  highlightfunc('LspDiagnosticsDefaultHint', color.purpleblue, nil, nil, nil)

  highlightfunc('LspDiagnosticsVirtualTextError', color.red, nil, nil, nil)
  highlightfunc('LspDiagnosticsVirtualTextWarning', color.orange, nil, nil, nil)
  highlightfunc('LspDiagnosticsVirtualTextInformation', color.darkblue, nil, nil, nil)
  highlightfunc('LspDiagnosticsVirtualTextHint', color.purpleblue, nil, nil, nil)

  highlightfunc('LspDiagnosticsSignError', color.darkred, nil, nil, nil)
  highlightfunc('LspDiagnosticsSignWarning', color.orange, nil, nil, nil)
  highlightfunc('LspDiagnosticsSignInformation', color.purpleblue, nil, nil, nil)
  highlightfunc('LspDiagnosticsSignHint', color.blue, nil, nil, nil)

  highlightfunc('LspDiagnosticsUnderlineError', nil, nil, attr.undercurl, color.red)
  highlightfunc('LspDiagnosticsUnderlineWarning', nil, nil, attr.undercurl, color.orange)
  highlightfunc('LspDiagnosticsUnderlineInformation', nil, nil, attr.undercurl, color.darkblue)
  highlightfunc('LspDiagnosticsUnderlineHint', nil, nil, attr.undercurl, color.purpleblue)

  -- other links
  linkfunc('shQuote', 'String')
  linkfunc('vimScriptDelim', 'Macro')
  linkfunc('StringDelimiter', 'String')
  linkfunc('CompeDocumentation', 'NormalFloat')
end

return theme
