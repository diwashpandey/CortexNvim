
local signs = {
    Error = "󰅚",
    Warn  = "",
    Info  = "",
    Hint  = "󰌶",
}
for type, icon in pairs(signs) do
    local hl = "DiagnosticSign" .. type
    vim.fn.sign_define(hl, { text = icon, texthl = hl, numhl = "" })
end

-- 2️⃣ Configure diagnostics
vim.diagnostic.config({
    virtual_text = false,   -- don't show inline text
    signs = true,           -- show gutter signs
    underline = true,       -- underline errors/warnings
    severity_sort = true,
    update_in_insert = false,
    float = {
        border = "rounded",
        source = "always",
        focusable = true,   -- allow interaction
        header = "",
        prefix = "",
    },
})

-- 3️⃣ Keymap to open floating diagnostic on demand
-- Use Ctrl+Space to show the floating popup at cursor
vim.api.nvim_set_keymap(
    "n",
    "<C-Space>",
    "<cmd>lua vim.diagnostic.open_float(nil, { focusable = true })<CR>",
    { noremap = true, silent = true }
)

