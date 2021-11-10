local utils = {}

-- highlighting function. AT LEAST ONE OF fg, bg, attr, attrsp MUST NOT BE NIL
utils.highlightfunc = function(group, fg, bg, attr, attrsp)
  local foreground = fg and ' guifg=' .. fg or ''
  local background = bg and ' guibg=' .. bg or ''
  local style = attr and ' gui=' .. attr or ''
  local stylesp = attrsp and ' guisp=' .. attrsp or ''
  vim.api.nvim_command('highlight ' .. group .. foreground .. background .. style .. stylesp)
end

-- links from group 1 highlights to group 2
utils.linkfunc = function(group1, group2)
  vim.api.nvim_command('highlight link ' .. group1 .. ' ' .. group2)
end

return utils
