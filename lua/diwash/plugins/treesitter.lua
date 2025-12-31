return {
  "nvim-treesitter/nvim-treesitter",
  branch = "main",
  lazy = false,
  build = ":TSUpdate",
  config = function()
    -- Setup the new minimal Treesitter (no old configs)
    require("nvim-treesitter").setup {
      -- optional parser install dir, adjust if needed
      install_dir = vim.fn.stdpath("data") .. "/site",
    }

    -- Manually install languages you want (can be async)
    require("nvim-treesitter").install { "python", "javascript", "typescript", "go", "lua", "bash", "html", "css", "json", "yaml" }

    -- Enable highlighting using Neovim built-in treesitter start
    vim.api.nvim_create_autocmd("FileType", {
      pattern = "*",
      callback = function()
        pcall(vim.treesitter.start)
      end,
    })
  end,
}
