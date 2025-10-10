return {
  "nvimtools/none-ls.nvim",
  dependencies = { "nvim-lua/plenary.nvim" },
  config = function()
    local null_ls = require("null-ls")

    null_ls.setup({
      sources = {
        -- Python
        null_ls.builtins.formatting.black,
        null_ls.builtins.diagnostics.flake8,

        -- JavaScript / TypeScript / React
        null_ls.builtins.formatting.prettier,
        null_ls.builtins.diagnostics.eslint_d,

        -- Go
        null_ls.builtins.formatting.goimports,
        null_ls.builtins.diagnostics.golangci_lint,

        -- HTML / CSS / Tailwind
        null_ls.builtins.formatting.prettier,
        null_ls.builtins.diagnostics.stylelint,
      },
    })

    vim.keymap.set("n", "<leader>gf", vim.lsp.buf.format, { desc = "Format current buffer" })
  end

}
