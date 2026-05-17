vim.pack.add({
  ------------
  -- Theme ---
  ------------
  { src = "https://github.com/catppuccin/nvim" },

  ------------
  -- LSP ---
  ------------
  { src = "https://github.com/nvim-treesitter/nvim-treesitter" },
  { src = "https://github.com/saghen/blink.cmp",               version = "v1" },
  { src = "https://github.com/stevearc/conform.nvim" },
  { src = "https://github.com/mason-org/mason.nvim" },
  { src = "https://github.com/mason-org/mason-lspconfig.nvim" },
  { src = "https://github.com/neovim/nvim-lspconfig" },

  --------------------
  -- Functionality ---
  --------------------
  { src = "https://github.com/stevearc/oil.nvim" },
  { src = "https://github.com/lewis6991/gitsigns.nvim" },

  ---------
  -- UI ---
  ---------
  -- { src = "https://github.com/nvim-tree/nvim-web-devicons" },
  { src = "https://github.com/nvim-mini/mini.icons" }, --- dependency for all of em

  { src = "https://github.com/folke/which-key.nvim" },
  { src = "https://github.com/folke/snacks.nvim" },

  { src = "https://github.com/MunifTanjim/nui.nvim" }, --- dependency for noice.nvim
  { src = "https://github.com/rcarriga/nvim-notify" },
  { src = "https://github.com/folke/noice.nvim" },
  { src = "https://github.com/nvim-lualine/lualine.nvim" },
})

require("plugins/theme")
require("plugins/lsp")
require("plugins/treesitter")
require("plugins/blink")
require("plugins/conform")
require("plugins/whichkey")
require("plugins/snacks")
require("plugins/noice")
require("plugins/oil")
require("plugins/icons")
require("plugins/lualine")
