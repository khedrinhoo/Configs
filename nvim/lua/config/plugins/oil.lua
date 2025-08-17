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
                max_width = 70,
                max_height = 20,
            },
            win_options = {
                winfixwidth = true,
            },
            keymaps = {
                ["q"] = "actions.close",
                ["-"] = "actions.parent",
            },
            skip_confirm_for_simple_edits = true,
            default_file_explorer = true,
        })
    end
}
