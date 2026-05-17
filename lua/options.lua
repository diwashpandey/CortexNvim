local opt = vim.opt

-- Line numbers
opt.number = true
opt.relativenumber = true

-- Indentation
opt.tabstop = 2
opt.shiftwidth = 2
opt.expandtab = true
opt.autoindent = true

-- Search
opt.ignorecase = true
opt.smartcase = true
opt.hlsearch = false

-- UI
opt.termguicolors = true
opt.signcolumn = "yes"
opt.cursorline = true
opt.scrolloff = 8
opt.wrap = false

-- Clipboard
opt.clipboard = "unnamedplus" -- sync with system clipboard

-- Completion
opt.completeopt = "menu,menuone,noselect"

-- Files
opt.swapfile = false
opt.backup = false
opt.undofile = true

vim.diagnostic.config({
  virtual_text = {
    prefix = "●",
    spacing = 4,
  },
  virtual_lines = { current_line = true }, -- shows full error below cursor line only
  signs = true,
  underline = true,
  update_in_insert = false,
})
