return {
    "nvim-telescope/telescope.nvim",

    tag = "0.1.8",

    dependencies = {
        "nvim-lua/plenary.nvim"
    },

    config = function()
        require('telescope').setup {
            pickers = {
                find_files = {
                    previewer = false
                }
            }
        }
        vim.keymap.set('n', '<leader>ff', require('telescope.builtin').find_files)
    end
}
