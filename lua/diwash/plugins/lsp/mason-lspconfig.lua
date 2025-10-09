return {
  "williamboman/mason-lspconfig.nvim",
  dependencies = { "williamboman/mason.nvim" },
  ensure_installed = {
        "tsserver",
        "pyright",
        "gopls",
        "html",
        "cssls",
        "tailwindcss",
        "lua_ls",
  },
  automatic_installation = true,
}
