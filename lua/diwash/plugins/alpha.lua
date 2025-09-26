-- This one is for the home dashboard
-- Link to generate the ASCII -> https://manytools.org/hacker-tools/ascii-banner/
-- Font Name -> ANSI Shadow

return {
  "goolord/alpha-nvim",
  event = "VimEnter",
  config = function()
    local alpha = require("alpha")
    local dashboard = require("alpha.themes.dashboard")

    -- Set header

    dashboard.section.header.val = {
      "                                                     ",
      "  ███████╗███████╗ ███████ ███████╗  ███████ ██╗████████╗ ██████╗██╗  ██╗ ",
      "  ██╔════╝██╔═══██╗██╔══██╗██╔════╝  ██╔══██╗██║╚══██╔══╝██╔════╝██║  ██║ ",
      "  ██║     ██║   ██║██║  ██║█████╗    ██████╔╝██║   ██║   ██║     ███████║ ",
      "  ██║     ██║   ██║██║  ██║██╔══╝    ██╔══██╗██║   ██║   ██║     ██╔══██║ ",
      "  ╚██████╗╚██████╔╝██████╔╝███████╗  ██████╔╝██║   ██║   ╚██████╗██║  ██║ ",
      "   ╚═════╝ ╚═════╝ ╚═════╝ ╚══════╝  ╚═════╝ ╚═╝   ╚═╝    ╚═════╝╚═╝  ╚═╝ ",
      "                                                     ",
    }

    -- Set menu
    dashboard.section.buttons.val = {
      dashboard.button("e", "  > New File", "<cmd>ene<CR>"),
      dashboard.button("SPC e", "  > Toggle file explorer", "<cmd>NvimTreeToggle<CR>"),
      dashboard.button("SPC ff", "󰱼 > Find File", function() require("fzf-lua").files() end),
      dashboard.button("SPC fs", "  > Find Word", function() require("fzf-lua").live_grep() end),
      dashboard.button("SPC wr", "󰁯  > Restore Session For Current Directory", "<cmd>SessionRestore<CR>"),
      dashboard.button("q", " > Quit NVIM", "<cmd>qa<CR>"),
    }

    -- Send config to alpha
    alpha.setup(dashboard.opts)

    -- Disable folding on alpha buffer
    vim.cmd([[autocmd FileType alpha setlocal nofoldenable]])
  end,
}
