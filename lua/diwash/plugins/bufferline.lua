return {
        "akinsho/bufferline.nvim",
        dependencies = "nvim-tree/nvim-web-devicons",
        config = function()
            require("bufferline").setup{
                options = {
                    numbers = "ordinal",       -- show buffer numbers
                    separator_style = "slant", -- change separator style
                    offsets = {{filetype = "NvimTree", text = "Explorer", padding = 1}}, -- NvimTree offset
                }
            }

            -- make bufferline transparent
            vim.api.nvim_set_hl(0, "BufferLineFill",       {bg = "NONE"})
            vim.api.nvim_set_hl(0, "BufferLineBackground", {bg = "NONE"})
            vim.api.nvim_set_hl(0, "BufferLineSeparator",  {bg = "NONE"})
            vim.api.nvim_set_hl(0, "BufferLineSeparatorSelected", {bg = "NONE"})
            vim.api.nvim_set_hl(0, "BufferLineIndicatorSelected", {bg = "NONE"})
          end
}
