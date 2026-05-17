require("bufferline").setup({
  options = {
    diagnostics = "nvim_lsp",
    separator_style = "slant",
    offsets = {
      {
        filetype = "snacks_layout_box",
        text = "Explorer",
        separator = true,
      },
    },
  },
})
