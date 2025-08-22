function Colors(color)
    color = color or "gruvbox"
    vim.cmd.colorscheme(color)
    vim.opt.background = "dark"

    vim.g.base16_colorspace = 256

    vim.api.nvim_set_hl(0, "Normal", { bg = "none", fg = "white" })
    vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none", fg = "white" })

    vim.api.nvim_set_hl(0, 'LineNrAbove', { fg = 'gray' })
    vim.api.nvim_set_hl(0, 'LineNr', { fg = '#fabd2f', bold = true })
    vim.api.nvim_set_hl(0, 'LineNrBelow', { fg = 'gray' })

    vim.api.nvim_set_hl(0, "StatusLine", { fg = "#ffffff", bg = "#0e1018", bold = true })
    vim.api.nvim_set_hl(0, "StatusLineNC", { fg = "#ffffff", bg = "#0e1018", bold = true })
end

return {
    {

        "ellisonleao/gruvbox.nvim",
        priority = 1000,
        opts = ...,

        config = function()
            require('gruvbox').setup({
                contrast = "hard",
                terminal_colors = true,
                undercurl = true,
                underline = true,
                bold = true,
                italic = {
                    strings = true,
                    emphasis = true,
                    comments = true,
                    operators = false,
                    folds = true,
                },
                strikethrough = true,
                invert_selection = false,
                invert_signs = false,
                invert_tabline = false,
                inverse = true,
                dim_inactive = false,
                transparent_mode = false,
            })
            Colors()
        end

    }
}
