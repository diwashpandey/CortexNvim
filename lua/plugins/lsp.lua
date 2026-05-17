require("mason").setup()

require("mason-lspconfig").setup({
	ensure_installed = {
		"lua_ls",
		"html",
		"cssls",
		"ts_ls",
		"pyright",
		"gopls",
		"tailwindcss",
	},
})

vim.lsp.enable({
	"lua_ls",
	"html",
	"cssls",
	"ts_ls",
	"pyright",
	"gopls",
	"tailwindcss",
})

vim.keymap.set("n", "gd", vim.lsp.buf.definition)
-- vim.api.nvim_create_autocmd("LspAttach", {
-- 	callback = function(args)
-- 		local map = vim.keymap.set
-- 		local opts = { buffer = args.buf }
--
-- 		map("n", "gd", vim.lsp.buf.definition, opts)
-- 		map("n", "gr", vim.lsp.buf.references, opts)
-- 		map("n", "K", vim.lsp.buf.hover, opts)
-- 		map("n", "<leader>rn", vim.lsp.buf.rename, opts)
-- 		map("n", "<leader>ca", vim.lsp.buf.code_action, opts)
-- 		map("n", "<leader>e", vim.diagnostic.open_float, opts)
-- 	end,
-- })
