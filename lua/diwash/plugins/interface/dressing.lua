-- This plugin improves Neovim UI for prompts and input windows
-- Example: better `:ls` input, nicer `vim.ui.select()` menus, rename, copy, paste, etc.

return {
  'stevearc/dressing.nvim',
  event = "VeryLazy",
  opts = {}
}
