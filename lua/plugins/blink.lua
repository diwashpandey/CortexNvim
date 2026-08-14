-------------------------------
--- The Suggestion Dropdown ---
-------------------------------
require("blink.cmp").setup({
  keymap = {
    preset = "default",

    ["<C-space>"] = { "show", "show_documentation", "hide_documentation" },
    ["<C-@>"] = { "show", "show_documentation", "hide_documentation" },

    ["<Tab>"] = { "select_next", "fallback" },
    ["<S-Tab>"] = { "select_prev", "fallback" },

    ["<CR>"] = { "accept", "fallback" },
  },

  completion = {
    menu = {
      auto_show = true,
    },

    list = {
      selection = {
        preselect = false,
        auto_insert = false,
      },
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
vim.keymap.set("n", "gh", function()
  vim.lsp.buf.hover({
    border = "rounded",
  })
end, {
  desc = "LSP Hover Docs",
})
