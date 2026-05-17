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

local vt_enabled = true


---------------------
--- Disgnostics -----
---------------------

vim.diagnostic.config({
  virtual_text = false,
  virtual_lines = { current_line = true },
  signs = false,
  underline = true,
  update_in_insert = false,
  severity_sort = true,
})

vim.api.nvim_set_hl(0, "DiagnosticUnderlineError", {
  underline = false,
  undercurl = true,
  sp = "#f38ba8", -- red
})

vim.api.nvim_set_hl(0, "DiagnosticUnderlineWarn", {
  underline = false,
  undercurl = true,
  sp = "#f9e2af", -- yellow
})

vim.api.nvim_set_hl(0, "DiagnosticUnderlineInfo", {
  underline = false,
  undercurl = true,
  sp = "#89b4fa", -- blue
})

vim.api.nvim_set_hl(0, "DiagnosticUnderlineHint", {
  underline = false,
  undercurl = true,
  sp = "#a6e3a1", -- green
})
