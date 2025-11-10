
function Colors(color)
	color = color or "modus"
	vim.cmd.colorscheme(color)

	--vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
	--vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
end

return {
    { 
        "miikanissi/modus-themes.nvim", 
        priority = 1000 ,
        config = function()
            require('modus-themes').setup({
                style = "modus_vivendi",
                variant = "default",
                styles = {
                    functions = { italic = true }, 
                },
            })
            Colors();
        end
    },
}
