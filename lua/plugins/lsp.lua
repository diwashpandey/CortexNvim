require("mason").setup()

require("mason-lspconfig").setup({
  ensure_installed = {

    -- Lua Language
    "lua_ls",

    -- HTML, CSS & Tailwind
    "html",
    "cssls",
    "tailwindcss",

    -- Javascript and Typescript
    "ts_ls",

    -- Python language
    "pyright",

    -- Go language
    "gopls",

    -- Docker
    "yamlls",
    "dockerls",

    -- SQL
    "sqls",
  },
})

-- ************* IMPORTANT ***********
-- Make sure you install these formatters in Mason:
--
--
----- For Lua
-- 1. stylua
--
--
----- For JS/ TS / Web
-- 2. Preetier
--
--
----- For Python
-- 3. Ruff
--
--
----- For Go
--- 4. gofumpt
--- 5. goimports
--- 6. delve
---
---
--- Docker 
--- 7. dockerfmt
---
---
--- SQL
--- 8. sql-formatter

vim.lsp.enable({
  "lua_ls",
  "html",
  "cssls",
  "ts_ls",
  "pyright",
  "gopls",
  "tailwindcss",
  "yamlls",
  "dockerls",
  "sqls",
})

vim.keymap.set("n", "gd", vim.lsp.buf.definition)
