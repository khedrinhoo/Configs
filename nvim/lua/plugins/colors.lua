function Colors(color)
	color = color or "nord"
	vim.cmd.colorscheme(color)

	--vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
	--vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
end

return {

	"shaunsingh/nord.nvim",

	config = function()
		Colors();
	end
}
