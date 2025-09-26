-- Things to install in system:
-- 1. fzf       -> Fuzzy finder program, needed to quickly search files
-- 2. ripgrep   -> Fast text search, required for live_grep to search text inside files
--
-- On Windows:
-- - Find fzf.exe by running `where fzf` in CMD
-- - Add that folder to the line below so Neovim can find fzf

vim.env.PATH = vim.env.PATH .. ";C:\\Users\\diwas\\AppData\\Local\\Microsoft\\WinGet\\Packages\\junegunn.fzf_Microsoft.Winget.Source_8wekyb3d8bbwe"

return {
  "ibhagwan/fzf-lua",
  dependencies = { "nvim-tree/nvim-web-devicons" },
  opts = {},
  keys = {
    {
      "<leader>ff",
      function() require("fzf-lua").files() end,
      desc = "Find files in cwd"
    },
    {
      "<leader>fg",
      function() require("fzf-lua").live_grep() end, -- > This is where we need the ripgrep
      desc = "Find by grepping current working directory"
    },
    {
      "<leader>fc", -- > Find file in config files (No matter where you are)
      function() require("fzf-lua").files({cwd = vim.fn.stdpath("config")}) end, 
      desc = "Find by nvim config directory"
    },
    {
      "<leader>fq", -- > Open quick fix list
      function() require("fzf-lua").quickfix() end, 
      desc = "Find by Quick Fix List"
    },
    {
      "<leader>fh", -- > Open quick fix list
      function() require("fzf-lua").helptags() end, 
      desc = "[F]ind [H]help"
    },
    
  }
}
