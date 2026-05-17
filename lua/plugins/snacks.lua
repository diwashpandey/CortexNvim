require("snacks").setup({
  bigfile = { enabled = false },
  dashboard = { enabled = false },

  explorer = {
    enabled = true,
    position = "right",
  },

  indent = { enabled = true },
  input = { enabled = true },
  picker = {
    enabled = true,
    layout = {
      preset = "telescope", -- options: "default", "telescope", "ivy", "vertical", "sidebar"
    },
    sources = {
      explorer = {
        auto_close = true,
        layout = {
          layout = {
            position = "right",
          },
        },
      },
    },
  },
  notifier = { enabled = true },
  quickfile = { enabled = false },
  scope = { enabled = true },
  scroll = { enabled = true },
  statuscolumn = { enabled = true },
  words = { enabled = true },
  terminal = { enabled = true },

})

local map = vim.keymap.set
map("n", "<leader>ff", function() Snacks.picker.files() end, { desc = "Find Files" })
map("n", "<leader>f/", function() Snacks.picker.grep() end, { desc = "Live Grep" })
map("n", "<leader>fb", function() Snacks.picker.buffers() end, { desc = "Buffers" })
map("n", "<leader>fr", function() Snacks.picker.recent() end, { desc = "Recent Files" })
map("n", "<leader>fc", function() Snacks.picker.files({ cwd = vim.fn.stdpath("config") }) end,
  { desc = "Find Config File" })

map("n", "<leader>ee", function() Snacks.explorer() end, { desc = "File Explorer" })
map({ "n", "t" }, "<C-/>", function() Snacks.terminal() end, { desc = "Toggle Terminal" })
map({ "n", "t" }, "<C-_>", function() Snacks.terminal() end, { desc = "which_key_ignore" })


map("n", "<leader>n", function() Snacks.notifier.show_history() end, { desc = "Notifications" })
map("n", "<leader>un", function() Snacks.notifier.hide() end, { desc = "Dismiss Notifications" })

map("n", "gd", function() Snacks.picker.lsp_definitions() end, { desc = "Goto Definition" })
map("n", "gr", function() Snacks.picker.lsp_references() end, { desc = "References" })
map("n", "gI", function() Snacks.picker.lsp_implementations() end, { desc = "Goto Implementation" })
map("n", "]]", function() Snacks.words.jump(vim.v.count1) end, { desc = "Next Reference" })
map("n", "[[", function() Snacks.words.jump(-vim.v.count1) end, { desc = "Prev Reference" })
