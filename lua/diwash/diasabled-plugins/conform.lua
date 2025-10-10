return {
  'stevearc/conform.nvim',
  opts = {
    formatters_by_ft = {
      lua = { "stylua" },
      python = { "black" },
      javascript = { "prettier" },
      typescript = { "prettier" },
      tsx = { "prettier" },
      jsx = { "prettier" },
      html = { "prettier" },
      css = { "prettier" },
      go = { "gofmt" },
    },
    format_on_save = {
      enabled = true,
      lsp_fallback = true,
      async = false,
      timeout_ms = 500,
    },
  },
  config = function(_, opts)
    require("conform").setup(opts)

    -- Manual format buffer
    vim.keymap.set('n', '<leader>cf', function()
      require('conform').format({ async = true })
    end, { desc = "Conform: Format Buffer" })

    -- Format selected lines in visual mode
    vim.keymap.set('v', '<leader>cf', function()
      require('conform').format({ async = true, range = vim.api.nvim_buf_get_mark(0, "<")[1] .. "," .. vim.api.nvim_buf_get_mark(0, ">")[1] })
    end, { desc = "Conform: Format Selection" })
  end,
}
