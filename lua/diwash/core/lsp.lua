vim.lsp.config['cssls'] = {
  cmd = { "vscode-css-language-server", "--stdio" },
  filetypes = { "css", "scss", "less" }
}

vim.lsp.config['gopls'] = {
  cmd = { "gopls" },
  filetypes = { "go" }
}

vim.lsp.config['html'] = {
  cmd = { "vscode-html-language-server", "--stdio" },
  filetypes = { "html" }
}

vim.lsp.config['lua_ls'] = {
  cmd = { "lua-language-server" },
  filetypes = { "lua" }
}

vim.lsp.config['tailwindcss'] = {
  cmd = { "tailwindcss-language-server", "--stdio" },
  filetypes = { "html", "css", "javascript", "typescript", "vue", "svelte" }
}

vim.lsp.config['tsserver'] = {
  cmd = { "typescript-language-server", "--stdio" },
  filetypes = { "javascript", "javascriptreact", "typescript", "typescriptreact" }
}

vim.lsp.config['pyright'] = {
  cmd = { "pyright-langserver", "--stdio" },
  filetypes = { "python" }
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
