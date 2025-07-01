return {
    "nvim-neorg/neorg",
    lazy = false, 
    version = "*",
    config = true,

    config = function()
        require("neorg").setup({
            load = {
                ["core.defaults"] = {},
                ["core.concealer"] = {
                    config = { 
                        icon_preset = "varied", 
                    },
                },
            }
        })
    end
}
