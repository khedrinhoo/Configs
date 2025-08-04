return {
    {
        "j-hui/fidget.nvim",
        opts = {},

        config = function()
            require('fidget').setup({
                notification = {
                    window = {
                        winblend = 0,
                    },
                },
            })
        end
    }
}
