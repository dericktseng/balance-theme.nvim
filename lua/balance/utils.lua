local utils = {}

-- highlight command
local cmdbuf = {}

-- highlighting function. AT LEAST ONE OF fg, bg, attr, attrsp MUST NOT BE NIL
utils.highlightfunc = function(group, fg, bg, attr, attrsp)
  table.insert(cmdbuf, 'highlight ' .. group)
  table.insert(cmdbuf, fg and ' guifg=' .. fg or '')
  table.insert(cmdbuf, bg and ' guibg=' .. bg or '')
  table.insert(cmdbuf, attr and ' gui=' .. attr or '')
  table.insert(cmdbuf, attrsp and ' guisp=' .. attrsp or '')
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

-- merges the options opt2 into opt1
utils.merge_opts = function(opt1, opt2)
  if opt2 then
    utils.shallow_table_merge(opt1.attr, opt2.attr)
    utils.shallow_table_merge(opt1.color, opt2.color)
  end
end

-- shallow table merge
utils.shallow_table_merge = function(t1, t2)
  if t2 and t1 then
    for i, v in pairs(t2) do
      t1[i] = v
    end
  end
end

-- loads theme
utils.load_theme = function(options)
  vim.cmd(table.concat(cmdbuf))
end

return utils
