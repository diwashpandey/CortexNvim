-------------------------------
--- The Suggestion Dropdown ---
-------------------------------
require("blink.cmp").setup({
  keymap = {
    preset = "default",
    ["<CR>"] = { "accept", "fallback" },
  },

  completion = {
    menu = {
      auto_show = true,
    },
    documentation = {
      auto_show = true,
      auto_show_delay_ms = 300,
    },
  },
})


-------------------------------
--- Vim Built in Hover Docs ---
-------------------------------
vim.keymap.set("n", "<leader>h", function()
  vim.lsp.buf.hover({
    border = "rounded",
  })
end, {
  desc = "LSP Hover Docs",
})
