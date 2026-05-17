local mocha = require("catppuccin.palettes").get_palette("mocha")
local theme = require("lualine.themes.auto")

theme.normal.a = {
  bg = mocha.mauve,
  fg = mocha.base,
  gui = "bold",
}

theme.normal.b = {
  bg = mocha.non,
  fg = mocha.mauve,
}


require("lualine").setup({
  options = {
    theme = theme,
    globalstatus = true,
    component_separators = { left = "", right = "" }, -- Removing buffer tab separators
    section_separators = { left = "", right = "" },
  },
  sections = {
    lualine_a = { "mode" },
    lualine_b = { "branch" },
    lualine_c = {
      {
        "buffers",
        mode = 2,
        -- buffers_color = {
        --   active = {
        --     fg = mocha.text, -- same as theme.normal.a bg
        --     bg = mocha.base,
        --     gui = "bold",
        --   },
        --   inactive = {
        --     fg = mocha.overlay0,
        --     bg = mocha.base,
        --   },
        -- },
        symbols = {
          modified = " ●",
          alternate_file = "",
          directory = "",
        },
      },
    },

    -- lualine_x = {},
    -- lualine_y = {},
    -- lualine_z = {},
  },
})
