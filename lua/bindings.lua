vim.g.mapleader = " "

local map = vim.keymap.set

--------------------
--- Normal Mode ----
--------------------
map("i", "jj", "<Esc>", { noremap = true, silent = true })

----------------
--- Panes (Windows) ----
----------------
map("n", "<leader>pv", "<C-w>v", { desc = "Vertical split" })
map("n", "<leader>ph", "<C-w>s", { desc = "Horizontal split" })
map("n", "<leader>pq", "<C-w>q", { desc = "Close window" })

map("n", "<leader>h", "<C-w>h", { desc = "Move to left split" })
map("n", "<leader>j", "<C-w>j", { desc = "Move to lower split" })
map("n", "<leader>k", "<C-w>k", { desc = "Move to upper split" })
map("n", "<leader>l", "<C-w>l", { desc = "Move to right split" })

----------------
--- Tabs(Buffers) ----
----------------
map("n", "<leader>tl", "<cmd>bnext<cr>", { desc = "Next buffer" })
map("n", "<leader>th", "<cmd>bprev<cr>", { desc = "Prev buffer" })
map("n", "<leader>tq", "<cmd>bdelete<cr>", { desc = "Quit buffer" })

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
