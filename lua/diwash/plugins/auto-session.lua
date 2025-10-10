return {
  "rmagatti/auto-session",
  config = function()
    local auto_session = require("auto-session")

    auto_session.setup({
      auto_restore_enabled = false,
      auto_session_suppress_dirs = { "~/", "~/Dev/", "~/Downloads", "~/Documents", "~/Desktop/" },
    })

    vim.keymap.set("n", "<leader>wr", "<cmd>AutoSession restore<CR>", { desc = "restore session for cwd" })
    vim.keymap.set("n", "<leader>ws", "<cmd>AutoSession save<CR>", { desc = "Save session for auto session root dir" })
    vim.keymap.set("n", "<leader>wv", "<cmd>AutoSession search<CR>", { desc = "Search sessions" })
    vim.keymap.set("n", "<leader>wd", "<cmd><AutoSession deletePicker<CR>", { desc = "Pick and delete a session" })
  end,
}
