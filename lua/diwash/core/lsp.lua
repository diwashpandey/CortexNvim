vim.lsp.config['cssls'] = {
  cmd = {"vscode-css-language-server", "--stdio"},
  filetypes = {"css", "scss", "less"}
}

vim.lsp.config['gopls'] = {
  cmd = {"gopls"},
  filetypes = {"go"}
}

vim.lsp.config['html'] = {
  cmd = {"vscode-html-language-server", "--stdio"},
  filetypes = {"html"}
}

vim.lsp.config['lua_ls'] = {
  cmd = {"lua-language-server"},
  filetypes = {"lua"}
}

vim.lsp.config['tailwindcss'] = {
  cmd = {"tailwindcss-language-server", "--stdio"},
  filetypes = {"html", "css", "javascript", "typescript", "vue", "svelte"}
}

vim.lsp.config['tsserver'] = {
  cmd = {"typescript-language-server", "--stdio"},
  filetypes = {"javascript", "javascriptreact", "typescript", "typescriptreact"}
}

vim.lsp.config['pyright'] = {
  cmd = {"pyright-langserver", "--stdio"},
  filetypes = {"python"}
}

vim.lsp.enable({
  "tsserver",
  "html",
  "cssls",
  "pyright",
  "gopls",
  "tailwindcss",
  "lua_ls"
})

vim.diagnostic.config({
    virtual_lines = true,
    -- virtual_text = true,
    underline = true,
    update_in_insert = false,
    severity_sort = true,
    float = {
        border = "rounded",
        source = true,
    },
    signs = {
        text = {
            [vim.diagnostic.severity.ERROR] = "󰅚 ",
            [vim.diagnostic.severity.WARN] = "󰀪 ",
            [vim.diagnostic.severity.INFO] = "󰋽 ",
            [vim.diagnostic.severity.HINT] = "󰌶 ",
        },
        numhl = {
            [vim.diagnostic.severity.ERROR] = "ErrorMsg",
            [vim.diagnostic.severity.WARN] = "WarningMsg",
        },
    },
})
