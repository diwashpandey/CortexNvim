return {
  "williamboman/mason-lspconfig.nvim",
  dependencies = { "williamboman/mason.nvim" },
  ensure_installed = {
        "lua_ls",
  },
  automatic_installation = true,
}
