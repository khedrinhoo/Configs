
function Colors(color)
	color = color or "vague"
	vim.cmd.colorscheme(color)

	--vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
	--vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
end

return {
    { 
        "vague-theme/vague.nvim",
        lazy = false, 
        priority = 1000, 
        config = function()
            require('vague').setup({
                transparent = true, 
                bold = true,
                italic = true,
            })
            Colors();
        end
    },
}
