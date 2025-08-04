return {
    {
        'saghen/blink.cmp',

        dependencies = 'rafamadriz/friendly-snippets',

        version = 'v0.*',

        opts = {

            keymap = {
                preset = 'default',
                ["<CR>"] = {
                    "accept",
                    "fallback",
                },
                ["<C><leader>"] = { "show" },
            },

            appearance = {
                use_nvim_cmp_as_default = true,
                nerd_font_variant = 'mono'
            },

            signature = { enabled = true },

            sources = {
                default = {
                    'lsp',
                    'path',
                    'snippets',
                    'buffer',
                },
            },
        },
    },
}
