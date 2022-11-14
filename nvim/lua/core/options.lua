local options = {
  wildignore = '*node_modules/**',
  ignorecase = true,
  smartcase = true,
  mouse = 'a',
  swapfile = false,
  cursorline = true,
  wrap = false,
  clipboard = 'unnamedplus',
  cmdheight = 0,
  completeopt = { 'menuone', 'noselect' },
  fileencoding = 'utf-8',
  fillchars = { eob = ' ' },
  lazyredraw = true,
  scrolloff = 8,
  sidescrolloff = 8,

  -- Indenting
  autoindent = true,
  copyindent = true,
  smartindent = true,
  tabstop = 2,
  softtabstop = 2,
  shiftwidth = 2,
  expandtab = true,
  preserveindent = true,

  -- Numbers
  number = true,
  relativenumber = true,
  numberwidth = 2,
  ruler = false,

  -- Split 
  splitbelow = true,
  splitright = true,
}

local globals = {
  mapleader = ' ',
  loaded = 1,
  loaded_netrwPlugin = 1,
} 

vim.cmd [[autocmd BufEnter * set fo-=c fo-=r fo-=o]]

for k, v in pairs(options) do
  vim.opt[k] = v
end

for k, v in pairs(globals) do
  vim.g[k] = v
end
