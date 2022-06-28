-- setup function. currently option doesn't work
local function setup(options)
  -- initial boilerplate
  vim.cmd[[hi clear]]
  if vim.fn.exists('syntax on') then
    vim.cmd[[syntax reset]]
  end

  vim.o.termguicolors = true
  vim.o.background = 'light'
  vim.g.colors_name = 'balance'
  require('balance.theme').setup(options)
end

return {setup = setup}
