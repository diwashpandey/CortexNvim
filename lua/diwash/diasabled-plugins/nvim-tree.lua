return {
  "nvim-tree/nvim-tree.lua",
  version = "*",
  lazy = false,
  dependencies = {
    "nvim-tree/nvim-web-devicons",
  },
  config = function()
    require("nvim-tree").setup({
      sync_root_with_cwd = true,
      respect_buf_cwd = true,
      update_focused_file = {
        enable = true,
        update_root = true,
      },
      view = {
        side = "right",
        width = 50,
        relativenumber = true,
      },
      renderer = {
        indent_markers = {
          enable = true,
          icons = {
            corner = "└───",
            edge = "│ ",
            item = "├────",
            none = "  ",
          },
        },
        icons = {
          show = {
            file = false,
            folder = false,
            folder_arrow = false,
            git = false,
          },
        },
      },
      actions = {
        open_file = {
          window_picker = {
            enable = false,
          },
        },
      },
      git = {
        ignore = false,
      },
    })

    vim.keymap.set("n", "<leader>e", "<cmd>NvimTreeToggle<CR>", { desc = "Toggle file explorer" })
    vim.keymap.set("n", "<leader>E", "<cmd>NvimTreeFocus<CR>", { desc = "Focus file explorer" })
    vim.keymap.set("n", "<leader>fe", "<cmd>NvimTreeFindFileToggle<CR>", { desc = "Toggle file explorer on current file" })
    vim.keymap.set("n", "<leader>ce", "<cmd>NvimTreeCollapse<CR>", { desc = "Collapse file explorer" })
    vim.keymap.set("n", "<leader>re", "<cmd>NvimTreeRefresh<CR>", { desc = "Refresh file explorer" })
  end,
}
