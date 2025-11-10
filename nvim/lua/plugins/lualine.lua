return {
    {
        'nvim-lualine/lualine.nvim',
        dependencies = { 'nvim-tree/nvim-web-devicons' },

        config = function()
            require("lualine").setup({
                opts = {
                    options = {
                        theme = 'modus-vivendi', 
                        icons_enabled = true,
                        component_separators = { left = '', right = '' },
                        section_separators = { left = '', right = '' }, 
                    },
                }

            })
        end
    }
}
