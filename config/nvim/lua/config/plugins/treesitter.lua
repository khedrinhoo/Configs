return {
    {
        "nvim-treesitter/nvim-treesitter",
        build = ":TSUpdate",
        config = function()
            require("nvim-treesitter.configs").setup({
                ensure_installed = {
                    "lua"
                },
                sync_install = true,
                auto_install = true,
                ignore_install = { "latex" },
                indent = {
                    enable = true
                },
                highlight = {
                    enable = true,
                    additional_vim_regex_highlighting = { "markdown" },
                },
            })
        end
    },
}
