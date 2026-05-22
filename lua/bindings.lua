vim.g.mapleader = " "

local map = vim.keymap.set

--------------------
--- Normal Mode ----
--------------------
map("i", "jj", "<Esc>", { noremap = true, silent = true })


----------------
--- Windows ----
----------------
map("n", "<leader>wv", "<C-w>v", { desc = "Vertical split" })
map("n", "<leader>wh", "<C-w>s", { desc = "Horizontal split" })
map("n", "<leader>wq", "<C-w>q", { desc = "Close window" })

vim.keymap.set("n", "<leader>wh", "<C-w>h", { desc = "Go to left window" })
vim.keymap.set("n", "<leader>wj", "<C-w>j", { desc = "Go to lower window" })
vim.keymap.set("n", "<leader>wk", "<C-w>k", { desc = "Go to upper window" })
vim.keymap.set("n", "<leader>wl", "<C-w>l", { desc = "Go to right window" })

vim.keymap.set("n", "<leader>h", "<C-w>h", { desc = "Move to left split" })
vim.keymap.set("n", "<leader>j", "<C-w>j", { desc = "Move to lower split" })
vim.keymap.set("n", "<leader>k", "<C-w>k", { desc = "Move to upper split" })
vim.keymap.set("n", "<leader>l", "<C-w>l", { desc = "Move to right split" })

----------------
--- Buffers ----
----------------
map("n", "<leader>bn", "<cmd>bnext<cr>", { desc = "Next buffer" })
map("n", "<leader>bp", "<cmd>bprev<cr>", { desc = "Prev buffer" })
map("n", "<leader>bd", "<cmd>bdelete<cr>", { desc = "Delete buffer" })
map("n", "<S-h>", "<cmd>bprevious<CR>", { desc = "Previous buffer" })
map("n", "<S-l>", "<cmd>bnext<CR>", { desc = "Next buffer" })

-------------------
--- Move Lines ----
-------------------
map("n", "<A-j>", ":m .+1<CR>==", { silent = true })
map("n", "<A-k>", ":m .-2<CR>==", { silent = true })

map("v", "<A-j>", ":m '>+1<CR>gv=gv", { silent = true })
map("v", "<A-k>", ":m '<-2<CR>gv=gv", { silent = true })

------------------
--- Better Indent ----
------------------
map("v", "<", "<gv", { desc = "Indent left" })
map("v", ">", ">gv", { desc = "Indent right" })

-------------------
--- Diagnostic ----
-------------------
map("n", "<leader>ud", function()
  local config = vim.diagnostic.config()
  vim.diagnostic.config({ virtual_lines = not config.virtual_lines })
end, { desc = "Toggle diagnostics" })
