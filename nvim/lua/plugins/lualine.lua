
return {
    {
        'nvim-lualine/lualine.nvim',
        dependencies = { 'nvim-tree/nvim-web-devicons' },
        config = function()
            require('lualine').setup({
                icons_enabled = true,
                theme = 'modus-vivendi',
                options = { section_separators = '', component_separators = '' }
            })
        end
    },
}
