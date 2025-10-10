-- nvim-autopairs adds closing brackets, quotes, and parentheses automatically
-- event = "InsertEnter" loads it when you start typing

return {
    "windwp/nvim-autopairs",
    event = "InsertEnter",
    config = function()
        require("nvim-autopairs").setup({
            check_ts = true,       -- treesitter aware
            enable_check_bracket_line = true, -- avoid breaking lines
        })
    end
}
