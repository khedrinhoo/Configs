
function Colors(color)
    color = color or "modus"
    vim.cmd.colorscheme(color)

    --vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
    --vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
end

return {
    { 
        "miikanissi/modus-themes.nvim", 
        priority = 1000,
        config = function()
            require('modus-themes').setup({
                style = "modus_vivendi",
                variant = "default", 
                transparent = false, 
                dim_inactive = false, 
                hide_inactive_statusline = false, 
                line_nr_column_background = true, 
                sign_column_background = true, 
                styles = {
                    comments = { italic = true },
                    keywords = { italic = true },
                    functions = {},
                    variables = {},
                },
            })
            Colors();
        end
    },
}
