-- nvim-autopairs adds closing brackets, quotes, and parentheses automatically
-- event = "InsertEnter" loads it when you start typing

return {
  {
    "windwp/nvim-autopairs",
    event = "InsertEnter",
    dependencies = { "nvim-cmp" },
    config = function()
      local npairs = require("nvim-autopairs")
      npairs.setup({
        check_ts = true, -- use Treesitter to avoid pairs in strings/comments
        enable_check_bracket_line = true,
      })

      -- cmp + autopairs integration
      local cmp = require("cmp")
      local cmp_autopairs = require("nvim-autopairs.completion.cmp")
      cmp.event:on(
        "confirm_done",
        cmp_autopairs.on_confirm_done({
          map_char = { all = "(" }, -- insert () after function completion
        })
      )
    end,
  },
}
