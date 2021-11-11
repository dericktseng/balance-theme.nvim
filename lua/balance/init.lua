local function setup()
  if vim.g.colors_name then
    vim.cmd[[hi clear]]
  end

  vim.o.termguicolors = true
  vim.o.background = 'light'
  vim.g.colors_name = 'balance'

  require('balance.theme')
end

return {setup = setup}
