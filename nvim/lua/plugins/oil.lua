
return {
    {
        'stevearc/oil.nvim',
        ---@module 'oil'
        ---@type oil.SetupOpts
        opts = {},
        dependencies = { { "nvim-mini/mini.icons", opts = {} } },
        lazy = false,
        config = function()
            vim.keymap.set("n", "<leader>o", "<CMD>Oil<CR>")
            require("oil").setup()
        end
    }
}
