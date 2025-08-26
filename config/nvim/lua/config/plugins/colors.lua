function Colors(color)
    color = color or "onedark_dark"
    vim.cmd.colorscheme(color)

    vim.opt.background = "dark"

    vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
    vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
end

return {
    {

        "olimorris/onedarkpro.nvim",
        priority = 1000,

        config = function()
            Colors()
            require('onedarkpro').setup({})
        end

    }
}
