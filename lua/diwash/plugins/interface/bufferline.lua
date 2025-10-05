return {
        "akinsho/bufferline.nvim",
        dependencies = "nvim-tree/nvim-web-devicons",
        config = function()
            require("bufferline").setup{
                options = {
                    numbers = "ordinal",       -- show buffer numbers
                    separator_style = {"", ""}, -- change separator style
                    offsets = {{filetype = "NvimTree", text = "Explorer", padding = 1}}, -- NvimTree offset
                    tab_size=18,
                }
            }

            -- make bufferline transparent
            vim.api.nvim_set_hl(0, "BufferLineFill", {bg = "NONE"})
            vim.api.nvim_set_hl(0, "BufferLineBackground", {bg = "NONE"})
            vim.api.nvim_set_hl(0, "BufferLineSeparator", {bg = "NONE"})
            vim.api.nvim_set_hl(0, "BufferLineSeparatorSelected", {bg = "NONE"})
            vim.api.nvim_set_hl(0, "BufferLineIndicatorSelected", {bg = "NONE"})

            -- Navigations
            vim.keymap.set('n', '<leader>b[', '<cmd>BufferLineCyclePrev<CR>') -- Go to previous buffer
            vim.keymap.set('n', '<leader>b]', '<cmd>BufferLineCycleNext<CR>') -- Go to next buffer

            -- Jump to buffer number 1-9
            for i = 1, 9 do
              vim.keymap.set('n', '<leader>b' .. i, '<cmd>BufferLineGoToBuffer ' .. i .. '<CR>')
            end

            -- Delete/close current buffer
            vim.keymap.set('n', '<leader>bx', '<cmd>bdelete<CR>') -- bdelete is nvim ommand
          end
}
