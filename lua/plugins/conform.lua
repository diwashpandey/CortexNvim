require("conform").setup({
	formatters_by_ft = {

		-- Lua
		-- lua = { "stylua" },
		lua = {},

		-- Python
		python = { "ruff_format" },

		-- JS / TS / Web
		javascript = { "prettier" },
		typescript = { "prettier" },
		javascriptreact = { "prettier" },
		typescriptreact = { "prettier" },
		html = { "prettier" },
		css = { "prettier" },
		json = { "prettier" },

		-- Go
		go = { "goimports", "gofumpt" },
		gomod = { "gofmt" },
		gowork = { "gofmt" },
		gosum = {},
	},

	format_on_save = {
		timeout_ms = 1000,
		lsp_format = "fallback",
	},
})
