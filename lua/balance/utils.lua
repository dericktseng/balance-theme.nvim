local utils = {}

-- highlight command
local cmdbuf = {}

-- highlighting function. AT LEAST ONE OF fg, bg, attr, attrsp MUST NOT BE NIL
utils.highlightfunc = function(group, fg, bg, attr)
  table.insert(cmdbuf, 'highlight ' .. group)
  table.insert(cmdbuf, fg and ' guifg=' .. fg or '')
  table.insert(cmdbuf, bg and ' guibg=' .. bg or '')
  table.insert(cmdbuf, attr and ' gui=' .. attr or '')
  table.insert(cmdbuf, '\n')
end

-- links from group 1 highlights to group 2
utils.linkfunc = function(group1, group2)
  table.insert(cmdbuf, 'highlight link ')
  table.insert(cmdbuf, group1)
  table.insert(cmdbuf, ' ')
  table.insert(cmdbuf, group2)
  table.insert(cmdbuf, '\n')
end

utils.load_theme = function(options)
  vim.cmd(table.concat(cmdbuf))

  -- TODO: let options override default colors
end

return utils
