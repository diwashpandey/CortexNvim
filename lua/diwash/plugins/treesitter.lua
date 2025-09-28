return {
  "nvim-treesitter/nvim-treesitter",
  event = { "BufReadPost", "BufNewFile" },
  build = ":TSUpdate",
  config = function()
    require("nvim-treesitter.configs").setup({
      ensure_installed = {
        "python",
        "javascript",
        "typescript",
        "tsx",
        "go",
        "html",
        "css",
        "scss",
        "json",
        "yaml",
        "bash",
        "lua",
      },
      highlight = {
        enable = true,
      },
      indent = {
        enable = true,
      },
      incremental_selection = {
        enable = true,
        keymaps = {
          init_selection = "<CR>",       -- Press enter to start selection
          node_incremental = "<CR>",     -- Expand selection
          node_decremental = "<BS>",     -- Shrink selection
          scope_incremental = "<TAB>",   -- Select entire scope
        },
      },
      textobjects = {
        select = {
          enable = true,
          lookahead = true,
          keymaps = {
            ["af"] = "@function.outer", -- Whole function
            ["if"] = "@function.inner", -- Inside function
            ["ac"] = "@class.outer",    -- Whole class
            ["ic"] = "@class.inner",    -- Inside class
          },
        },
        move = {
          enable = true,
          set_jumps = true,
          goto_next_start = {
            ["]m"] = "@function.outer",
            ["]]"] = "@class.outer",
          },
          goto_previous_start = {
            ["[m"] = "@function.outer",
            ["[["] = "@class.outer",
          },
        },
      },
    })
  end,
}
