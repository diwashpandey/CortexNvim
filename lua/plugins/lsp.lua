require("mason").setup()

require("mason-lspconfig").setup({
	ensure_installed = {

    -- Lua Language
		"lua_ls",

    -- HTML, CSS & Tailwind
		"html",
		"cssls",
		"tailwindcss",

    -- Javascript and Typescript
		"ts_ls",

    -- Python language
		"pyright",

    -- Go language
		"gopls",

    -- Docker
    "yamlls",
    "dockerls",

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
	"yamlls",
	"dockerls",
})

vim.keymap.set("n", "gd", vim.lsp.buf.definition)
