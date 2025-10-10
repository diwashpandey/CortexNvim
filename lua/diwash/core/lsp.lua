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

vim.diagnostic.config({
    -- Inline diagnostics
    virtual_text = {
        -- prefix = "●",        -- small colored dot
        spacing = 2,
        severity = vim.diagnostic.severity.WARN, -- only show warnings+errors inline
        source = false,      -- optional, avoids clutter
    },
    -- virtual_lines = true,    -- full diagnostic message inline
    underline = true,        -- underline problematic code
    signs = true,            -- show signs in gutter
    severity_sort = true,    -- sort errors by severity
    update_in_insert = false, -- don't update while typing

    -- Floating window popup
    float = {
        border = "rounded",
        source = "always",   -- show LSP source
        focusable = false,
        header = "",
        prefix = "",
    },

    -- gutter signs
    signs = {
        active = signs,      -- ensure you define signs below
    },
})

-- define custom gutter signs
local signs = {
    error = "󰅚",
    warn  = "",
    info  = "",
    hint  = "󰌶",
}
for type, icon in pairs(signs) do
    local hl = "diagnosticsign" .. type
    vim.fn.sign_define(hl, { text = icon, texthl = hl, numhl = "" })
end

-- optional: highlight line numbers for errors/warnings
vim.cmd([[
  highlight diagnosticlinenrerror guifg=#f44747 gui=bold
  highlight diagnosticlinenrwarn  guifg=#ff8800 gui=bold
  highlight diagnosticlinenrinfo  guifg=#4fc1ff gui=bold
  highlight diagnosticlinenrhint  guifg=#10b981 gui=bold
]])
