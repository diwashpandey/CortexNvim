return {
  "NLKNguyen/papercolor-theme",
  lazy = false,
  config = function()
    print("I'm here hai taa") 
    vim.cmd("colorscheme PaperColor")
    
    -- Transparent Background
    vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
    vim.api.nvim_set_hl(0, "NormalNC", { bg = "none" }) -- Keeps inactive windows transparent.
    vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" }) -- Floating windows (Telescope, File Finder, etc)
    vim.api.nvim_set_hl(0, "FloatBorder", { bg = "none" }) -- Border or edges of floating windows
    vim.api.nvim_set_hl(0, "SignColumn", { bg = "none" }) -- The left-side column showing git/LSP/debug symbols (like +, -, !, breakpoints)

  
  end,
}

