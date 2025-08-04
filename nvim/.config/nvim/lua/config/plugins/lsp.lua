return {
    {
        "neovim/nvim-lspconfig",
        dependencies = {
            "mason-org/mason.nvim",
            "mason-org/mason-lspconfig.nvim",
        },

        opts = {
            servers = {
                lua_ls = {
                    settings = {
                        Lua = {
                            diagnostics = {
                                globals = { "vim" },
                            }
                        }
                    }
                }
            }
        },

        config = function(_, opts)
            require("mason").setup()

            require("mason-lspconfig").setup({
                ensure_installed = {
                    "lua_ls",
                },

            })

            for server, config in pairs(opts.servers) do
                vim.lsp.config(server, config)
                vim.lsp.enable(server)
            end

            vim.diagnostic.config({
                virtual_text = true,
            })

            vim.keymap.set('n', 'gd', vim.lsp.buf.definition, { noremap = true, silent = true })
            vim.keymap.set('n', 'gh', vim.lsp.buf.hover, { noremap = true, silent = true })
            vim.keymap.set('n', 'gi', vim.lsp.buf.implementation, { noremap = true, silent = true })
            vim.keymap.set('n', 'gr', vim.lsp.buf.references, { noremap = true, silent = true })
        end
    },
}
