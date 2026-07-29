local ts = require("nvim-treesitter")

ts.setup()

ts.install({
  -- lua
  "lua",

  -- python
  "python",

  -- js, ts, html, css, json
  "javascript",
  "typescript",
  "tsx",
  "html",
  "css",
  "json",

  -- yaml
  "yaml",

  -- docker
  "dockerfile",

  -- go language
  "go",
  "gomod",
  "gowork",
  "gosum",
})


-------------------------------------------------
----- Calling the built in treesitter of nvim----
-------------------------------------------------

vim.api.nvim_create_autocmd("FileType", {
  callback = function(args)
    pcall(vim.treesitter.start, args.buf)
  end,
})
