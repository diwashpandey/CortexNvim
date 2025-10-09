-- For the treestructure
vim.g.newrw_lifestyle = 3

-- Numbers
vim.opt.number = true
vim.opt.relativenumber = true

-- Tabs & Intendation
vim.opt.tabstop = 2 -- 2 spaces for tabs
vim.opt.shiftwidth = 2 -- 2 spaces for indent width
vim.opt.expandtab = true -- expand tab to spaces
vim.opt.autoindent = true -- copy indent from current line when starting new one

-- search settings
vim.opt.ignorecase = true
vim.opt.smartcase = true -- searches with case sensitive if you use capital letter

-- turn on termguicolors for tokyonight colorscheme to work
vim.opt.termguicolors = true
vim.opt.background = "dark"
vim.opt.signcolumn = "yes" -- can see marks on lines (warnings, gits stuffs, etc)
vim.opt.winborder = "rounded"

-- Transparent Background
-- vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
-- vim.api.nvim_set_hl(0, "NormalNC", { bg = "none" }) -- Keeps inactive windows transparent.
-- vim.api.nvim_set_hl(0, "LineNr", { bg = "none" }) -- Line Number Bar on left side
-- vim.api.nvim_set_hl(0, "CursorLineNr", { bg = "none" }) -- Current line number
-- vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" }) -- Floating windows (Telescope, File Finder, etc)
-- vim.api.nvim_set_hl(0, "FloatBorder", { bg = "none" }) -- Border or edges of floating windows
-- vim.api.nvim_set_hl(0, "SignColumn", { bg = "none" }) -- The left-side column showing git/LSP/debug symbols (like +, -, !, breakpoints)

--backspace
vim.opt.backspace = "indent,eol,start"

-- Clipboard
vim.opt.clipboard:append("unnamedplus") -- connect with windows clipboard(copy/paste/etc)
