function Colors(color)
	color = color or "oxocarbon"
	vim.cmd.colorscheme(color)
    vim.opt.background = "dark" 

    vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
    vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
end

return {
    {
        "nyoom-engineering/oxocarbon.nvim",
        config = function()
            Colors()
        end
    }
}
