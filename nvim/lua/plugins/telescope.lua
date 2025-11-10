return {
    {
        "nvim-telescope/telescope.nvim",

        tag = "0.1.8",

        dependencies = {
            "nvim-lua/plenary.nvim"
        },

        config = function()

            require('telescope').setup({
                pickers = {
                    find_files = {
                        previewer = false,
                    },
                }

            })

            local builtin = require('telescope.builtin')
            vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
            vim.keymap.set('n', '<C-p>', builtin.git_files, {})

        end
    },
}
