return {
  {
    "numToStr/Comment.nvim",
    dependencies = {
      "JoosepAlviste/nvim-ts-context-commentstring"
    },
    config = function()
      local ts_comment = require("ts_context_commentstring.integrations.comment_nvim")

      require("Comment").setup({
        pre_hook = ts_comment.create_pre_hook(), -- Treesitter-aware comments
      })
    end,
  },
}
