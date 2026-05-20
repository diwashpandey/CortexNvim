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
map("n", "<leader>ws", "<C-w>s", { desc = "Horizontal split" })
map("n", "<leader>wq", "<C-w>q", { desc = "Close window" })
map("n", "<C-h>", "<C-w>h", { desc = "Window left" })
map("n", "<C-j>", "<C-w>j", { desc = "Window down" })
map("n", "<C-k>", "<C-w>k", { desc = "Window up" })
map("n", "<C-l>", "<C-w>l", { desc = "Window right" })

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
