return {
  "folke/tokyonight.nvim",
  lazy = false,
  priority = 1000,
  config = function()
    local transparent = false
    local function apply()
      transparent = not transparent
      require("tokyonight").setup({
        style = "day",
        transparent = transparent,
        terminal_colors = true,
        styles = {
          sidebars = transparent and "transparent" or "normal",
          floats   = transparent and "transparent" or "normal",
        },
      })
      vim.cmd("colorscheme tokyonight")
    end
    apply()

    -- keymap to toggle transparency
    vim.keymap.set("n", "<leader>tt", apply, { desc = "Toggle Tokyonight transparency" })
  end,
}

