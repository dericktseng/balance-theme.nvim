local attr = require('balance.attr')
local color = require('balance.colors')
local utils = require('balance.utils')

-- the default options to load. Users can modify this by supplying their own options.
local default_opt = {
  attr = attr,
  color = color
}

-- setup function. currently option doesn't work
local function setup(user_opt)
  -- initial boilerplate
  vim.cmd("hi clear")

  if vim.fn.exists('syntax on') then
    vim.cmd('syntax reset')
  end

  vim.o.termguicolors = true
  vim.o.background = 'light'
  vim.g.colors_name = 'balance'

  -- load user-supplied options, if they exist
  local opt = default_opt
  utils.merge_opts(opt, user_opt)

  require('balance.theme').setup(opt)
end

return {setup = setup}
