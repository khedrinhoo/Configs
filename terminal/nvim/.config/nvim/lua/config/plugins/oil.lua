return {
   
    'stevearc/oil.nvim',

    opts = {},

    dependencies = { { "echasnovski/mini.icons", opts = {} } },

    lazy = false,

    config = function()

        vim.keymap.set("n", "<leader>oo", "<CMD>Oil<CR>", { desc = "Open parent directory" })

        require("oil").setup({
            view_options = {
                show_hidden = true,
            },
            columns = {
                "icon",
            },
            float = {
                max_width = 80,
                max_height = 40,
            },
            keymaps = {
                ["<C-v>"] = "actions.select_vsplit",
                ["<C-i>"] = "actions.select_split",
                ["q"] = "actions.close",
                ["-"] = "actions.open_cwd",
                ["_"] = "actions.parent",
            },
            skip_confirm_for_simple_edits = true,
        })
    end
}
